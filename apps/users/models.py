from datetime import datetime

from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50 , verbose_name="昵称" , default="",null=True, blank=True)
    birthday = models.DateField(verbose_name="生日" , null=True , blank=True)
    employee_id = models.CharField(max_length=15 , verbose_name="员工编号", null=True, blank=True)


    class Meta:
        verbose_name = "职工信息"
        verbose_name_plural = verbose_name

        def __str__(self):
            return self.username


class Banner(models.Model):
    title = models.CharField(max_length=100 , verbose_name="标题")
    image = models.ImageField(upload_to="banner/%Y/%M" , verbose_name="轮播图" , max_length=100)
    url = models.URLField(max_length=200 , verbose_name="访问地址")
    index = models.IntegerField(default=100 , verbose_name="轮播顺序" )
    add_time = models.DateTimeField(default=datetime.now , verbose_name="添加时间")

    class Meta:
        verbose_name = "轮播图"
        verbose_name_plural = verbose_name