from datetime import datetime


from django.db import models

from users.models import UserProfile
from reports.models import PortProject , Tag
# Create your models here.


class PortProjectComments(models.Model):
    "项目评论"
    user = models.ForeignKey(UserProfile , verbose_name="用户名")
    PortProject = models.ForeignKey(PortProject , verbose_name="项目名")
    comments = models.CharField(max_length=200 , verbose_name="项目建议")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "项目建议"
        verbose_name_plural = verbose_name

class UserMessage(models.Model):
    "用户消息"
    user = models.IntegerField(default=0 , verbose_name="接收用户")
    message = models.CharField(max_length=500 , verbose_name="汇报评论")
    has_read = models.BooleanField(default=False , verbose_name="是否已读")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "用户消息"
        verbose_name_plural = verbose_name


class Report(models.Model):
    title = models.CharField(max_length=50 , verbose_name="报告名称")
    detail = models.TextField(verbose_name="报告内容")
    project_name = models.ForeignKey(PortProject, verbose_name="所属项目")
    Tag = models.ManyToManyField(Tag, verbose_name="标签")
    user_name = models.ForeignKey(UserProfile, verbose_name="报告人")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="上传时间")

    class Meta:
        verbose_name = "工作汇报"
        verbose_name_plural = verbose_name


