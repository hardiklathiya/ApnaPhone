# Generated by Django 4.0.2 on 2022-03-31 07:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0033_orderinfo_product_alter_orderinfo_p_name_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='orderinfo',
            name='product',
        ),
    ]