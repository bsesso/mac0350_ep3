from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader

from ep3.models import UsuarioForm

def index(request):
	if not request.method == 'POST':
		template = loader.get_template('ep3/index.html')
		form = UsuarioForm()
		context = {'form': form}
		return HttpResponse(template.render(context, request))
	return None

def create_user(request):
	form = None
	if request.method == 'POST':
		form = UsuarioForm(request.POST)
		if form.is_valid():
			return HttpResponseRedirect('/ep3/thanks/')
	else:
		form = UsuarioForm

	template_path = 'ep3/create_user.html'
	context = {'form': form}
	return render(request, template_path, context)

def thanks(request):
	template_path = 'ep3/thanks.html'
	context = {}

	return render(request, template_path, context)
