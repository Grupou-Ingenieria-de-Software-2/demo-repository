"""
URL configuration for cideretest project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from Cidere.views import index, dashboard, registro_usuario, dashboard, indexmain,provedores, perfil_proveedor, lista_transacciones, detalle_transaccion, nueva_transaccion

urlpatterns = [
    path("admin/", admin.site.urls),
    path('',indexmain,name='indexmain'),
    path('dashboard/',dashboard,name='dashboard'),
    path('registro/',registro_usuario,name='registro'),
    path('dashboard/',dashboard,name='dashboard'),
    path('index/',index,name='index'),
    path('provedores_index/',provedores,name='provedores'),
    path('perfil_proveedor/<int:idBuscado>/<int:id>/perfil',perfil_proveedor,name='perfil_proveedor'),
    path('transacciones/', lista_transacciones, name='lista_transacciones'),
    path('transacciones/<int:id_transaccion>/', detalle_transaccion, name='detalle_transaccion'),
    path('transacciones/nueva/', nueva_transaccion, name='nueva_transaccion'),

]
