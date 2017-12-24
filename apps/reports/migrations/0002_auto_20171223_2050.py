# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-12-23 20:50
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reports', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='BannerPortProject',
            fields=[
            ],
            options={
                'verbose_name': '首页项目',
                'verbose_name_plural': '首页项目',
                'proxy': True,
            },
            bases=('reports.portproject',),
        ),
        migrations.AddField(
            model_name='portproject',
            name='is_banner',
            field=models.BooleanField(default=False, verbose_name='是否首页展示'),
        ),
        migrations.AlterField(
            model_name='portproject',
            name='progress',
            field=models.CharField(choices=[('js', '建设阶段'), ('yw', '运维阶段')], max_length=2, verbose_name='阶段'),
        ),
    ]
