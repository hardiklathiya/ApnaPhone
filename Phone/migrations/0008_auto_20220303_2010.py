# Generated by Django 3.1 on 2022-03-03 14:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0007_cart'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cart',
            old_name='productimg',
            new_name='productimage1',
        ),
        migrations.RemoveField(
            model_name='cart',
            name='productdisc',
        ),
    ]
