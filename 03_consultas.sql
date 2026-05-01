use gestor_cobranza_servicios;

/*listar clientes con sus localidades*/

select c.nombre_apellido, c.dni, l.nombre as localidad, l.provincia
from clientes c
join localidades l on c.id_localidad = l.id_localidad;

/*servicios contratados*/
/*SELECT * FROM contrataciones;*/

select c.nombre_apellido, s.nombre_servicio, con.fecha_alta
from contrataciones con
join clientes c on con.id_cliente = c.id_cliente
join servicios s on con.id_servicio = s.id_servicio;

/*facturas*/

select * from facturas;

/*pagos con detalles*/

select c.nombre_apellido, p.fecha_pago, p.importe, p.medio_pago
from pagos p
join facturas f on p.id_factura = f.id_factura
join clientes c on f.id_cliente = c.id_cliente;