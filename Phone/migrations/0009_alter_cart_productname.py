# Generated by Django 4.0.2 on 2022-03-03 16:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0008_auto_20220303_2010'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cart',
            name='productname',
            field=models.CharField(blank=True, max_length=150),
        ),
    ]