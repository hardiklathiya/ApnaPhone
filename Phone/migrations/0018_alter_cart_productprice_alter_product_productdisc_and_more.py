# Generated by Django 4.0.2 on 2022-03-05 11:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0017_alter_cart_productprice_alter_product_productdisc_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cart',
            name='productprice',
            field=models.FloatField(blank=True, max_length=10),
        ),
        migrations.AlterField(
            model_name='product',
            name='productdisc',
            field=models.FloatField(blank=True, max_length=10),
        ),
        migrations.AlterField(
            model_name='product',
            name='productmrp',
            field=models.FloatField(blank=True, max_length=10),
        ),
        migrations.AlterField(
            model_name='product',
            name='productprice',
            field=models.FloatField(blank=True, max_length=10),
        ),
    ]
