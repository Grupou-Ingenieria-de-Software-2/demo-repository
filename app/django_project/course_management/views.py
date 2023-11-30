import json
from django.shortcuts import render
from .models import Asignaturas, Alumnos
from .forms import AsignaturaForm, AlumnoForm
from django.http import HttpResponseRedirect, HttpResponse

def index(request):
    return render(request, 'index.html')

def perfil_index(request):
    return render(request, 'perfil_index.html')

def proveedores_index(request):
    return render(request, 'proveedores_index.html')

def dashboard(request):
    return render(request,"Dashboard.html")

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

    return render(request, 'registro.html')