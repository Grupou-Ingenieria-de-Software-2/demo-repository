from django.db import models

# Create your models here.
class Alumnos(models.Model):
    nombre = models.CharField(max_length=30)
    apellido_paterno = models.CharField(max_length=30)
    apellido_materno = models.CharField(max_length=30)
    fecha_de_nacimiento = models.DateField()

class Asignaturas(models.Model):
    nombre = models.CharField(max_length=30)
    codigo = models.IntegerField()
    alumnos = models.ManyToManyField(Alumnos,blank=True, null=True)