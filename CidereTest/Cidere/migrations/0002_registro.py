# Generated by Django 4.2.7 on 2023-11-13 03:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("Cidere", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="registro",
            fields=[
                ("id", models.AutoField(primary_key=True, serialize=False)),
                ("Accion", models.CharField(max_length=100)),
                ("id_usuario", models.CharField(max_length=100)),
                ("fecha", models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
