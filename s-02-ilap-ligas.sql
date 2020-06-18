--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 29/05/2020
--@Descripción: Creación de ligas en los 4 nodos.

clear screen
whenever sqlerror exit rollback
Prompt ============================
Prompt Creando ligas en elvbd_s1
Prompt ============================
connect ilap_bdd/ilap_bdd@elvbd_s1
-- PDB local
create database link elvbd_s2.fi.unam using 'ELVBD_S2';
--PDB remotas
create database link ogcbd_s1.fi.unam using 'OGCBD_S1';
Create database link ogcbd_s2.fi.unam using 'OGCBD_S2';

Prompt ============================
Prompt Creando ligas en elvbd_s2
Prompt ============================
connect ilap_bdd/ilap_bdd@elvbd_s2
-- PDB local
create database link elvbd_s1.fi.unam using 'ELVBD_S1';
--PDB remotas
create database link ogcbd_s1.fi.unam using 'OGCBD_S1';
Create database link ogcbd_s2.fi.unam using 'OGCBD_S2';


Prompt ============================
Prompt Creando ligas en ogcbd_s1
Prompt ============================
connect ilap_bdd/ilap_bdd@ogcvbd_s1
-- PDB local
create database link ogcbd_s2.fi.unam using 'OGCBD_S2';
--PDB remotas
create database link elvbd_s1.fi.unam using 'ELVBD_S1';
Create database link elvbd_s2.fi.unam using 'ELVBD_S2';

Prompt ============================
Prompt Creando ligas en ogcbd_s2
Prompt ============================
connect ilap_bdd/ilap_bdd@ogcvbd_s2
-- PDB local
create database link ogcbd_s1.fi.unam using 'OGCBD_S1';
--PDB remotas
create database link elvbd_s1.fi.unam using 'ELVBD_S1';
Create database link elvbd_s2.fi.unam using 'ELVBD_S2';




Prompt Listo!
