import xadmin

from .models import PortProject , Tag , ProjectResource , BannerPortProject

class ProjectResourceInline(object):
    model = ProjectResource
    extra = 0


class PortProjectAdmin(object):
    list_display = ['name', 'desc', 'detail', 'progress','add_time','is_banner','get_hb_nums']
    search_fields = ['name', 'desc', 'detail', 'progress','is_banner']
    list_filter = ['name', 'desc', 'detail', 'progress','add_time','is_banner']
    list_editable = ['is_banner']
    style_fields = {"desc": "ueditor"}
    inlines = [ProjectResourceInline]


    def queryset(self):
        qs = super(PortProjectAdmin, self).queryset()
        qs = qs.filter(is_banner=False)
        return qs

class BannerPortProjectAdmin(object):
    list_display = ['name', 'desc', 'detail', 'progress','add_time','is_banner','get_hb_nums']
    search_fields = ['name', 'desc', 'detail', 'progress','is_banner']
    list_filter = ['name', 'desc', 'detail', 'progress','add_time','is_banner']
    list_editable = ['is_banner']
    inlines = [ProjectResourceInline]


    def queryset(self):
        # super为调用父类
        qs = super(BannerPortProjectAdmin, self).queryset()
        qs = qs.filter(is_banner=True)
        return qs

class TagAdmin(object):
    list_display = ['name', 'desc','add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc','add_time']

class ProjectResourceAdmin(object):
    list_display = ['project_name', 'name','download','add_time']
    search_fields = ['project_name', 'name','download','add_time']
    # 搜索某一课程下面的所有下载资源
    list_filter = ['project_name__name', 'name','download','add_time']


xadmin.site.register(PortProject, PortProjectAdmin)
xadmin.site.register(BannerPortProject, BannerPortProjectAdmin)
xadmin.site.register(Tag, TagAdmin)
xadmin.site.register(ProjectResource, ProjectResourceAdmin)
