from django.shortcuts import render
from django.http import HttpResponse


from django.views.generic.base import View

from .models import Report
from .forms import UserPostForm
from reports.models import PortProject , Tag
# Create your views here.
class ReportView(View):
    """
    所有报告查看与筛选功能
    """
    def get(self, request):
        return render(request, "report-list.html", {})

class form_page(View):
    """
    填写报告的页面
    """
    def get(self,request):
        # 项目名
        all_PortProject = PortProject.objects.all()
        # 标签名
        all_tag = Tag.objects.all()
        return render(request,"post-form.html",{
            "all_PortProject":all_PortProject,
            "all_tag":all_tag
        })

class AddPost_Form(View):
    """
    报告填写
    """
    def post(self,request):
        user_form = UserPostForm(request.POST)
        if user_form.is_valid():
            userpostform = user_form.save(commit=True)
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail", "msg":"添加出错"}', content_type='application/json')


