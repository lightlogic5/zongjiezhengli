from django.shortcuts import render
from django.contrib.auth import authenticate , login
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.contrib.auth.hashers import make_password
# 通过继承view基础类来完成登录的判断
from django.views.generic.base import View
from django.http import HttpResponse

from .models import UserProfile
from .forms import LoginForm, RegisterForm

# 实现用户名或邮箱号均可登录
class CustomBackend(ModelBackend):
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None
# Create your views here.
# 注意函数名不能与方法名相同，authenticate传参数要加参数名
# def user_login(request):
#     if request.method == "POST":
#         user_name = request.POST.get("username" , "")
#         pass_word = request.POST.get("password", "")
#         user = authenticate(username=user_name , password=pass_word)
#         if user is not None:
#             login(request , user)
#             return render(request , "index.html")
#         else:
#             return render(request, "login.html", {"msg":"用户名或密码错误！"})
#     elif request.method == "GET":
#         return render(request , "login.html" ,{})


class LoginView(View):
    # 如果是get方法自动调用，不用判断
    def get(self, request):
        return render(request, "login.html", {})
    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")
            user = authenticate(username=user_name, password=pass_word)
            if user is not None:
                login(request, user)
                return render(request, "index.html")
            else:
                return render(request, "login.html", {"msg":"用户名或密码错误！"})
        else:
            return render(request, "login.html", {"login_form":login_form})

class RegisterView(View):
    """
    注册页面
    """
    def get(self, request):
        registerform = RegisterForm()
        return render(request, "sign-up.html", {})

    def post(self, request):
        # 一定注意登录按钮的type是submit
        registerform = RegisterForm(request.POST)
        if registerform.is_valid():
            employeeid = request.POST.get("employee", "")
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")
            user_profile = UserProfile()
            user_profile.employee_id = employeeid
            user_profile.username = user_name
            user_profile.password = make_password(pass_word)
            user_profile.save()
            return render(request, "login.html")
        else:
            return render(request, "sign-up.html")


