# Generated by Django 3.1 on 2022-02-24 10:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0002_category'),
    ]

    operations = [
        migrations.CreateModel(
            name='product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productname', models.CharField(blank=True, max_length=1501)),
                ('productprice', models.CharField(blank=True, max_length=10)),
                ('productmrp', models.CharField(blank=True, max_length=10)),
                ('productdisc', models.CharField(blank=True, max_length=10)),
                ('productdec', models.CharField(blank=True, max_length=1000)),
                ('productimage', models.FileField(blank=True, upload_to='')),
                ('productavaib', models.CharField(blank=True, max_length=30)),
                ('productcat', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Phone.category')),
            ],
        ),
    ]