# Generated by Django 4.2.7 on 2023-12-14 21:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Cidere', '0004_tablaprovrevisado_delete_cidereregistro_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Datoscidereprov',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre_proveedor', models.CharField(blank=True, db_column='Nombre_Proveedor', max_length=66, null=True)),
                ('rut_proveedor', models.CharField(blank=True, db_column='Rut_proveedor', max_length=13, null=True)),
                ('direccion', models.CharField(blank=True, db_column='Direccion', max_length=81, null=True)),
                ('mail', models.CharField(blank=True, db_column='Mail', max_length=40, null=True)),
                ('contacto', models.CharField(blank=True, db_column='Contacto', max_length=75, null=True)),
                ('telefono_contacto', models.CharField(blank=True, db_column='Telefono_Contacto', max_length=18, null=True)),
                ('categoria', models.CharField(blank=True, db_column='Categoria', max_length=37, null=True)),
                ('comuna', models.CharField(blank=True, db_column='Comuna', max_length=19, null=True)),
                ('fecha_creacion', models.CharField(blank=True, db_column='Fecha_Creacion', max_length=41, null=True)),
            ],
            options={
                'db_table': 'datoscidereprov',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Proveedorescsv',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('col_1', models.TextField(blank=True, db_column='COL 1', null=True)),
                ('col_2', models.CharField(blank=True, db_column='COL 2', max_length=157, null=True)),
                ('col_3', models.CharField(blank=True, db_column='COL 3', max_length=139, null=True)),
            ],
            options={
                'db_table': 'proveedorescsv',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Regioneschile',
            fields=[
                ('numeroregion', models.IntegerField(db_column='NumeroRegion', primary_key=True, serialize=False)),
                ('nombreregion', models.CharField(db_column='NombreRegion', max_length=50)),
            ],
            options={
                'db_table': 'regioneschile',
                'managed': False,
            },
        ),
    ]