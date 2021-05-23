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
    path('admin/', admin.site.urls),
    
    # path('', include('Usuarios.urls')),
    # path('negocio/', include('Negocio.urls')),
    # path('servicios/', include('Servicios.urls')),
    path('', LoginView.as_view(template_name='index.html'), name='index'),
    path('salir/', LogoutView.as_view(template_name='salir,.html'), name='salir'),
    path('panel/', TemplateView.as_view(template_name='Usuarios/panel.html'), name='panel'),
]
