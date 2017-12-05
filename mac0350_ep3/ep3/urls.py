from django.conf.urls import url
from . import views

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^create_dev/$', views.create_dev, name='create_dev'),
	url(r'^thanks/$', views.thanks, name='thanks'),
    url(r'^update_dev/$', views.update_dev, name='update_dev'),
]