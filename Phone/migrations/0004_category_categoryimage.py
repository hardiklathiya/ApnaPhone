# Generated by Django 4.0.2 on 2022-02-25 15:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0003_product'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='categoryimage',
            field=models.FileField(blank=True, upload_to=''),
        ),
    ]
