from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class CidereRegistro(models.Model):
    accion = models.CharField(db_column='Accion', max_length=100)  # Field name made lowercase.
    id_usuario = models.CharField(max_length=100)
    fecha = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'cidere_registro'


class CidereUsuario(models.Model):
    run = models.CharField(primary_key=True, max_length=50)
    correo = models.CharField(max_length=100)
    nombre = models.CharField(max_length=100)
    tipo = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cidere_usuario'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Relleno(models.Model):
    id_usuario = models.IntegerField(db_column='Id_usuario')  # Field name made lowercase.
    region = models.CharField(max_length=50)
    nombre_empresa = models.CharField(db_column='Nombre_Empresa', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'relleno'


class TablaRCrud(models.Model):
    id_transaccion = models.ForeignKey('TablaRTransacciones', models.DO_NOTHING, db_column='id_transaccion')
    id_usuario = models.ForeignKey('TablaUsuario', models.DO_NOTHING, db_column='id_usuario')

    class Meta:
        managed = False
        db_table = 'tabla r_crud'


class TablaAcciones(models.Model):
    id_accion = models.IntegerField(primary_key=True)
    detalle_accion = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'tabla_acciones'


class TablaPagRevisado(models.Model):
    id_transaccion = models.ForeignKey('TablaRTransacciones', models.DO_NOTHING, db_column='id_transaccion')
    pagina_ant = models.ForeignKey('TablaUsuario', models.DO_NOTHING, db_column='pagina_ant')
    pagina_visit = models.ForeignKey('TablaUsuario', models.DO_NOTHING, db_column='pagina_visit', related_name='tablapagrevisado_pagina_visit_set')
    boton_contacto = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tabla_pag_revisado'


class TablaPaginas(models.Model):
    id_pagina = models.IntegerField(primary_key=True)
    pagina = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'tabla_paginas'


class TablaRBusquedas(models.Model):
    id_transaccion = models.ForeignKey('TablaRTransacciones', models.DO_NOTHING, db_column='id_transaccion')
    terminos_busqueda = models.CharField(max_length=100)
    categoria = models.IntegerField()
    rubro = models.IntegerField()
    tamano = models.IntegerField()
    region = models.IntegerField()
    provincia = models.IntegerField()
    comunas = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tabla_r_busquedas'


class TablaRTransacciones(models.Model):
    id_transaccion = models.IntegerField(primary_key=True)
    accion_realizada = models.ForeignKey(TablaAcciones, models.DO_NOTHING, db_column='accion_realizada')
    id_usuario = models.ForeignKey('TablaUsuario', models.DO_NOTHING, db_column='id_usuario')
    fecha_registro = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'tabla_r_transacciones'


class TablaUsuario(models.Model):
    id_usuario = models.IntegerField(primary_key=True)
    nombre_empresa = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'tabla_usuario'