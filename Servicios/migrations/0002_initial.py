# Generated by Django 3.2.3 on 2021-05-19 00:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Usuarios', '0001_initial'),
        ('Servicios', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='ordenpedido',
            name='id_empleado',
            field=models.ForeignKey(db_column='id_empleado', on_delete=django.db.models.deletion.CASCADE, to='Usuarios.empleado'),
        ),
        migrations.AddField(
            model_name='detalleordenpedido',
            name='id_orden_pedido',
            field=models.ForeignKey(db_column='id_orden_pedido', on_delete=django.db.models.deletion.CASCADE, to='Servicios.ordenpedido'),
        ),
        migrations.AddField(
            model_name='detalleordenpedido',
            name='id_producto',
            field=models.ForeignKey(db_column='id_producto', on_delete=django.db.models.deletion.CASCADE, to='Servicios.producto'),
        ),
    ]