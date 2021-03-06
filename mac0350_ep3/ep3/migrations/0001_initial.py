# Generated by Django 2.0 on 2017-12-04 21:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cronograma',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_time', models.DateTimeField()),
                ('descricao', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Desenvolvedor',
            fields=[
                ('pnome', models.CharField(max_length=15)),
                ('snome', models.CharField(max_length=25)),
                ('senha', models.CharField(max_length=40)),
                ('email', models.EmailField(max_length=40, primary_key=True, serialize=False)),
                ('cep', models.IntegerField()),
                ('rua', models.CharField(blank=True, max_length=50, null=True)),
                ('numero', models.IntegerField(blank=True, null=True)),
                ('cidade', models.CharField(blank=True, max_length=30, null=True)),
                ('estado', models.CharField(blank=True, max_length=2, null=True)),
                ('ativo', models.BooleanField()),
            ],
        ),
        migrations.CreateModel(
            name='Forum',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='Mensagem',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('texto', models.CharField(max_length=100)),
                ('date_time', models.DateTimeField()),
                ('autor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Projeto',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=30)),
                ('descricao', models.CharField(blank=True, max_length=100, null=True)),
                ('admin', models.OneToOneField(on_delete=django.db.models.deletion.PROTECT, to='ep3.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Requisito',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=30)),
                ('descricao', models.CharField(blank=True, max_length=100, null=True)),
                ('status', models.IntegerField()),
                ('tipo_req', models.CharField(max_length=15)),
                ('projeto_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Projeto')),
            ],
        ),
        migrations.CreateModel(
            name='RequisitoDados',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nome', models.CharField(max_length=30)),
                ('tipo', models.CharField(max_length=15)),
                ('requisito', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='ep3.Requisito')),
            ],
        ),
        migrations.CreateModel(
            name='RequisitosFuncional',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('acao', models.CharField(max_length=30)),
                ('requisito', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='ep3.Requisito')),
            ],
        ),
        migrations.CreateModel(
            name='Telefone_Desenvolvedor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('telefone', models.IntegerField(unique=True)),
                ('email', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Topico',
            fields=[
                ('titulo', models.CharField(max_length=30, primary_key=True, serialize=False)),
                ('date_time', models.DateTimeField()),
                ('status', models.IntegerField()),
                ('forum_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Forum')),
            ],
        ),
        migrations.AddField(
            model_name='mensagem',
            name='topico',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Topico'),
        ),
        migrations.AddField(
            model_name='forum',
            name='projeto',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='ep3.Projeto'),
        ),
        migrations.AddField(
            model_name='cronograma',
            name='projeto_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Projeto'),
        ),
        migrations.AlterUniqueTogether(
            name='topico',
            unique_together={('titulo', 'forum_id')},
        ),
        migrations.AlterUniqueTogether(
            name='telefone_desenvolvedor',
            unique_together={('email', 'telefone')},
        ),
        migrations.AlterUniqueTogether(
            name='cronograma',
            unique_together={('date_time', 'projeto_id')},
        ),
    ]
