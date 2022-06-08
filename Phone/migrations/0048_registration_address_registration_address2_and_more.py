# Generated by Django 4.0.2 on 2022-04-10 09:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0047_myorder_userid_orderinfo_userid'),
    ]

    operations = [
        migrations.AddField(
            model_name='registration',
            name='Address',
            field=models.TextField(blank=True, max_length=30),
        ),
        migrations.AddField(
            model_name='registration',
            name='Address2',
            field=models.TextField(blank=True, max_length=30),
        ),
        migrations.AddField(
            model_name='registration',
            name='City',
            field=models.CharField(blank=True, max_length=20),
        ),
        migrations.AddField(
            model_name='registration',
            name='Pincode',
            field=models.IntegerField(blank=True, max_length=6, null=True),
        ),
        migrations.AddField(
            model_name='registration',
            name='State',
            field=models.CharField(blank=True, max_length=30),
        ),
    ]