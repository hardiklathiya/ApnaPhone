# Generated by Django 4.0.2 on 2022-04-03 09:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0041_product_upload_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='is_bestseller',
            field=models.BooleanField(default=False),
        ),
    ]
