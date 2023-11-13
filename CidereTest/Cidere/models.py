from django.db import models

# Create your models here.
class usuario(models.Model):
    run = models.CharField(primary_key=True,max_length=50)
    correo = models.CharField(max_length=100)
    nombre = models.CharField(max_length=100)
    tipo= models.IntegerField()
    
class registro(models.Model):
    id = models.AutoField(primary_key=True)
    Accion = models.CharField(max_length=100)
    id_usuario = models.CharField(max_length=100)
    fecha = models.DateTimeField(auto_now=True)
