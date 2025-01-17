"""hostal_clarita URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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
from django.contrib.auth.views import LoginView, LogoutView
from django.views.generic import TemplateView
from django.urls import path, include

urlpatterns = [
    # URLS del index y gestión sesion
    path('', include('Usuarios.urls')),
    path('panel/login',
         LoginView.as_view(template_name='Usuarios/login.html'), name='login'),
    path('salir/',
         LogoutView.as_view(template_name='Usuarios/logout.html'),
         name='logout'),

    # URLS de los usuarios
    path('panel/',
         TemplateView.as_view(template_name='Usuarios/panel.html'),
         name='panel'),
    path('admin/', admin.site.urls),
    path('panel/cliente/', include('Negocio.urls')),
    path('panel/empleado/', include('Servicios.urls')),
]
