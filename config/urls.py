from django.contrib import admin
from django.urls import path
from x_app import views


urlpatterns = [
    path( 'info/', views.info, name='info_url' ),
    path( 'version/', views.version, name='version_url' ),
    #
    path( '', views.root, name='root_url' ),
    path( 'admin/', admin.site.urls ),
]

