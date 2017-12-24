from django import forms

from operations.models import Report

class UserPostForm(forms.ModelForm):
    class Meta:
        model = Report
        # form中添加汇报标题、说明、项目名、标签、提交人、提交时间
        fields = ['title' , 'detail' , 'project_name' , 'Tag' , 'user_name' , 'add_time']

