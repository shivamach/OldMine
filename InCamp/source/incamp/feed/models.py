from datetime import timedelta

from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from taggit.managers import TaggableManager as TaggableManager


class Event(models.Model):
    title = models.CharField(max_length=100, null=False)
    content = models.TextField(default='')
    date_posted = models.DateTimeField(auto_now_add=True,auto_now=False)
    author = models.ForeignKey(User ,on_delete=models.PROTECT, editable=True, null=False)
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
    #image = models.ImageField()
    events = (('one_to_one' ,'one to one'),
                ('one_to_many' ,'one to many'),
                ('flip_classroom' ,'flipped classroom'),
                ('application' ,'application'),
                ('group study', 'group study')
                )

    #event_tags_user = (())
    #event_tags_subject = (())
    #event_campus_activities = (())
    #subjects_list= models.CharField(max_length = 20 ,choices= subjects ,null=True)
    event_type= models.CharField(max_length = 20 ,choices= events)
    expiry_date = models.DateTimeField(default = None, editable=True,null=True, blank=True)

    def __str__(self):
        return self.title

    def save(self, *args,**kwargs):
        super(Event, self).save(*args, **kwargs)

        if self.expiry_date == None:
            #date_posted will be updated during the save process. Hence if
            #the date_posted in updated, we have to call save again
            self.expiry_date = self.date_posted + timedelta(days=10)
            super(Event, self).save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse ('event-detail' ,kwargs={'pk':self.pk})
