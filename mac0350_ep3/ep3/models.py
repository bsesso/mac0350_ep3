from django.db import models
from django.forms import ModelForm

class Usuario(models.Model):
	pnome = models.CharField(max_length=15)
	snome = models.CharField(max_length=25)
	senha = models.CharField(max_length=40)
	email = models.CharField(max_length=40, primary_key=True)
	cep = models.IntegerField()
	rua = models.CharField(max_length=50, null=True, blank=True)
	numero = models.IntegerField(null=True, blank=True)
	cidade = models.CharField(max_length=30, null=True, blank=True)
	estado = models.CharField(max_length=2, null=True, blank=True)
	ativo = models.BooleanField()

class UsuarioForm(ModelForm):
	class Meta:
		model = Usuario
		fields = ['pnome', 'snome', 'senha', 'email', 'cep', 'rua', 
				  'numero', 'cidade', 'estado', 'ativo']
				  


# class Telefone_Usuario(models.Model):
# 	email = models.ForeignKey(Usuario, on_delete=models.CASCADE)
# 	telefone = models.IntegerField(primary_key=True)
# 	## TODO não sei como fazer as duas serem primarias

# class Forum(models.Model):
# 	## TODO pode transformar isso naquele id que gera automatico
# 	id = models.IntegerField(primary_key=True)

# class Projeto(models.Model):
# 	## TODO pode transformar isso naquele id que gera automatico
# 	id = models.IntegerField(primary_key=True)
# 	titulo = models.CharField(max_length=30)
# 	descricao = models.CharField(max_length=100, null=True, blank=True)
# 	forum_id = models.ForeignKey(Forum)
# 	adm_email = models.ForeignKey(Usuario)

# class Cronograma(models.Model):
# 	date_time = models.DateTimeField()
# 	projeto_id = models.ForeignKey(Projeto, primary_key=True)
# 	## TODO não sei como fazer as duas serem primarias


# class Topico(models.Model):
# 	titulo = models.CharField(max_length=30, primary_key=True)
# 	date_time = models.DateTimeField()
# 	## TODO ainda não sei se ta certo:
# 	status = models.IntegerField()
# 	forum_id = models.ForeignKey(Forum)
# 	## TODO não sei como fazer as duas serem primarias

# class Mensagem(models.Model):
# 	## TODO pode transformar isso naquele id que gera automatico
# 	id = models.IntegerField(primary_key=True)
# 	texto = models.CharField(max_length=100)
# 	date_time = models.DateTimeField()

# class Requisito(models.Model):
# 	## TODO pode transformar isso naquele id que gera automatico
# 	id = models.IntegerField(primary_key=True)
# 	titulo = models.CharField(max_length=30)
# 	descricao = models.CharField(max_length=100, null=True, blank=True)
# 	## TODO ainda não sei se ta certo:
# 	status = models.IntegerField()
# 	projeto_id = models.ForeignKey(Projeto)
# 	## TODO ainda não sei se ta certo:
# 	tipo_req = models.CharField(max_length=15)

