# Generated by Django 4.0.2 on 2022-05-06 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0058_alter_contact_mobileno'),
    ]

    operations = [
        migrations.CreateModel(
            name='survey',
            fields=[
                ('survey_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(default='', max_length=20, null=True)),
                ('Email', models.EmailField(default='', max_length=30, null=True)),
                ('preference', models.CharField(default='', max_length=500, null=True)),
            ],
        ),
    ]
