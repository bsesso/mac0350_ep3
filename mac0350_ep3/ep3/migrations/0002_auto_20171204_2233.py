# Generated by Django 2.0 on 2017-12-04 22:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ep3', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tarefa',
            fields=[
                ('titulo', models.CharField(max_length=30, primary_key=True, serialize=False)),
                ('status', models.CharField(max_length=30)),
                ('descricao', models.CharField(max_length=100)),
                ('projeto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ep3.Projeto')),
            ],
        ),
        migrations.AlterUniqueTogether(
            name='tarefa',
            unique_together={('titulo', 'projeto')},
        ),
    ]