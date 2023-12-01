from django.urls import re_path, include
from . import views

app_name = 'hasker_user'
urlpatterns = [
    re_path(r'^login/$', views.login_view, name='login'),
    re_path(r'^logout/$', views.logout_view, name='logout'),
    re_path(r'^settings/$', views.settings, name='settings'),
    re_path(r'^signup/$', views.signup, name='signup'),
]