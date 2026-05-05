use gestor_cobranza_servicios;

update servicios
set precio_mensual = 9000
where nombre_servicio = 'Internet 100MB';

delete from pagos
where id_factura in (
select id_factura from facturas where id_cliente = 1
);