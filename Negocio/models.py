# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.utils.timezone import now as fecha_hora_actual
from django.core.exceptions import ObjectDoesNotExist
from Usuarios.models import Cliente


ESTADO_HABITACION = [
    ('disponible', 'Disponible'),
    ('asignada', 'Asignada'),
    ('mantencion', 'En mantención')
]

TIPO_HABITACION = [
    ('individual', 'Individual'),
    ('doble', 'Doble'),
    ('ejecutiva', 'Ejecutiva'),
]


class Habitacion(models.Model):
    nro_habitacion = models.IntegerField(primary_key=True)
    estado_habitacion = models.CharField(max_length=25, choices=ESTADO_HABITACION, default='disponible')
    tipo_cama = models.CharField(max_length=50, choices=TIPO_HABITACION)
    accesorios_habitacion = models.CharField(max_length=50)
    precio_habitacion = models.IntegerField()

    def __str__(self):
        return str(self.nro_habitacion)

    class Meta:
        db_table = 'habitacion'


class OrdenDeCompra(models.Model):
    id_orden_compra = models.AutoField(primary_key=True)
    servicios_contratados = models.CharField(max_length=50)
    cantidad_huespedes = models.IntegerField()
    fecha_orden_compra = models.DateTimeField(default=fecha_hora_actual)
    tipos_habitacion = models.CharField(max_length=50, choices=TIPO_HABITACION)
    rut_cliente = models.ForeignKey(
        Cliente, on_delete=models.PROTECT, db_column='rut_cliente')

    def obtener_huespedes(self, id_oc):
        lista_huespedes = Huesped.objects.filter(id_orden_compra=id_oc)
        return lista_huespedes

    def tiene_factura(self, id_oc):
        try:
            if Factura.objects.get(id_orden_compra=id_oc):
                return True
        except ObjectDoesNotExist:
            return False

    def __str__(self):
        return str(self.id_orden_compra)

    class Meta:
        db_table = 'orden_de_compra'


class Huesped(models.Model):
    id_huesped = models.AutoField(primary_key=True)
    nombre_huesped = models.CharField(max_length=60)
    fecha_recepcion = models.DateTimeField(blank=True, null=True)
    nro_habitacion = models.ForeignKey(
        Habitacion, on_delete=models.CASCADE, db_column='nro_habitacion', blank=True, null=True)
    id_orden_compra = models.ForeignKey(
        OrdenDeCompra, on_delete=models.CASCADE, db_column='id_orden_compra')

    def __str__(self):
        return self.nombre_huesped

    class Meta:
        db_table = 'huesped'


class Factura(models.Model):
    nro_factura = models.AutoField(primary_key=True)
    total = models.IntegerField()
    estado_factura = models.BooleanField()
    id_orden_compra = models.OneToOneField(
        OrdenDeCompra, on_delete=models.CASCADE, db_column='id_orden_compra')

    def __str__(self):
        return str(self.nro_factura)

    class Meta:
        db_table = 'factura'
