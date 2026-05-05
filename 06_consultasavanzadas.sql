use gestor_cobranza_servicios;

select c.nombre_apellido /*no realizo el pago*/
from clientes c
left join facturas f on c.id_cliente = f.id_cliente
left join pagos p on f.id_factura = p.id_factura
where p.id_pago is null;

select c.nombre_apellido, /*mayort deuda*/
SUM(f.total) - IFNULL(SUM(p.importe),0) as deuda /*evita errores*/
from clientes c
join facturas f on c.id_cliente = f.id_cliente
left join pagos p on f.id_factura = p.id_factura
group by c.id_cliente, c.nombre_apellido
order by deuda DESC
limit 1; /*1 SOLA FILA*/

/*servicio mas contratado*/

select s.nombre_servicio, count(*) as cantidad
from contrataciones c
join servicios s on c.id_servicio = s.id_servicio
group by s.id_servicio, s.nombre_servicio
order by cantidad desc
limit 1;