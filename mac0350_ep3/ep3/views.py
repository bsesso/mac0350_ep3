from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader

from ep3.models import *

def index(request):
	if not request.method == 'POST':
		template = loader.get_template('ep3/index.html')
		form = DesenvolvedorForm()
		context = {'form': form}
		return HttpResponse(template.render(context, request))
	return None

def create_dev(request):
	form = None
	if request.method == 'POST':
		form = DesenvolvedorForm(request.POST)
		if form.is_valid():
			data = form.cleaned_data
			new_dev = Desenvolvedor.create(data)
			new_dev.save()

			new_telefone_dev = Telefone_Desenvolvedor.create(data, new_dev)
			new_telefone_dev.save()

			return HttpResponseRedirect('/ep3/thanks/')
	else:
		form = DesenvolvedorForm

	template_path = 'ep3/create_dev.html'
	context = {'form': form}
	return render(request, template_path, context)

def thanks(request):
	template_path = 'ep3/thanks.html'
	context = {}

	return render(request, template_path, context)
