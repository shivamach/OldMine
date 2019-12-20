from django.shortcuts import render
from django.contrib.auth.decorators import login_required

from ..models import Event
from .eventviews import EventListView,EventDetailView,EventCreateView,EventDeleteView,EventUpdateView

@login_required
def home(request):
    context = {
        'event': Event.objects.all()
    }
    return render(request ,'feed/home_feed.html' ,context)

@login_required
def groups(request):
    return render(request ,'feed/groups.html')

@login_required
def subjects(request):
    return render(request ,'feed/groups.html')

@login_required
def hire(request):
    return render(request ,'feed/hire.html')

@login_required
def tag_view(request,tagname):
    context = {
        'event': Event.objects.filter(tags__name=tagname)
    }
    return render(request ,'feed/home_feed.html' ,context)

