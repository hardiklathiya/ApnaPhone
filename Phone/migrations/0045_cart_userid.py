# Generated by Django 3.2.12 on 2022-04-08 09:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0044_alter_product_productavaib'),
    ]

    operations = [
        migrations.AddField(
            model_name='cart',
            name='userId',
            field=models.CharField(blank=True, max_length=30),
        ),
    ]
