# Generated by Django 4.0.2 on 2022-02-26 08:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0004_category_categoryimage'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='productdisplay',
            field=models.FileField(blank=True, upload_to=''),
        ),
    ]
