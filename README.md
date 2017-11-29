Configurando o postgres
-----------------------

Criar usuário **mac0350_user** com senha **senha123** e permissão para criar database:
```
>>> sudo su - postgres
# psql
postgres=# CREATE USER mac0350_user WITH PASSWORD 'senha123' CREATEDB;
```

Criar database mac0350_db:
```
>>> createdb -U mac0350_user mac0350_db
```


Configurando o django
---------------------

Para executar o projeto:
```
>>> cd mac0350_ep3
>>> python manage.py runserver
```

Acessa no browser em *(deve aparecer a view do index)*:
```
localhost:8000/ep3
```
