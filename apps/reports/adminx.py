import xadmin

from .models import PortProject , Tag , ProjectResource


class PortProjectAdmin(object):
    list_display = ['name', 'desc', 'detail', 'progress','add_time']
    search_fields = ['name', 'desc', 'detail', 'progress']
    list_filter = ['name', 'desc', 'detail', 'progress','add_time']

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
xadmin.site.register(Tag, TagAdmin)
xadmin.site.register(ProjectResource, ProjectResourceAdmin)
