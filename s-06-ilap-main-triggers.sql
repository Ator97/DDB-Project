--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación de triggers para implementar transparencia de inserción

clear screen
whenever sqlerror exit rollback

Prompt ==============================
Prompt Creando triggers en elvbd_s1
Prompt ==============================
connect ilap_bdd/ilap_bdd@elvbd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-elv-s1-sucursal-taller-trigger.sql
@s-06-ilap-elv-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-elv-s1-servicio-laptop-trigger.sql

Prompt ==============================
Prompt Creando triggers en elvbd_s2
Prompt ==============================
connect ilap_bdd/ilap_bdd@elvbd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-elv-s2-sucursal-taller-trigger.sql
@s-06-ilap-elv-s2-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-elv-s2-servicio-laptop-trigger.sql

Prompt ==============================
Prompt Creando triggers en ogcbd_s1
Prompt ==============================
connect ilap_bdd/ilap_bdd@ogcbd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-ogc-s1-sucursal-taller-trigger.sql
@s-06-ilap-ogc-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-ogc-s1-servicio-laptop-trigger.sql

Prompt ==============================
Prompt Creando triggers en ogcbd_s2
Prompt ==============================
connect ilap_bdd/ilap_bdd@ogcbd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-ogc-s2-sucursal-taller-trigger.sql
@s-06-ilap-ogc-s2-sucursal-venta-trigger.sql
@s-06-ilap-ogc-s2-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-ogc-s2-servicio-laptop-trigger.sql
Prompt Listo!
exit
