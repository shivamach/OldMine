from django.contrib import admin
from users import views as user_views
from feed import views as feed_views
from django.contrib.auth import views as auth_views
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from feed import views as feed_views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('register/', user_views.register, name='register'),
    path('profile/', user_views.ProfileUpdateView.as_view(), name='profile'),
    path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    path('', user_views.home ,name ='home'),
    path('question/',user_views.question ,name = 'question'),
    path('home/',feed_views.EventListView.as_view() ,name = "home_feed"),
    path('subjects/',feed_views.subjects ,name = "subjects"),
    path('hire/',feed_views.hire ,name = "hire"),
    path('groups/',feed_views.groups ,name = "groups"),
    path('event/<int:pk>/', feed_views.EventDetailView.as_view(), name='event-detail'),
    path('event/new/' ,feed_views.EventCreateView.as_view(),name = 'event-create'),
    path('event/<int:pk>/update/', feed_views.EventUpdateView.as_view(), name='event-update'),
    path('event/tag-<tagname>/', feed_views.tag_view, name='event-tagsview'),

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
