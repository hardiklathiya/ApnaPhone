# Generated by Django 4.0.2 on 2022-04-13 06:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0055_signup_registered_time'),
    ]

    operations = [
        migrations.AddField(
            model_name='orderinfo',
            name='payment_id',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='orderinfo',
            name='payment_mode',
            field=models.CharField(max_length=150, null=True),
        ),
    ]