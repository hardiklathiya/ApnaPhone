# Generated by Django 4.0.2 on 2022-04-12 14:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0054_cart_create_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='signup',
            name='Registered_time',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]