--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación del trigger laptop para el sitio ogcbd_s2

create or replace trigger t_dml_laptop
instead of insert or update or delete on laptop

declare

begin
	case
		when inserting then

			if substr(:new.num_serie,1,1) in ('0','1') then

				insert into laptop_f2(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
					values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,:new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);

			elsif substr(:new.num_serie,1,1) in ('2','3') then

				insert into laptop_f3(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
					values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,:new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);

			elsif substr(:new.num_serie,1,1) in ('4','5') then

				insert into laptop_f4(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
					values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,:new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);

			elsif substr(:new.num_serie,1,1) in ('6','7','8','9') then

				insert into laptop_f5(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
					values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,:new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);

			else

				raise_application_error(-20010,
					'Valor incorrecto para el campo num_serie : '
					|| :new.num_serie);

			end if;

			--inserta el binario local
			insert into laptop_f1(laptop_id,foto)
				values(:new.laptop_id,:new.foto);

		when deleting then

			if substr(:old.num_serie,1,1) in ('0','1') then

				delete from laptop_f2 where laptop_id = :old.laptop_id;

			elsif substr(:old.num_serie,1,1) in ('2','3') then

				delete from laptop_f3 where laptop_id = :old.laptop_id;

			elsif substr(:old.num_serie,1,1) in ('4','5') then

				delete from laptop_f4 where laptop_id = :old.laptop_id;

			elsif substr(:old.num_serie,1,1) in ('6','7','8','9') then

				delete from laptop_f5 where laptop_id = :old.laptop_id;

			else

				raise_application_error(-20010,
					'Valor incorrecto para el campo num_serie : '
					|| :old.num_serie);

			end if;

			--borrado remoto de blob
			delete from laptop_f1 where laptop_id = :old.laptop_id;


		when updating then

				raise_application_error(-20030,
				'La operacion update aun no esta soportada');

	end case;
end;
/

