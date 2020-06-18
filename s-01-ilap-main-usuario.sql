--@Autor: Gutiérrez Castillos Oscar y López Vite Erick Misael
--@Fecha creación: 29/05/2020
--@Descripción: Creación de usuarios en los 4 nodos

clear screen
whenever sqlerror exit rollback;
set serveroutput on
Prompt Inciando creacion/eliminacion de usuarios.
accept syspass char prompt 'Proporcione el password de sys: ' hide
prompt =====================================
prompt Creando usuario en elvbd_s1
prompt =====================================
connect sys/&&syspass@elvbd_s1 as sysdba
@s-01-lvgc-usuario.sql
prompt =====================================
prompt Creando usuario en elvbd_s2
prompt =====================================
connect sys/&&syspass@elvbd_s2 as sysdba
@s-01-lvgc-usuario.sql
prompt =====================================
prompt Creando usuario en ogcbd_s1
prompt =====================================
connect sys/&&syspass@ogcbd_s1 as sysdba
@s-01-lvgc-usuario.sql
prompt =====================================
prompt Creando usuario en ogcbd_s2
prompt =====================================
connect sys/&&syspass@ogcbd_s2 as sysdba
@s-01-lvgc-usuario.sql
Prompt Listo!
disconnect
