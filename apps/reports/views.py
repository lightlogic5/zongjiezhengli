from django.shortcuts import render
from django.views.generic.base import View

from .models import PortProject , Tag
# Create your views here.

class PortProjectView(View):
    """
    报告列表功能
    """
    def get(self , request):
        #项目名称
        all_Project = PortProject.objects.all()
        #标签
        all_tag = Tag.objects.all()
        return render(request, 'report-list.html', {
            'all_project': all_Project,
            'all_tag': all_tag
        })

