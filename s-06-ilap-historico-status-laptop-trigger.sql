--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación del trigger historico

create or replace trigger t_dml_historico
instead of insert or update or delete on historico_status_laptop

declare

begin
	case
		when inserting then

			if to_char(:new.fecha_status, 'yyyy') <= '2009' then

				insert into historico_status_laptop_f1(historico_status_laptop_id,fecha_status,status_laptop_id,laptop_id)
					values(:new.historico_status_laptop_id,:new.fecha_status,:new.status_laptop_id,:new.laptop_id);

			elsif to_char(:new.fecha_status, 'yyyy') > '2009'then

				insert into historico_status_laptop_f2(historico_status_laptop_id,fecha_status,status_laptop_id,laptop_id)
					values(:new.historico_status_laptop_id,:new.fecha_status,:new.status_laptop_id,:new.laptop_id);

			else

				raise_application_error(-20010,
					'Valor incorrecto para el campo fecha_status: '
					|| to_char(:new.fecha_status,'yyyy'));

			end if;

		when deleting then

			if to_char(:old.fecha_status, 'yyyy') <= '2009' then

				delete from historico_status_laptop_f1 where historico_status_laptop_id = :old.historico_status_laptop_id;
					

			elsif to_char(:old.fecha_status, 'yyyy') > '2009' then

				delete from historico_status_laptop_f2 where historico_status_laptop_id = :old.historico_status_laptop_id;

			else

				raise_application_error(-20010,
					'Valor incorrecto para el campo fecha_status: '
					|| to_char(:old.fecha_status,'yyyy'));

			end if;


		when updating then

				raise_application_error(-20030,
				'La operacion update aun no esta soportada');

	end case;
end;
/
