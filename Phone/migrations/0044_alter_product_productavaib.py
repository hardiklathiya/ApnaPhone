# Generated by Django 4.0.2 on 2022-04-03 13:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0043_product_bestseller_display'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='productavaib',
            field=models.CharField(blank=True, default='In Stock', max_length=30),
        ),
    ]
