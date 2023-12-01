from django.urls import path

from . import views

urlpatterns = [
    path('dashboard/', views.dashboard),
    path('perfil_index', views.perfil_index),
    path('proveedores_index', views.provedores),
    path('perfil_proveedor/<id_usuario>/perfil', views.perfil_proveedor,name='perfil_proveedor'),
    path('', views.index, name="index"),
]