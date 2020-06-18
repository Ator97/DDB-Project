--@Autor: Gutiérrez Castillo Oscar
--@		   Lopez Vite Erick
--@Fecha creación: 18/06/2020
--@Descripción: Archivo principal de creación de objetos.
clear screen
whenever sqlerror exit rollback;
Prompt Iniciando con la creacion de la BDD.
@s-01-ilap-main-usuario.sql
@s-02-ilap-ligas.sql
@s-03-ilap-main-ddl.sql
@s-04-ilap-main-sinonimos.sql
@s-05-ilap-main-vistas.sql
@s-06-ilap-main-triggers.sql
@s-07-ilap-main-soporte-blobs.sql
Prompt Listo !
exit