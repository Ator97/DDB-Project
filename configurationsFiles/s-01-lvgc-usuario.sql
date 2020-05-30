--@Autor: Gutiérrez Castillo Oscar
					Lopez Vite Erick
--@Fecha creación: 29/05/2020
--@Descripción: Eliminación y creación del usuario.


declare
v_count number(1,0);
begin
select count(*) into v_count
from dba_users
where lower(username) ='lvgc_bdd';
if v_count > 0 then
execute immediate 'drop user lvgc_bdd cascade';
else
dbms_output.put_line('El usuario lvgc_bdd no existe');
end if;
end;
/
Prompt Creando al usuario lvgc_bdd


CREATE USER lvgc_bdd IDENTIFIED BY lvgc_bdd;

GRANT CONNECT,
	SELECT,
  INSERT,
  UPDATE,
  DELETE,
	create table,
	create sequence,
	create any trigger,
	create trigger 
	synonym, 
	create view, 
	create type, 
	create procedure,
	create database link,
 TO lvgc_bdd;
