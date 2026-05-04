use gestor_cobranza_servicios;

select c.nombre_apellido, SUM(f.total) as total_facturado
from facturas f
join clientes c on f.id_cliente = c.id_cliente
group by c.id_cliente, c.nombre_apellido; /*agrupa por cliente*/



select l.nombre as localidad, SUM(p.importe) as total_recaudado
from pagos p

join facturas f on p.id_factura = f.id_factura
join clientes c on f.id_cliente = c.id_cliente
join localidades l on c.id_localidad = l.id_localidad
									/*agrupa por localides*/
group by l.id_localidad, l.nombre;

select AVG(total) as promedio_facturacion
from facturas;
