# Generated by Django 4.0.2 on 2022-03-12 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Phone', '0021_alter_registration_pincode_alter_registration_state'),
    ]

    operations = [
        migrations.CreateModel(
            name='contact',
            fields=[
                ('msg_id', models.AutoField(primary_key=True, serialize=False)),
                ('Name', models.CharField(max_length=20)),
                ('MobileNo', models.IntegerField(blank=True, default='', max_length=10)),
                ('Email', models.EmailField(default='', max_length=30)),
                ('subject', models.CharField(default='', max_length=500)),
            ],
        ),
    ]
