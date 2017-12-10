import xadmin

from .models import PortProjectComments , UserMessage , Report


class PortProjectCommentsAdmin(object):
    list_display = ['user', 'PortProject', 'comments','add_time']
    search_fields = ['user', 'PortProject', 'comments']
    list_filter = ['user', 'PortProject', 'comments','add_time']


class UserMessageAdmin(object):
    list_display = ['user', 'message','has_read','add_time']
    search_fields = ['user', 'message','has_read']
    list_filter = ['user', 'message','has_read','add_time']


class ReportAdmin(object):
    list_display = ['title', 'detail','project_name','Tag','user_name','add_time']
    search_fields = ['title', 'detail','project_name','Tag','user_name']
    list_filter = ['title', 'detail','project_name','Tag','user_name','add_time']

xadmin.site.register(PortProjectComments, PortProjectCommentsAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(Report, ReportAdmin)
