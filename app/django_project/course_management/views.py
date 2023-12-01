from django.shortcuts import render,redirect
from .models import TablaUsuario
from datetime import datetime
from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404

def index(request):
    if request.method == 'POST':
        # Obtener los datos del formulario enviado
        id_usuario = request.POST['id_usuario']
        nombre_empresa = request.POST['nombre_empresa']

        # Crear una instancia del modelo y guardarla en la base de datos
        objeto_nuevo = TablaUsuario(id_usuario=id_usuario, nombre_empresa=nombre_empresa)
        objeto_nuevo.save()

    # Obtener todos los objetos en tu modelo (puedes personalizar esto según tus necesidades)
    objetos = TablaUsuario.objects.all()
    return render(request, 'index.html', {'objetos': objetos})

def perfil_index(request):
    return render(request, 'perfil_index.html')

#def proveedores_index(request):
    #return render(request, 'proveedores_index.html')

def dashboard(request):
    return render(request,"Dashboard.html")

def provedores(request):
    datos_proveedores = TablaUsuario.objects.all()
    return render(request,"proveedores_index.html", {'datos_usuarios': datos_proveedores})
#-----------------------------------------------
def perfil_proveedor(request, id_usuario):
    # Obtén el proveedor específico o muestra un error 404 si no se encuentra
    proveedor = get_object_or_404(TablaUsuario, id_usuario=id_usuario)

    # Pasa los detalles del proveedor a la plantilla
    return render(request, 'perfil_proveedor.html', {'proveedor': proveedor})