from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm


class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']

class ProfileQuestionsForm(forms.Form):
    '''
    It is assumed QUES2TYPE are in the sequence of activist, reflector,theorist,pragmatist,
    '''
    ans1 = forms.IntegerField(min_value=1, max_value=10,label='how excited do you get when challenged by a unforseen problem')#a2
    ans2 = forms.IntegerField(min_value=1, max_value=10,label='How good you think you are at understanding somebody else\'s persepective')#r4
    ans3 = forms.IntegerField(min_value=1, max_value=10,label='Do you prefer applying and learning to normal class learning methodolgy')#p7
    ans4 = forms.IntegerField(min_value=1, max_value=10,label='How often do you find yourself being specific about statements made by your teacher')#t6
    ans5 = forms.IntegerField(min_value=1, max_value=10,label='Do you get excited when an oppurtunity to realise new experiences is provided?')#a1 rephrase this
    ans6 = forms.IntegerField(min_value=1, max_value=10,label='How often do you find yourself predicting what your teacher is going to say next?')#r4
    ans7 = forms.IntegerField(min_value=1, max_value=10,label='How strongly do you prefer experimental learning methods to standard class room learning methods')#p8
    ans8 = forms.IntegerField(min_value=1, max_value=10,label='How satisfied you are with current class learning methodology')#t6

    #map the questions to type.
    #TODO : Validate this sequence with Shivam
    QUES2TYPE = ['ans5', 'ans1','ans2', 'ans6', 'ans4', 'ans8', 'ans3','ans7']
    def get_answers(self):
        '''
        get the answers to learner type determination questionair in the correct sequence (A, R, T, P)
        '''
        answers = [self.cleaned_data[ans] for ans in self.QUES2TYPE]
        return answers
