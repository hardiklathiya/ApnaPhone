# Generated by Django 4.0.2 on 2022-04-02 09:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0039_alter_product_productdisplay_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='productdec',
            new_name='productdec1',
        ),
        migrations.AddField(
            model_name='product',
            name='productdec2',
            field=models.CharField(blank=True, max_length=1000),
        ),
        migrations.AddField(
            model_name='product',
            name='productdec3',
            field=models.CharField(blank=True, max_length=1000),
        ),
        migrations.AddField(
            model_name='product',
            name='productdec4',
            field=models.CharField(blank=True, max_length=1000),
        ),
        migrations.AddField(
            model_name='product',
            name='productdec5',
            field=models.CharField(blank=True, max_length=1000),
        ),
    ]