from django.db import models
from django.contrib.auth.models import User
from taggit.managers import TaggableManager as TaggableManager



from algorithm import Learner

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')
    xp = models.IntegerField(default = 0)
    answers = models.TextField(default = '')
    coord_x = models.IntegerField(default=0, help_text="Learner x/y coordinates decide his/her 'learning model'")
    coord_y = models.IntegerField(default=0, help_text="Learner x/y coordinates decide his/her 'learning model'")
    tags = TaggableManager()
    SUBJECTS = (('Networks' ,'Networks'),
                            ('Electronic Devices','Electronic Devices'),
                            ('Analog Circuits' ,'Analog Circuits'),
                            ('Digital circuits' ,'Digital circuits'),
                            ('Signals and Systems','Signals and Systems'),
                            ('Control Systems','Control Systems'),
                            ('Communications','Communications'),
                            ('Electromagnetics' ,'Electromagnetics')
                            )



    def save(self, *args, **kwargs):
        super(Profile, self).save(*args, **kwargs)

    def __str__(self):
        return f'{self.user.username} Profile'

    def get_answers(self):
        answers = None
        if self.answers:
            answers = [int(ans) for ans in self.answers.split(',')]
        return answers

    def set_answers(self, answerlist):
        self._update_learner_coordinates(answerlist)
        anstext = ','.join([str(ans) for ans in answerlist])
        self.answers = anstext

    def _update_learner_coordinates(self, answerlist):
        '''
        update learner coordinates from the
        '''
        a1, a2, r3, r4, t5,t6, p7, p8 = (answerlist[0],answerlist[1],answerlist[2],answerlist[3],
                                         answerlist[4], answerlist[5], answerlist[6], answerlist[7])
        learner = Learner(a1, a2, r3, r4, t5,t6, p7, p8)
        self.coord_x, self.coord_y = learner.calculatexy()

    def xp_up(self):
        self.xp +=10
        return self.xp

    @property
    def classification(self):
        learning_type = ''
        answerlist = self.get_answers()
        if answerlist:
            a1, a2, r3, r4, t5,t6, p7, p8 = (answerlist[0],answerlist[1],answerlist[2],answerlist[3],
                                         answerlist[4], answerlist[5], answerlist[6], answerlist[7])
            learner = Learner(a1, a2, r3, r4, t5,t6, p7, p8)
            learning_type = learner._classify(self.coord_x, self.coord_y)
        return learning_type
