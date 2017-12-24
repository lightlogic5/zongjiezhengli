"""zongjie URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url, include
from django.contrib import admin

from django.views.generic import TemplateView
import xadmin

# from users.views import user_login
from users.views import LoginView , RegisterView

from operations.views import ReportView

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),

    url('^index/$', TemplateView.as_view(template_name="index.html"),name="index"),
    # url(r'^login/$', TemplateView.as_view(template_name="login.html"),name="login"),
    # url(r'^login/$', user_login ,name="login"),
    # 将class转换为as_view,并返回函数句柄
    url(r'^login/$', LoginView.as_view() ,name="login"),
    url(r'^register/$', RegisterView.as_view() ,name="register"),
    url(r'^report_list/$', ReportView.as_view() ,name="reportlist"),
    # 汇报相关url配置,这里有二级页面，因为后面加了$导致一直出错
    url(r'^report/', include('operations.urls',namespace="rep")),
    #富文本相关url
    url(r'^ueditor/',include('DjangoUeditor.urls' )),
]
# 并配置static路径
# STATIC_URL = '/static/'
# STATICFILES_DIRS = (
#     os.path.join(BASE_DIR, "static"),
# )
# html中所有的路径均替换为/static/开头,一定注意开头的/否则在index点击进入login的时候，样式加载不上