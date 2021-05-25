from django.shortcuts import render
from Servicios.models import Proveedor
from django.core.exceptions import ObjectDoesNotExist


def index(request):

    if 'consulta_proveedor' in request.POST:
        rut = request.POST.get('rut_proveedor')
        try:
            proveedor = Proveedor.objects.get(rut_proveedor=rut).nombre_proveedor
            # acá ejecutar una función dentro de PROVEEDOR que me devuelva una
            # lista de las OP en las que hayan PRODUCTOS de ese
            lista = Proveedor.listar_op_proveedor(rut)
            return render(
                request,
                'Servicios/consulta_op.html',
                {'proveedor': proveedor, 'lista': lista})

        except ObjectDoesNotExist:
            print("beboop")

    return render(request, 'Usuarios/index.html')
