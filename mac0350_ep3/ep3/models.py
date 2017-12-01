from django.db import models
from django.forms import ModelForm
from django import forms

class Desenvolvedor(models.Model):
	pnome = models.CharField(max_length=15)
	snome = models.CharField(max_length=25)
	senha = models.CharField(max_length=40)
	email = models.EmailField(max_length=40, primary_key=True)
	cep = models.IntegerField()
	rua = models.CharField(max_length=50, null=True, blank=True)
	numero = models.IntegerField(null=True, blank=True)
	cidade = models.CharField(max_length=30, null=True, blank=True)
	estado = models.CharField(max_length=2, null=True, blank=True)
	ativo = models.BooleanField()

	@classmethod
	def create(cls, data):
		return cls(pnome=data["pnome"],
				   snome=data["snome"],
				   senha=data["senha"],
				   email=data["email"],
				   cep=data["cep"],
				   rua=data["rua"],
				   numero=data["numero"],
				   cidade=data["cidade"],
				   estado=data["estado"],
				   ativo=data["ativo"])

class DesenvolvedorForm(ModelForm):
	telefone = forms.IntegerField()
	class Meta:
		model = Desenvolvedor
		fields = ['pnome', 'snome', 'senha', 'email', 'telefone', 'cep', 'rua', 
				  'numero', 'cidade', 'estado', 'ativo']

class Telefone_Desenvolvedor(models.Model):
	email = models.ForeignKey(Desenvolvedor, on_delete=models.CASCADE)
	telefone = models.IntegerField()
	class Meta:
		unique_together = (("email", "telefone"),)

	@classmethod
	def create(cls, data, desenvolvedor):
		return cls(email=desenvolvedor,
				   telefone=data["telefone"])

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

