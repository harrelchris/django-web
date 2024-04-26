from django.contrib import admin
from django.urls import include, path
from django.views.generic import TemplateView

admin.site.index_title = "Site administration"
admin.site.name = "Django Admin"
admin.site.site_header = "Django administration"
admin.site.site_title = "Django site admin"

urlpatterns = [
    path("", TemplateView.as_view(template_name="index.html"), name="index"),
    path("accounts/", include("allauth.urls")),
    path("admin/", admin.site.urls),
    path("users/", include("users.urls"), name="users"),
]
