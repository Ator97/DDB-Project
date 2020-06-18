--@Autor: Gutiérrez Castillo Oscar
--@		   Lopez Vite Erick
--@Fecha creación: 18/06/2020
--@Descripción:  Script principal empleado para configurar el soporte
--               de datos BLOB en los 4 nodos


Prompt configurando directorios y otorgando registros.

--elvbd_s1
Prompt configurando soporte BLOB para elvbd_s1
connect ilap_bdd/ilap_bdd@elvbd_s1
@s-07-ilap-configuracion-soporte-blobs.sql

--elvbd_s2
Prompt configurando soporte BLOB para elvbd_s2
connect ilap_bdd/ilap_bdd@elvbd_s2
@s-07-ilap-configuracion-soporte-blobs.sql

--ogcbd_s1
Prompt configurando soporte BLOB para ogcbd_s1
connect ilap_bdd/ilap_bdd@ogcbd_s1
@s-07-ilap-configuracion-soporte-blobs.sql

--ogcbd_s2
Prompt configurando soporte BLOB para ogcbd_s2
connect ilap_bdd/ilap_bdd@ogcbd_s2
@s-07-ilap-configuracion-soporte-blobs.sql
Prompt Listo