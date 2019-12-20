
from django.shortcuts import render
from django.views.generic import (
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    DeleteView
)
from django.contrib.auth.mixins import LoginRequiredMixin ,UserPassesTestMixin

from django.contrib.auth.decorators import login_required
from django import forms
from django.utils import timezone

from feed.models import Event

class EventListView(ListView):
    model = Event
    template_name = 'feed/home_feed.html'#<app>/<model>_<viewtype>.html
    context_object_name = 'event'
    ordering = ['-date_posted']
    
    def get_queryset(self):
        '''
        generate a filtered query set.
        '''
        tag_names = None
        now = timezone.now()
        
        qs = Event.objects.filter(expiry_date__gte = now)
        if self.request.user.profile.tags:
            tag_names = self.request.user.profile.tags.names()
            qs = qs.filter(tags__name__in = tag_names)
            #qs = qs.exclude(author =self.request.user)
            qs = qs.distinct()
        return qs
    
class EventDetailView(DetailView):
    model = Event

    #template_name = 'feed/home.html'#<app>/<model>_<viewtype>.html
    #context_object_name = 'event'
    #ordering = ['date_posted']


class EventCreateView(LoginRequiredMixin,CreateView):
    model = Event
    fields = ['title' ,'content', 'event_type', 'expiry_date' ,'tags']
    
    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def get_form(self, form_class=None):
        form = super(EventCreateView, self).get_form(form_class)
        form.fields['tags'] = forms.MultipleChoiceField(choices = Event.SUBJECTS)
        return form

class EventDeleteView(LoginRequiredMixin,UserPassesTestMixin,DeleteView):
    model = Event
    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        event = self.get_object()
        if self.request.user == event.author:
            return True
        return False

class EventUpdateView(LoginRequiredMixin,UserPassesTestMixin,UpdateView):
    model = Event
    fields = ['title' ,'content', 'expiry_date' ,'tags']
    
    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def get_form(self, form_class=None):
        form = super(EventUpdateView, self).get_form(form_class)
        event = self.get_object()
        initial_tags = [tag['slug'] for tag in event.tags.values()]
        form.fields['tags'] = forms.MultipleChoiceField(choices = Event.SUBJECTS, initial=initial_tags)
        return form

    def test_func(self):
        event = self.get_object()
        if self.request.user == event.author:
            return True
        return False
