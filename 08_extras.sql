use gestor_cobranza_servicios;

create view vista_deuda_clientes as
select
	c.id_cliente,
    c.nombre_apellido,
    SUM(f.total) as total_facturado,
    IFNULL(SUM(p.importe),0) as total_pagado,
    SUM(f.total) - IFNULL(SUM(p.importe), 0) as deuda
from clientes c
join facturas f on c.id_cliente = f.id_cliente
left join pagos p on f.id_factura = p.id_factura
group by c.id_cliente, c.nombre_apellido;

select * from vista_deuda_clientes;

create index idx_dni on clientes(dni); /*tabla clientes (columna dni)*/

show index from clientes; /*para ver todos los indices*/