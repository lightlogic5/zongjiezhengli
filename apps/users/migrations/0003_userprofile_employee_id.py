# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-12-24 12:53
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_banner'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='employee_id',
            field=models.CharField(blank=True, max_length=15, null=True, verbose_name='员工编号'),
        ),
    ]