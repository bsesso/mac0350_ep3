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
	telefone = models.IntegerField(unique=True)

	class Meta:
		unique_together = (("email", "telefone"),)

	@classmethod
	def create(cls, data, desenvolvedor):
		return cls(email=desenvolvedor,
				   telefone=data["telefone"])

class Projeto(models.Model):
	id = models.IntegerField(primary_key=True)
	titulo = models.CharField(max_length=30)
	descricao = models.CharField(max_length=100, null=True, blank=True)
	#relação 1:1 com 'Desenvolvedor'
	admin = models.OneToOneField(Desenvolvedor, on_delete=models.PROTECT)


class Tarefa(models.Model):
	titulo = models.CharField(max_length=30, primary_key=True)
	status = models.CharField(max_length=30)
	projeto = models.ForeignKey(Projeto, on_delete=models.CASCADE)
	descricao = models.CharField(max_length=100)

	class Meta:
		unique_together = (("titulo", "projeto"),)

class TarefaForm(ModelForm):

	class Meta:
		model = Tarefa
		fields = ['projeto', 'titulo', 'status', 'descricao']


class Forum(models.Model):
	id = models.IntegerField(primary_key=True)
	# relação 1:1 com 'Projeto'
	projeto = models.OneToOneField(Projeto, on_delete=models.CASCADE)

class Cronograma(models.Model):
	date_time = models.DateTimeField()
	descricao = models.CharField(max_length=200)
	projeto_id = models.ForeignKey(Projeto, on_delete=models.CASCADE)

	class Meta:
		unique_together = (("date_time", "projeto_id"),)


class Topico(models.Model):
	titulo = models.CharField(max_length=30, primary_key=True)
	date_time = models.DateTimeField()
	## TODO ainda não sei se ta certo:
	status = models.BooleanField()
	forum_id = models.ForeignKey(Forum, on_delete=models.CASCADE)
	
	class Meta:
		unique_together = (("titulo", "forum_id"),)


class Mensagem(models.Model):
	id = models.IntegerField(primary_key=True)
	texto = models.CharField(max_length=100)
	date_time = models.DateTimeField()
	topico = models.ForeignKey(Topico, on_delete=models.CASCADE)
	forum = models.ForeignKey(Forum, on_delete=models.CASCADE)
	autor = models.ForeignKey(Desenvolvedor, on_delete=models.CASCADE)

	class Meta:
		unique_together = (('topico', 'forum'),)

class Requisito(models.Model):
	## TODO pode transformar isso naquele id que gera automatico
	id = models.IntegerField(primary_key=True)
	titulo = models.CharField(max_length=30)
	descricao = models.CharField(max_length=100, null=True, blank=True)
	## TODO ainda não sei se ta certo:
	status = models.IntegerField()
	projeto_id = models.ForeignKey(Projeto, on_delete=models.CASCADE)

class RequisitoDados(models.Model):
	## TODO pode transformar isso naquele id que gera automatico
	id = models.IntegerField(primary_key=True)
	nome = models.CharField(max_length=30)
	tipo = models.CharField(max_length=15)
	descricao = models.CharField(max_length=100)
	## TODO ainda não sei se ta certo:
	requisito = models.OneToOneField(Requisito, on_delete=models.CASCADE)

	class Meta:
		unique_together = (('id', 'requisito'),)

class RequisitoFuncional(models.Model):
	id = models.IntegerField(primary_key=True)
	acao = models.CharField(max_length=30, null=False)
	requisito = models.OneToOneField(Requisito, on_delete=models.CASCADE)

	class Meta:
		unique_together = (('id', 'requisito'),)

class RelDevProjeto(models.Model):
	dev_email = models.ForeignKey(Desenvolvedor, on_delete=models.CASCADE)
	projeto = models.ForeignKey(Projeto, on_delete=models.CASCADE)

	class Meta:
		unique_together = (('dev_email', 'projeto'),)