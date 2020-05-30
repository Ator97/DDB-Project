--@Autor: Gutiérrez Castillo Oscar
					Lopez Vite Erick
--@Fecha creación: 29/05/2020
--@Descripción: Creación de fragmentos en los 4 nodos

clear screen
whenever sqlerror exit rollback;
prompt =====================================
prompt Creando fragmentos para elvbd_s1
prompt =====================================
connect lvgc_bdd/lvgc_bdd@elvbd_s1
@s-03-lvgc-jrc-s1-ddl.sql
prompt =====================================
prompt Creando fragmentos para elvbd_s2
prompt =====================================
connect lvgc_bdd/lvgc_bdd@elvbd_s2
@s-03-lvgc-elv-s2-ddl.sql
prompt =====================================
prompt Creando fragmentos para ogcbd_s1
prompt =====================================
connect lvgc_bdd/lvgc_bdd@ogcbd_s1
@s-03-lvgc-ogc-s1-ddl.sql
prompt =====================================
prompt Creando fragmentos para ogcbd_s2
prompt =====================================
connect lvgc_bdd/lvgc_bdd@ogcbd_s2
@s-03-lvgc-ogc-s2-ddl.sql
Prompt Listo!
