--@Autor: Gutiérrez Castillo Oscar y López Vite Erick Misael
--@Fecha creación: 10/06/2020
--@Descripción: Creación del trigger Laptop_inventario

create or replace trigger t_dml_laptop_inventario
instead of insert or update or delete on laptop_inventario

declare

begin
	case
		when inserting then

			insert into laptop_inventario_f1(laptop_id,rfc_cliente,num_tarjeta) 
				values(:new.laptop_id,:new.rfc_cliente,:new.num_tarjeta);

			insert into laptop_inventario_f2(laptop_id,fecha_status,sucursal_id,status_laptop_id) 
				values(:new.laptop_id,:new.fecha_status,:new.sucursal_id,:new.status_laptop_id);

		when deleting then

			delete from laptop_inventario_f1 where laptop_id = :old.laptop_id;

			delete from laptop_inventario_f2 where laptop_id = :old.laptop_id;


		when updating then

				raise_application_error(-20030,
				'La operacion update aun no esta soportada');

	end case;
end;
/
