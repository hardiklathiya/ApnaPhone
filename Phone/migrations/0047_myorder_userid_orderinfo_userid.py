# Generated by Django 4.0.2 on 2022-04-10 08:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0046_alter_cart_userid'),
    ]

    operations = [
        migrations.AddField(
            model_name='myorder',
            name='userId',
            field=models.CharField(blank=True, max_length=30),
        ),
        migrations.AddField(
            model_name='orderinfo',
            name='userId',
            field=models.CharField(blank=True, max_length=30),
        ),
    ]
