--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación del trigger sucursal_taller para el sitio elvbd_s2

create or replace trigger t_dml_sucursal_taller
instead of insert or update or delete on sucursal_taller

declare
	v_count number;

begin
	case
		when inserting then

			--verifica si hay correspondencia local para evitar acceso remoto
		select count(*) into v_count
		from sucursal_f2
		where sucursal_id =:new.sucursal_id;

		--insercion local
		if v_count > 0 then
			insert into sucursal_taller_f2(sucursal_id,
				dia_descanso,telefono_atencion)
			values(:new.sucursal_id,
				:new.dia_descanso,:new.telefono_atencion);

		else
			select count(*) into v_count
			from sucursal_f1
			where sucursal_id =:new.sucursal_id;

			--insercion remota
			if v_count > 0 then
				insert into sucursal_taller_f1(sucursal_id,
					dia_descanso,telefono_atencion)
				values(:new.sucursal_id,
					:new.dia_descanso,:new.telefono_atencion);

			else
				select count(*) into v_count
				from sucursal_f3
				where sucursal_id =:new.sucursal_id;

				--insercion remota
				if v_count > 0 then
					insert into sucursal_taller_f3(sucursal_id,
						dia_descanso,telefono_atencion)
					values(:new.sucursal_id,
						:new.dia_descanso,:new.telefono_atencion);
				
				else
					select count(*) into v_count
					from sucursal_f4
					where sucursal_id =:new.sucursal_id;

					--insercion remota
					if v_count > 0 then
						insert into sucursal_taller_f4(sucursal_id,
							dia_descanso,telefono_atencion)
						values(:new.sucursal_id,
							:new.dia_descanso,:new.telefono_atencion);

					else
						raise_application_error(-20020,
						'Error de integridad para el campo sucursal_id : '

						|| :new.sucursal_id

						|| ' No se encontró el registro padre en fragmentos');

					end if;
				end if;
			end if;
		end if;

-----------------------------
		when deleting then

			--verifica si hay correspondencia local para evitar acceso remoto
		select count(*) into v_count
		from sucursal_f2
		where sucursal_id =:old.sucursal_id;

		--insercion local
		if v_count > 0 then
			delete from sucursal_taller_f2 where sucursal_id = :old.sucursal_id;

		else
			select count(*) into v_count
			from sucursal_f1
			where sucursal_id =:old.sucursal_id;

			--insercion remota
			if v_count > 0 then
				delete from sucursal_taller_f1 where sucursal_id = :old.sucursal_id;

			else
				select count(*) into v_count
				from sucursal_f3
				where sucursal_id =:old.sucursal_id;

				--insercion remota
				if v_count > 0 then
					delete from sucursal_taller_f3 where sucursal_id = :old.sucursal_id;
				
				else
					select count(*) into v_count
					from sucursal_f4
					where sucursal_id =:old.sucursal_id;

					--insercion remota
					if v_count > 0 then
						delete from sucursal_taller_f4 where sucursal_id = :old.sucursal_id;

					else
						raise_application_error(-20020,
						'Error de integridad para el campo sucursal_id : '

						|| :old.sucursal_id

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

