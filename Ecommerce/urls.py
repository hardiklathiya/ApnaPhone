"""Ecommerce URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
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
# from django.contrib import admin
# from django.urls import path

from django.contrib import admin
from django.urls import path, include
from django.views.generic import TemplateView
from django.conf.urls.static import static
from django.conf import settings
admin.site.site_header="ApnaPhone Admin"
admin.site.site_title="ApnaPhone Adminpanel"
admin.site.index_title="Welcome to ApnaPhone Adminpanel"
urlpatterns = [
    # path('jet/', include('jet.urls')),
    # path('jet/dashboard/', include('jet.dashboard.urls', 'jet-dashboard')),
    path('admin/', admin.site.urls),
    path('',include('Phone.url')),
    path('', TemplateView.as_view(template_name='index.html')),
]+static(settings.STATIC_URL,document_root =settings.STATIC_ROOT)
if settings.DEBUG:
      urlpatterns+= static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)

