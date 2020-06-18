--@Autor: Gutiérrez Castillo Oscar
--@					Lopez Vite Erick
--@Fecha creación: 29/05/2020
--@Descripción: Eliminación y creación del usuario.


declare

	v_count number(1,0);
	
begin
	
	select count(*) into v_count
	from dba_users
	where lower(username) ='ilap_bdd';
	if v_count > 0 then
		execute immediate 'drop user ialp_bdd cascade';
	else
		dbms_output.put_line('El usuario ilap_bdd no existe');
	end if;
end;
/

Prompt Creando al usuario lvgc_bdd

CREATE USER ilap_bdd IDENTIFIED BY ilap_bdd;

grant create session, create trigger, create any directory, 
	create table, create sequence, create procedure, create view, 
	create synonym, create database link to ilap_bdd;
