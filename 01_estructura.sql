CREATE database gestor_cobranza_servicios;
use gestor_cobranza_servicios;

/*Crear las tablas para : Localidades, clientes, servicios, contrataciones, factiuracion y pagos*/

create table localidades (
	id_localidad int auto_increment primary key,
	nombre varchar(100) not null,
	provincia varchar(100) not null 
);

create table clientes (
	id_cliente int auto_increment primary key,
    nombre_apellido varchar(150) not null,
    dni varchar(15) unique not null,
    direccion varchar(150),
    telefono varchar(20),
    id_localidad int,
    foreign key (id_localidad) references localidades(id_localidad)
);

create table servicios (
	id_servicio int auto_increment primary key,
    nombre_servicio varchar(100) not null,
    precio_mensual decimal(10,2) not null
);

create table contrataciones (
	id_contratacion int auto_increment primary key,
    id_cliente int,
    id_servicio int,
    fecha_alta date,
    foreign key (id_cliente) references clientes(id_cliente),
    foreign key (id_servicio) references servicios(id_servicio)
);

create table facturas (
	id_factura int auto_increment primary key,
    id_cliente int,
    fecha_emision date,
    total decimal (10,2),
    foreign key (id_cliente) references clientes (id_cliente)
    
);

drop table facturas; /* escribi mal y queria corregir, preferia eliminar la tabla en vez de hacer un alter table - change*/

create table pagos (
	id_pago int auto_increment primary key,
    id_factura int,
    fecha_pago date,
    importe decimal (10,2),
    medio_pago varchar(50),
    foreign key (id_factura) references facturas(id_factura)
);


SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE pagos;
TRUNCATE TABLE facturas;

SET FOREIGN_KEY_CHECKS = 1;