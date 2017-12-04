from random import choice
from random import randint

#################################
## Defina aqui as constantes

nUsuarios = 10
nTelefones = 2 * nUsuarios
nProjs = 3
nRequisitos = 10
nRelUserProjs = 2 * nUsuarios
nForums = nProjs
nTopics = nForums * 3
nMsgs = nTopics * 3
nCronogramas = 4 * nProjs

#################################

used_emails = []
forum_id = 0
projeto_id = 0
mensagem_id = 0
requisito_id = 0

class Usuario:
    def __init__(self, name_list):
        global used_emails
        self.pnome = choice(name_list)
        self.snome = choice(name_list)
        self.senha = randint(100000, 100000000)
        email = self.pnome + "_" + self.snome + str(randint(0, 1000)) + "@mac350.com"
        while email in used_emails:
            email = self.pnome + "_" + self.snome + str(randint(0, 1000)) + "@mac350.com"
        used_emails.append(email)
        self.email = email
        self.cep = randint(10000000, 99999999)
        self.rua = "Rua " + choice(name_list) + " " + choice(name_list)
        self.numero = randint(1, 100)
        self.cidade = "Mac350town"
        self.estado = "SP"
        self.ativo = "TRUE"

    def __str__(self):
        return "(" + \
            "\'" + self.pnome + "\', " + \
            "\'" + self.snome + "\', " + \
            "\'" + str(self.senha) + "\', " + \
            "\'" + self.email + "\', " + \
            str(self.cep) + ", " + \
            "\'" + self.rua + "\', " + \
            str(self.numero) + ", " + \
            "\'" + self.cidade + "\', " + \
            "\'" + self.estado + "\', " + \
            self.ativo + ")"

class Telefone_Usuario:
    def __init__(self, usuario):
        self.usuario_email = usuario.email
        self.telefone = randint(10000000, 99999999)

    def __str__(self):
        return "(" + \
            "\'" + self.usuario_email + "\', " + \
            str(self.telefone) + ")"

class Forum:
    def __init__(self):
        global forum_id
        self.id = forum_id
        forum_id += 1
        
    def __str__(self):
        return "(" + str(self.id) + ")"

class Projeto:
    def __init__(self, forum, adm, dl):
        global projeto_id
        self.id = projeto_id
        projeto_id += 1
        self.titulo = "Projeto de " + choice(dl)
        self.descricao = "Descricao"
        self.forum_id = forum.id
        self.adm_email = adm.email

    def __str__(self):
        return "(" + \
            str(self.id) + ", " + \
            "\'" + self.titulo + "\', " + \
            "\'" + self.descricao + "\', " + \
            str(self.forum_id) + ", " + \
            "\'" + self.adm_email + "\')"

class Topico:
    def __init__(self, forum):
        self.titulo = "topico " + str(randint(0, 1000))
        self.date_time = "current_timestamp"
        # status pode ser boolean
        self.status = 0
        self.forum_id = forum.id

    def __str__(self):
        return "(" + \
             "\'" + self.titulo + "\', " + \
            str(self.date_time) + ", " + \
            str(self.status) + ", " + \
            str(self.forum_id) + ")"

        

class Mensagem:
    def __init__(self):
        global mensagem_id
        self.id = mensagem_id
        mensagem_id += 1
        self.texto = "Mensagem %d" % self.id
        self.date_time = "current_timestamp"

    def __str__(self):
        return "(" + \
            "\'" + str(self.id) + "\', " + \
            "\'" + self.texto + "\', " + \
            str(self.date_time) + ")"

class Requisito:
    def __init__(self, projeto):
        global requisito_id
        self.id = requisito_id
        requisito_id += 1
        self.titulo = "Requisito " + str(self.id)
        self.descricao = "Descricao"
        # status pode ser que seja boolean
        self.status = 0
        self.projeto_id = projeto.id
        self.tipo_req = "dados" if randint(0, 1) == 0 else "funcional"

    def __str__(self):
        return "(" + \
            str(self.id) + ", " + \
            "\'" + self.titulo + "\', " + \
            "\'" + self.descricao + "\', " + \
            str(self.status) + ", " + \
            str(self.projeto_id) + ", " + \
            "\'" + self.tipo_req + "\')"

class RequisitoDados:
    def __init__(self, requisito):
        self.nome = "Requisito de dados " + str(requisito.id)
        self.tipo = "Dados?"
        self.descricao = "Descricao do atributo x"
        self.req_id = requisito.id

    def __str__(self):
        return "(" + \
            "\'" + self.nome + "\', " + \
            "\'" + self.tipo + "\', " +\
            "\'" + self.descricao + "\', " + \
            str(self.req_id) + ")"
        
class RequisitoFuncional:
    def __init__(self, requisito):
        self.acao = "acao"
        self.req_id = requisito.id

    def __str__(self):
        return "(" + \
            "\'" + self.acao + "\', " + \
            str(self.req_id) + ")"

class Rel_usuario_projeto:
    def __init__(self, usuario, projeto):
        self.usuario_email = usuario.email
        self.projeto_id = projeto.id

    def __str__(self):
        return "(" + \
            "\'" + self.usuario_email + "\', " + \
            str(self.projeto_id) + ")"

    def __eq__(self, other):
        return self.usuario_email == other.usuario_email and self.projeto_id == other.projeto_id

class Cronograma:
    def __init__(self, projeto):
        date = "{}-{}-{} {}:{}:{}".format(randint(2017, 2100),
                                          randint(1, 12),
                                          randint(1, 31),
                                          randint(0, 23),
                                          randint(0, 59),
                                          randint(0, 59))
        self.date_time = "timestamp \'{}\'".format(date)
        self.projeto_id = projeto.id
    
    def __str__(self):
        return "(" + \
            str(self.date_time) + ", " + \
            str(self.projeto_id) + ")"

# class Evento:
#     def __init__(self, cronograma, projeto):
#         self.cronograma_date_time = cronograma.date_time
#         self.projeto_id = projeto.id

#     def __str__(self):
#         return "(" + \
#             "\'" + self.cronograma_date_time + "\', " + \
#             str(self.projeto_id) + ")"

class Rel_msg_topico:
    def __init__(self, mensagem, forum, usuario):
        self.msg_id = mensagem.id
        self.forum_id = forum.id
        self.usuario_email = usuario.email

    def __str__(self):
        return "(" + \
            str(self.msg_id) + ", " + \
            str(self.forum_id) + ", " + \
            "\'" + self.usuario_email + "\')"


nl = ["Marco", "Antonio", "Henrique", "Eduardo", "Luiz", "Felipe", "Carlos", "Gustavo", "Pedro"]
dl = ["Marketing", "RH", "Tecnico", "Administrativo", "Executivo", "Juridico"]

usuarios = []
telefones = []
projetos = []
forums = []
requisitos = []
req_dados = []
req_funcional = []
rel_usuario_projetos = []
topicos = []
mensagems = []
rel_msg_topicos = []
cronogramas = []

for _ in range(nUsuarios):
    usuarios.append(Usuario(nl))

for _ in range (nTelefones):
    telefones.append(Telefone_Usuario(choice(usuarios)))

for _ in range(nProjs):
    adm = choice(usuarios)
    forum = Forum()
    forums.append(forum)
    projetos.append(Projeto(forum, adm, dl))

for _ in range(nRequisitos):
    projeto = choice(projetos)
    requisito = Requisito(projeto)
    requisitos.append(requisito)
    if requisito.tipo_req == "dados":
        rd = RequisitoDados(requisito)
        req_dados.append(rd)
    else:
        rf = RequisitoFuncional(requisito)
        req_funcional.append(rf)

for _ in range(nRelUserProjs):
    usuario = choice(usuarios)
    projeto = choice(projetos)
    rel = Rel_usuario_projeto(usuario, projeto)
    while (rel in rel_usuario_projetos):
        usuario = choice(usuarios)
        projeto = choice(projetos)
        rel = Rel_usuario_projeto(usuario, projeto)
    rel_usuario_projetos.append(rel)

for _ in range(nTopics):
    topicos.append(Topico(choice(forums)))

for _ in range(nMsgs):
    msg = Mensagem()
    mensagems.append(msg)
    rel_msg_topicos.append(Rel_msg_topico(msg, choice(forums), choice(usuarios)))

for _ in range(nCronogramas):
    cronogramas.append(Cronograma(choice(projetos)))

print("INSERT INTO usuario VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), usuarios)) + ";")
print("\n")

print("INSERT INTO telefone_usuario VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), telefones)) + ";")
print("\n")

print("INSERT INTO forum VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), forums)) + ";")
print("\n")

print("INSERT INTO projeto VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), projetos)) + ";")
print("\n")

print("INSERT INTO requisito VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), requisitos)) + ";")
print("\n")

print("INSERT INTO requisitodados VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), req_dados)) + ";")
print("\n")

print("INSERT INTO requisitofuncional VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), req_funcional)) + ";")
print("\n")

print("INSERT INTO rel_usuario_projeto VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), rel_usuario_projetos)) + ";")
print("\n")

print("INSERT INTO topico VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), topicos)) + ";")
print("\n")

print("INSERT INTO mensagem VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), mensagems)) + ";")
print("\n")

print("INSERT INTO rel_msg_topico VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), rel_msg_topicos)) + ";")
print("\n")

print("INSERT INTO cronograma VALUES")
print(",\n".join(map(lambda x: "\t" + str(x), cronogramas)) + ";")
print("\n")
