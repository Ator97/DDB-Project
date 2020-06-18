--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 29/05/2020
--@Descripción: Creación de fragmentos en los 4 nodos

clear screen
whenever sqlerror exit rollback;
prompt =====================================
prompt Creando fragmentos para elvbd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@elvbd_s1
@s-03-ilap-jrc-s1-ddl.sql
prompt =====================================
prompt Creando fragmentos para elvbd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@elvbd_s2
@s-03-ilap-elv-s2-ddl.sql
prompt =====================================
prompt Creando fragmentos para ogcbd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@ogcbd_s1
@s-03-ilap-ogc-s1-ddl.sql
prompt =====================================
prompt Creando fragmentos para ogcbd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@ogcbd_s2
@s-03-ilap-ogc-s2-ddl.sql
Prompt Listo!
