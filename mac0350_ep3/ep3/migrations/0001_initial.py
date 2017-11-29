# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-29 19:33
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('pnome', models.CharField(max_length=15)),
                ('snome', models.CharField(max_length=25)),
                ('senha', models.CharField(max_length=40)),
                ('email', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('cep', models.IntegerField()),
                ('rua', models.CharField(blank=True, max_length=50, null=True)),
                ('numero', models.IntegerField(blank=True, null=True)),
                ('cidade', models.CharField(blank=True, max_length=30, null=True)),
                ('estado', models.CharField(blank=True, max_length=2, null=True)),
                ('ativo', models.BooleanField()),
            ],
        ),
    ]