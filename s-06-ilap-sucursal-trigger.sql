--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación del trigger Sucursal

create or replace trigger t_dml_sucursal
instead of insert or update or delete on sucursal

declare

begin
	case
		when inserting then

			if substr(:new.clave, 3, 2) not in ('NO', 'EA', 'WS', 'SO') then
				raise_application_error(-20010,
					'Valor incorrecto para el campo clave : '
					|| :new.clave
					|| ' Solo se permiten los valores (NO,EA,WS,SO) ');
			end if;

			if substr(:new.clave,3,2) = 'NO' OR (:new.es_taller = 1 AND :new.es_venta = 1) then

				insert into sucursal_f1(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
					values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,:new.longitud,:new.url);

			elsif substr(:new.clave,3,2) = 'EA' AND ((:new.es_taller = 1 AND :new.es_venta = 0) OR (:new.es_taller = 0 AND :new.es_venta = 1)) then

				insert into sucursal_f2(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
					values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,:new.longitud,:new.url);

			elsif substr(:new.clave,3,2) = 'WS' AND ((:new.es_taller = 1 AND :new.es_venta = 0) OR (:new.es_taller = 0 AND :new.es_venta = 1)) then

				insert into sucursal_f3(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
					values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,:new.longitud,:new.url);

			elsif substr(:new.clave,3,2) = 'SO' AND ((:new.es_taller = 1 AND :new.es_venta = 0) OR (:new.es_taller = 0 AND :new.es_venta = 1)) then

				insert into sucursal_f4(sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url)
					values(:new.sucursal_id,:new.clave,:new.es_taller,:new.es_venta,:new.nombre,:new.latitud,:new.longitud,:new.url);

			else

				raise_application_error(-20010,
					'Valor incorrecto para los campos es_taller, es_venta : '
					|| :new.es_taller
					|| ' Solo se permiten los valores 1 y 0'
					|| :new.es_venta
					|| ' Solo se permiten los valores 1 y 0');

			end if;

		when deleting then

			if substr(:old.clave,3,2) = 'NO' OR (:old.es_taller = 1 AND :old.es_venta = 1) then

				delete from sucursal_f1 where sucursal_id = :old.sucursal_id;

			elsif substr(:old.clave,3,2) = 'EA' AND ((:old.es_taller = 1 AND :old.es_venta = 0) OR (:old.es_taller = 0 AND :old.es_venta = 1)) then

				delete from sucursal_f2 where sucursal_id = :old.sucursal_id;

			elsif substr(:old.clave,3,2) = 'WS' AND ((:old.es_taller = 1 AND :old.es_venta = 0) OR (:old.es_taller = 0 AND :old.es_venta = 1)) then

				delete from sucursal_f3 where sucursal_id = :old.sucursal_id;

			elsif substr(:old.clave,3,2) = 'SO' AND ((:old.es_taller = 1 AND :old.es_venta = 0) OR (:old.es_taller = 0 AND :old.es_venta = 1)) then

				delete from sucursal_f4 where sucursal_id = :old.sucursal_id;

			else

				raise_application_error(-20010,
					'Valor incorrecto para los campos : '
					|| :old.clave
					|| ' Solo se permiten los valores (NO,EA,WS,SO) '
					|| :old.es_taller
					|| ' Solo se permiten los valores 1 y 0'
					|| :old.es_venta
					|| ' Solo se permiten los valores 1 y 0');

			end if;


		when updating then

				raise_application_error(-20030,
				'La operacion update aun no esta soportada');

	end case;
end;
/
