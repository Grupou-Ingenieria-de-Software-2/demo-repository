from django import forms

class AsignaturaForm(forms.Form):
    nombre_asignatura = forms.CharField(label="Nombre Asignatura", max_length=30)
    codigo_asignatura = forms.IntegerField(label="Codigo Asignatura")

class AlumnoForm(forms.Form):
    nombre_alumno = forms.CharField(label="Nombre Alumno", max_length= 30)
    apellido_paterno = forms.CharField(label="Apellido Paterno", max_length= 30)
    apellido_materno = forms.CharField(label="Apellido Materno", max_length= 30)
    fecha_de_nacimiento = forms.DateField(label="Fecha de Nacimiento")