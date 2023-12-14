from django.shortcuts import render,redirect
from .models import TablaUsuario, TablaRTransacciones, Datoscidereprov
from datetime import datetime
from django.http import HttpResponse
from powerbiclient import Report
from powerbiclient.authentication import DeviceCodeLoginAuthentication
from django.shortcuts import render, get_object_or_404
from django.utils import timezone

# Create your views here.
def indexmain(request):
    return render(request,'Cidere/indexmain.html')

def index_dashboard(request):
    return render(request,'Cidere/dashboard/index_dashboard.html')

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
    return render(request,'Cidere/index.html', {'objetos': objetos})

def dashboard(request):
    return render(request,"Cidere/Dashboard.html")

#-------------------------------------------------------------------
def registro_usuario(request):
    if request.method == 'POST':
        run = request.POST.get('run')
        correo = request.POST.get('correo')
        nombre = request.POST.get('nombre')
        tipo_usuario = request.POST.get('tipo_usuario')

        # Crea una instancia del modelo y guarda los datos en la base de datos
        nuevo_usuario = usuario(run=run, correo=correo, nombre=nombre, tipo=tipo_usuario)
        nuevo_usuario.save()

        nombre_usuario_registrado = nuevo_usuario.nombre

         # Después de guardar el usuario, registra la acción en la segunda tabla
        registroSave = registro(Accion=f"Registro de {nombre_usuario_registrado}", id_usuario="Invitado", fecha=datetime.now())
        registroSave.save()

        # Puedes redirigir a una página de éxito o a donde prefieras
        return redirect('index')

    return render(request, 'Cidere/registro.html')

def provedores(request):
    datos_proveedores = Datoscidereprov.objects.all()
    return render(request,"Cidere/provedores_index.html", {'datos_proveedores': datos_proveedores})
#-----------------------------------------------
def perfil_proveedor(request, id):
    # Obtén el proveedor específico o muestra un error 404 si no se encuentra
    proveedor = get_object_or_404(Datoscidereprov, id=id)

    # Pasa los detalles del proveedor a la plantilla
    return render(request, 'perfil_proveedor.html', {'proveedor': proveedor})

def lista_transacciones(request):
    transacciones = TablaRTransacciones.objects.all()
    return render(request, 'transacciones/lista_transacciones.html', {'transacciones': transacciones})

def detalle_transaccion(request, id_transaccion):
    transaccion = get_object_or_404(TablaRTransacciones, id_transaccion=id_transaccion)
    return render(request, 'transacciones/detalle_transaccion.html', {'transaccion': transaccion})

def nueva_transaccion(request):
    # Lógica para procesar el formulario y guardar la nueva transacción
    # ...
    return render(request, 'transacciones/nueva_transaccion.html')
