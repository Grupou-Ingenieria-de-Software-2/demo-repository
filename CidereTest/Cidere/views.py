from django.shortcuts import render,redirect
from .models import usuario,registro
from datetime import datetime
from django.http import HttpResponse
from powerbiclient import Report
from powerbiclient.authentication import DeviceCodeLoginAuthentication

# Create your views here.
def index(request):
    return render(request,'Cidere/index.html')

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

#-------------------------------------------------------------------

import webbrowser
from django.http import JsonResponse
import pyodbc

def establecer_conexion(request):
    try:
        # Intenta establecer la conexión
        conn = pyodbc.connect(r'Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=C:\Users\caray\OneDrive\Documents\cidere.accdb;')
        mensaje = "Conexión establecida correctamente."
        
        # Realiza operaciones adicionales si es necesario

    except pyodbc.Error as ex:
        mensaje = f"Error al conectar: {ex}"

    finally:
        if 'conn' in locals() and conn:
            # Asegúrate de cerrar la conexión, incluso si hay un error
            conn.close()

    return JsonResponse({'message': mensaje})


def abrir_link_automaticamente(request):
    # URL para el flujo de autenticación del dispositivo
    url = "https://app.powerbi.com/reportEmbed?reportId=ff5d9b1b-4206-4ac1-884f-6430c970c2b8&autoAuth=true&ctid=a5e40a5a-392c-4f9b-8c0d-4d5db657eec8"#"https://microsoft.com/devicelogin"
    # Abre automáticamente la URL en una nueva pestaña o ventana del navegador
    webbrowser.open_new_tab(url)

    return HttpResponse("Se ha abierto automáticamente la página de autenticación del dispositivo.")
    
def nombre(request):
    if request.method == 'POST':
        # Llama a tu función sin procesar los campos del formulario
        #divice_auth = DeviceCodeLoginAuthentication()
        resultado = abrir_link_automaticamente(request)
        # Puedes devolver una respuesta HTTP o renderizar una plantilla según tus necesidades
        return HttpResponse(f'Resultado: {conn}')

    return render(request, 'index.html')

#-----------------------------------------------