# Generated by Django 2.1.2 on 2018-11-12 15:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_profile_answers'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='coord_x',
            field=models.IntegerField(default=0, help_text="Learner x/y coordinates decide his/her 'learning model'"),
        ),
        migrations.AddField(
            model_name='profile',
            name='coord_y',
            field=models.IntegerField(default=0, help_text="Learner x/y coordinates decide his/her 'learning model'"),
        ),
    ]
