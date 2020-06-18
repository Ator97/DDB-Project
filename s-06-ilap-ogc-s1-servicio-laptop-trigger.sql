--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación del trigger servicio_laptop para el sitio ogcbd_s1

create or replace trigger t_dml_servicio_laptop
instead of insert or update or delete on servicio_laptop

declare
	v_count number;

begin
	case
		when inserting then

			--verifica si hay correspondencia local para evitar acceso remoto
		select count(*) into v_count
		from laptop_f4
		where laptop_id =:new.laptop_id;

		--insercion local
		if v_count > 0 then
			insert into servicio_laptop_f3(num_servicio,laptop_id,importe,diagnostico,factura,sucursal_id)
			values(:new.num_servicio,:new.laptop_id,:new.importe,:new.diagnostico,:new.factura,:new.sucursal_id);

		else
			select count(*) into v_count
			from laptop_f3
			where laptop_id =:new.laptop_id;

			--insercion remota
			if v_count > 0 then
				insert into ti_servicio_laptop_f2(num_servicio,laptop_id,importe,diagnostico,factura,sucursal_id)
				values(:new.num_servicio,:new.laptop_id,:new.importe,:new.diagnostico,:new.factura,:new.sucursal_id);

			--inserta en el sitio remoto a través de la tabla temporal
				insert into servicio_laptop_f2
				select * from ti_servicio_laptop_f2
				where laptop_id = :new.laptop_id
				and num_servicio = :new.num_servicio;

				delete from ti_servicio_laptop_f2
				where laptop_id = :new.laptop_id
				and num_servicio = :new.num_servicio;

			else
				select count(*) into v_count
				from laptop_f2
				where laptop_id =:new.laptop_id;

				--insercion remota
				if v_count > 0 then
					insert into ti_servicio_laptop_f1(num_servicio,laptop_id,importe,diagnostico,factura,sucursal_id)
					values(:new.num_servicio,:new.laptop_id,:new.importe,:new.diagnostico,:new.factura,:new.sucursal_id);

				--inserta en el sitio remoto a través de la tabla temporal
					insert into servicio_laptop_f1
					select * from ti_servicio_laptop_f1
					where laptop_id = :new.laptop_id
					and num_servicio = :new.num_servicio;

					delete from ti_servicio_laptop_f1
					where laptop_id = :new.laptop_id
					and num_servicio = :new.num_servicio;
					
				else
					select count(*) into v_count
					from laptop_f5
					where laptop_id =:new.laptop_id;

					--insercion remota
					if v_count > 0 then
						insert into ti_servicio_laptop_f4(num_servicio,laptop_id,importe,diagnostico,factura,sucursal_id)
						values(:new.num_servicio,:new.laptop_id,:new.importe,:new.diagnostico,:new.factura,:new.sucursal_id);

					--inserta en el sitio remoto a través de la tabla temporal
						insert into servicio_laptop_f4
						select * from ti_servicio_laptop_f4
						where laptop_id = :new.laptop_id
						and num_servicio = :new.num_servicio;

						delete from ti_servicio_laptop_f4
						where laptop_id = :new.laptop_id
						and num_servicio = :new.num_servicio;

					else
						raise_application_error(-20020,
						'Error de integridad para el campo laptop_id : '

						|| :new.laptop_id

						|| ' No se encontró el registro padre en fragmentos');

					end if;
				end if;
			end if;
		end if;

-----------------------------
		when deleting then

			--verifica si hay correspondencia local para evitar acceso remoto
		select count(*) into v_count
		from laptop_f4
		where laptop_id =:old.laptop_id;

		--insercion local
		if v_count > 0 then
			delete from servicio_laptop_f3
			where laptop_id = :old.laptop_id
			and num_servicio = :old.num_servicio;

		else
			select count(*) into v_count
			from laptop_f3
			where laptop_id =:old.laptop_id;

			--insercion remota
			if v_count > 0 then
				delete from servicio_laptop_f2
				where laptop_id = :old.laptop_id
				and num_servicio = :old.num_servicio;

			else
				select count(*) into v_count
				from laptop_f2
				where laptop_id =:old.laptop_id;

				--insercion remota
				if v_count > 0 then
					delete from servicio_laptop_f1
					where laptop_id = :old.laptop_id
					and num_servicio = :old.num_servicio;
				
				else
					select count(*) into v_count
					from laptop_f5
					where laptop_id =:old.laptop_id;

					--insercion remota
					if v_count > 0 then
						delete from servicio_laptop_f4
						where laptop_id = :old.laptop_id
						and num_servicio = :old.num_servicio;

					else
						raise_application_error(-20020,
						'Error de integridad para el campo laptop_id : '

						|| :old.laptop_id

						|| ' No se encontró el registro padre en fragmentos');

					end if;
				end if;
			end if;
		end if;


		when updating then

				raise_application_error(-20030,
				'La operacion update aun no esta soportada');

	end case;
end;
/

