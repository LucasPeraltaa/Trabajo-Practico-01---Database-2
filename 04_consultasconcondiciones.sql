use gestor_cobranza_servicios;

select c.nombre_apellido, l.nombre as localidad
from clientes c
join localidades l on c.id_localidad = l.id_localidad
where l.nombre = 'Salta Capital'; /*San Miguel de Tucuman - Tafi viejo - yerba buena - salta captal - cafayate - san salvador de jujuy - tilcara*/
select * from localidades;

delete from pagos where id_factura = 20;

select *
from facturas f
left join pagos p on f.id_factura = p.id_factura
where p.id_pago is null;

select * from pagos;

select *
from pagos
where fecha_pago between '2024-03-01' and '2024-05-31';