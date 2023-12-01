from django.urls import path

from . import views

urlpatterns = [
    path('dashboard/', views.dashboard),
    path('perfil_index', views.perfil_index),
    path('proveedores_index', views.proveedores_index),
    path('', views.index, name="index"),
]