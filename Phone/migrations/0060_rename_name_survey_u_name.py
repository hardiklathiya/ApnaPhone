# Generated by Django 4.0.2 on 2022-05-06 09:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0059_survey'),
    ]

    operations = [
        migrations.RenameField(
            model_name='survey',
            old_name='name',
            new_name='U_name',
        ),
    ]
