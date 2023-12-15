from django.shortcuts import render,redirect
from .models import TablaAcciones, TablaProvRevisado, TablaUsuario, TablaRTransacciones,Datoscidereprov, TablaCategoria, TablaComunas, TablaRubros,TablaRegiones,TablaTam,TablaRBusquedas
from datetime import datetime
from django.http import HttpResponse
from powerbiclient import Report
from powerbiclient.authentication import DeviceCodeLoginAuthentication
from django.shortcuts import render, get_object_or_404
from django.utils import timezone
from django.contrib import messages

# Create your views here.
def indexmain(request):

    return render(request,'Cidere/indexmain.html')

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
    categorias = TablaCategoria.objects.all()
    comunas = TablaComunas.objects.all()
    if request.method == 'POST':
        run = request.POST.get('run')
        correo = request.POST.get('correo')
        nombre = request.POST.get('nombre')
        direccion = request.POST.get('dir')
        nombreC = request.POST.get('nombreCont')
        numeroC = request.POST.get('Contact')
        categoria = request.POST.get('categoria')
        comuna = request.POST.get('comuna')

        proveedor = Datoscidereprov(
            nombre_proveedor = nombre,
            rut_proveedor = run,
            direccion = direccion,
            mail = correo,
            contacto = nombreC,
            telefono_contacto = numeroC,
            categoria = categoria,
            comuna = comuna,
            fecha_creacion = datetime.now()
        )

        proveedor.save()
        messages.add_message(request, messages.SUCCESS, 'Se ha guardado el nuevo proveedor')

        """
         # Después de guardar el usuario, registra la acción en la segunda tabla
        registroSave = registro(Accion=f"Registro de {nombre_usuario_registrado}", id_usuario="Invitado", fecha=datetime.now())
        registroSave.save()
        """
        # Puedes redirigir a una página de éxito o a donde prefieras
        return redirect('indexmain')

    return render(request, 'Cidere/registro.html',{'categorias': categorias,'comunas':comunas})

def provedores(request):
    if request.method == 'POST':
        nuevaTransaccion = TablaRTransacciones.objects.order_by('-id_transaccion').first()
        nuevoid = nuevaTransaccion.id_transaccion +1
        fecha_hoy = datetime.now()
        user = get_object_or_404(Datoscidereprov, id=647)
        accion = get_object_or_404(TablaAcciones, id_accion=3)
        transaccion = TablaRTransacciones(
            id_transaccion = nuevoid,
            accion_realizada=accion,
            id_usuario=user,
            fecha_registro=fecha_hoy
        )
        transaccion.save()
        term_busq = request.POST.get('busqueda')
        cat = request.POST.get('categorias')
        rubr = request.POST.get('rubros')
        taman = request.POST.get('tam')
        regn = request.POST.get('regiones')
        busqueda = TablaRBusquedas(
            id_transaccion = transaccion,
            terminos_busqueda = term_busq,
            categoria = cat,
            rubro = rubr,
            tamano=taman,
            region=regn,
            provincia=0,
            comunas=0
        )
        busqueda.save()
        messages.add_message(request, messages.SUCCESS, 'Se ha guardado su busqueda')


    categorias = TablaCategoria.objects.all()
    rubros = TablaRubros.objects.all()
    regiones = TablaRegiones.objects.all()
    tamanio = TablaTam.objects.all()
    datos_proveedores = Datoscidereprov.objects.all()
    return render(request,"Cidere/provedores_index.html", {'datos_proveedores': datos_proveedores,'categorias':categorias,'rubros':rubros,'regiones':regiones,'tams':tamanio})
#-----------------------------------------------
def perfil_proveedor(request, idBuscado,id):
    nuevaTransaccion = TablaRTransacciones.objects.order_by('-id_transaccion').first()
    nuevoid = nuevaTransaccion.id_transaccion +1
    fecha_hoy = datetime.now()
    user = get_object_or_404(Datoscidereprov, id=id)
    accion = get_object_or_404(TablaAcciones, id_accion=5)
    transaccion = TablaRTransacciones(
        id_transaccion = nuevoid,
        accion_realizada=accion,
        id_usuario=user,
        fecha_registro=fecha_hoy
    )
    transaccion.save()
    proveedor = get_object_or_404(Datoscidereprov, id=idBuscado)
    prov_rev = TablaProvRevisado(
        id_transaccion = transaccion,
        pagina_ant = 3,
        pagina_visit = proveedor,
        boton_contacto = 0
    )
    prov_rev.save()
    # Obtén el proveedor específico o muestra un error 404 si no se encuentra
    proveedor = get_object_or_404(Datoscidereprov, id=idBuscado)

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
