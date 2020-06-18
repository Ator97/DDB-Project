--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 29/05/2020
--@Descripción: Creación de sinónimos en Sitio NO

--sucursal
create or replace synonym sucursal_f1 for sucursal_f1_elv_s1;
create or replace synonym sucursal_f2 for sucursal_f2_elv_s2@elvbd_s2.fi.unam;
create or replace synonym sucursal_f3 for sucursal_f3_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym sucursal_f4 for sucursal_f4_ogc_s2@ogcbd_s2.fi.unam;

--sucursal_venta
create or replace synonym sucursal_venta_f1 for sucursal_venta_f1_elv_s1;
create or replace synonym sucursal_venta_f2 for sucursal_venta_f2_elv_s2@elvbd_s2.fi.unam;
create or replace synonym sucursal_venta_f3 for sucursal_venta_f3_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym sucursal_venta_f4 for sucursal_venta_f4_ogc_s2@ogcbd_s2.fi.unam;

--sucursal_taller
create or replace synonym sucursal_taller_f1 for sucursal_taller_f1_elv_s1;
create or replace synonym sucursal_taller_f2 for sucursal_taller_f2_elv_s2@elvbd_s2.fi.unam;
create or replace synonym sucursal_taller_f3 for sucursal_taller_f3_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym sucursal_taller_f4 for sucursal_taller_f4_ogc_s2@ogcbd_s2.fi.unam;

--laptop
create or replace synonym laptop_f1 for laptop_f1_ogc_s2@ogcbd_s2.fi.unam;
create or replace synonym laptop_f2 for laptop_f2_elv_s1;
create or replace synonym laptop_f3 for laptop_f3_ogc_s2@ogcbd_s2.fi.unam;
create or replace synonym laptop_f4 for laptop_f4_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym laptop_f5 for laptop_f5_elv_s2@elvbd_s2.fi.unam;

--laptop_inventario
create or replace synonym laptop_inventario_f1 for laptop_inventario_f1_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym laptop_inventario_f2 for laptop_inventario_f2_elv_s1;

--historico
create or replace synonym historico_status_laptop_f1 for historico_f1_elv_s2@elvbd_s2.fi.unam;
create or replace synonym historico_status_laptop_f2 for historico_f2_elv_s1;

--servicio_laptop
create or replace synonym servicio_laptop_f1 for servicio_laptop_f1_elv_s1;
create or replace synonym servicio_laptop_f2 for servicio_laptop_f2_ogc_s2@ogcbd_s2.fi.unam;
create or replace synonym servicio_laptop_f3 for servicio_laptop_f3_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym servicio_laptop_f4 for servicio_laptop_f4_elv_s2@elvbd_s2.fi.unam;

--tipo_monitor
create or replace synonym tipo_monitor_r1 for tipo_monitor_r_elv_s1;
create or replace synonym tipo_monitor_r2 for tipo_monitor_r_elv_s2@elvbd_s2.fi.unam;
create or replace synonym tipo_monitor_r3 for tipo_monitor_r_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym tipo_monitor_r4 for tipo_monitor_r_ogc_s2@ogcbd_s2.fi.unam;

--tipo_almacenamiento
create or replace synonym tipo_almacenamiento_r1 for tipo_almacenamiento_r_elv_s1;
create or replace synonym tipo_almacenamiento_r2 for tipo_almacenamiento_r_elv_s2@elvbd_s2.fi.unam;
create or replace synonym tipo_almacenamiento_r3 for tipo_almacenamiento_r_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym tipo_almacenamiento_r4 for tipo_almacenamiento_r_ogc_s2@ogcbd_s2.fi.unam;

--tipo_procesador
create or replace synonym tipo_procesador_r1 for tipo_procesador_r_elv_s1;
create or replace synonym tipo_procesador_r2 for tipo_procesador_r_elv_s2@elvbd_s2.fi.unam;
create or replace synonym tipo_procesador_r3 for tipo_procesador_r_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym tipo_procesador_r4 for tipo_procesador_r_ogc_s2@ogcbd_s2.fi.unam;

--tipo_tarjeta_video
create or replace synonym tipo_tarjeta_video_r1 for tipo_tarjeta_video_r_elv_s1;
create or replace synonym tipo_tarjeta_video_r2 for tipo_tarjeta_video_r_elv_s2@elvbd_s2.fi.unam;
create or replace synonym tipo_tarjeta_video_r3 for tipo_tarjeta_video_r_ogc_s1@ogcbd_s1.fi.unam;
create or replace synonym tipo_tarjeta_video_r4 for tipo_tarjeta_video_r_ogc_s2@ogcbd_s2.fi.unam;

