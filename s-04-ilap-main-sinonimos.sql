--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 29/05/2020
--@Descripción: Main creación de sinónimos

clear screen
whenever sqlerror exit rollback;

prompt =====================================
prompt Creando sinonimos y verificando para elvbd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@elvbd_s1
@s-04-ilap-elvbd-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt Creando sinonimos y verificando para elvbd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@elvbd_s2
@s-04-ilap-elvbd-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt Creando sinonimos y verificando para ogcbd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@ogcbd_s1
@s-04-ilap-ogcbd-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt Creando sinonimos y verificando para ogcbd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@ogcbd_s2
@s-04-ilap-ogcbd-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

Prompt Listo!
--exit;
