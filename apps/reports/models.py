from datetime import datetime

from django.db import models


# Create your models here.

class PortProject(models.Model):
    name = models.CharField(max_length=50 , verbose_name="项目名称")
    desc = models.CharField(max_length=100 , verbose_name="项目描述")
    detail = models.TextField(verbose_name="项目详情")
    progress = models.CharField(choices=(("js","建设阶段"),("yw","运维阶段")) , max_length=2 , verbose_name="阶段")
    add_time = models.DateTimeField(default=datetime.now , verbose_name="添加时间")

    class Meta:
        verbose_name = "项目"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

class Tag(models.Model):
    name = models.CharField(max_length=20 , verbose_name="标签")
    desc = models.CharField(max_length=100, verbose_name="标签描述")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "标签"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

class ProjectResource(models.Model):
    project_name = models.ForeignKey(PortProject , verbose_name="项目名称")
    name = models.CharField(max_length=100 , verbose_name="名称")
    download = models.FileField(upload_to="PortProject/resource/%Y/%m" , verbose_name="下载地址")
    add_time = models.DateTimeField(default=datetime.now , verbose_name="上传时间")

    class Meta:
        verbose_name = "项目资源"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name



