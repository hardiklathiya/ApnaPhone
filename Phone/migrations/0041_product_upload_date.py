# Generated by Django 4.0.2 on 2022-04-02 10:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0040_rename_productdec_product_productdec1_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='upload_date',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]
