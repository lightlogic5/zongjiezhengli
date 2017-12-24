from django.conf.urls import url, include

from .views import AddPost_Form , form_page

urlpatterns = [
    # 汇报页面
    url(r'^form_page/$',form_page.as_view(),name="form_page"),
    #汇报信息填写
    url(r'^add_form/$',AddPost_Form.as_view(),name="add_form"),

]