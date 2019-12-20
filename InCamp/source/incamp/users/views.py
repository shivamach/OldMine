from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login
from django.contrib.auth.models import User
from .forms import UserRegisterForm ,ProfileQuestionsForm
from feed.models import Event
from django import forms
from django.views.generic import (
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    DeleteView
)
from django.contrib.auth.mixins import LoginRequiredMixin ,UserPassesTestMixin
from users.models import Profile



def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Your account has been created! You are now able to log in')
            user = User.objects.get(username=username)
            login(request, user)
            return redirect('question')
    else:
        form = UserRegisterForm()
    return render(request, 'users/register.html', {'form': form})


def home(request):
    #context = {
    #    'posts': Post.objects.all()
    #}
    user = getattr(request, 'user', None)
    if user and user.is_authenticated:
        return redirect('home_feed')
    return render(request, 'users/home.html')

@login_required
def question(request):
    if request.method == 'POST':
        question  = ProfileQuestionsForm(request.POST)
        if question.is_valid():
            request.user.profile.set_answers(question.get_answers())
            request.user.profile.save()
            messages.success(request, f'Your learning profile is updated')
            return redirect('profile')
    else:
        question = ProfileQuestionsForm()
    return render (request ,'users/question.html', {'form' : question})
    #return render (reetquest ,'users/question.html')


@login_required
def profile(request):
    return render(request, 'users/profile.html')




class ProfileUpdateView(LoginRequiredMixin,UserPassesTestMixin,UpdateView):
    model = Profile
    fields = ['tags'  ]
    template_name = 'users/profile.html'#<app>/<model>_<viewtype>.html
    context_object_name = 'profile'
    success_url = '/profile/'

    def get_object(self):
        return self.request.user.profile

    def form_valid(self, form):
        return super().form_valid(form)

    def get_form(self, form_class=None):
        form = super(ProfileUpdateView, self).get_form(form_class)
        profile= self.get_object()
        initial_tags = [tag['slug'] for tag in profile.tags.values()]
        form.fields['tags'] = forms.MultipleChoiceField(choices = Profile.SUBJECTS, initial=initial_tags)
        return form

    def test_func(self):
        return True
