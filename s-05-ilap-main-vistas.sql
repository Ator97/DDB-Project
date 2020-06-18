--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 29/05/2020
--@Descripción: Creación de vistas para todos los sitiosclear screen

whenever sqlerror exit rollback;

prompt ===========================================
prompt Creando vistas para elvbd_s1
prompt ===========================================

connect ilap_bdd/ilap_bdd@elvbd_s1
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-elvbd-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para elvbd_s2
prompt ===========================================

connect ilap_bdd/ilap_bdd@elvbd_s2
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-elvbd-s2-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para ogcbd_s1
prompt ===========================================

connect ilap_bdd/ilap_bdd@ogcbd_s1
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-ogcbd-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para ogcbd_s2
prompt ===========================================

connect ilap_bdd/ilap_bdd@ogcbd_s2
prompt creando vistas que no requieren manejo de BLOBs
@s-05-ilap-vistas.sql
prompt creando tablas temporales
@s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@s-05-ilap-ogcbd-s2-vistas-blob.sql

prompt Listo!

