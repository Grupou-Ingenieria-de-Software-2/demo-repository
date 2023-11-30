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