# 对表单进行初步判断
from django import forms

from .models import UserProfile


class LoginForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=5)


class RegisterForm(forms.Form):
    employee = forms.CharField(required=True, min_length=5)
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=5)
