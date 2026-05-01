use gestor_cobranza_servicios;

insert into localidades (nombre, provincia) values
('San Miguel de Tucuman','Tucuman'),
('Tafi Viejo','Tucuman'),
('Yerba Buena','Tucuman'),
('Salta Capital','Salta'),
('Cafayate','Salta'),
('San Salvador de Jujuy','Jujuy'),
('Tilcara','Jujuy');

insert into clientes (nombre_apellido, dni, direccion, telefono, id_localidad) values
('Lucas Peralta', '41495011', 'Julio Cortazar 200', '386663064', 2),
('Ana Gómez', '28999888', 'San Martín 456', '3812222222', 2),
('Luis Fernández', '31555444', 'Belgrano 789', '3813333333', 3),
('María López', '29888777', 'Mitre 321', '3814444444', 1),
('Carlos Díaz', '27666555', 'Rivadavia 654', '3815555555', 2),
('Sofía Torres', '33444555', 'Lavalle 987', '3816666666', 3),
('Pedro Ramírez', '25555111', 'Colón 111', '3817777777', 4),
('Lucía Herrera', '32222333', 'Junín 222', '3818888888', 5),
('Diego Castro', '31111999', 'Salta 333', '3819999999', 6),
('Valeria Ortiz', '29999111', 'Perú 444', '3811231234', 7),
('Jorge Molina', '27777123', 'Chile 555', '3812342345', 1),
('Carla Ríos', '34444123', 'Bolivia 666', '3813453456', 2),
('Martín Vega', '26666123', 'Paraguay 777', '3814564567', 3),
('Elena Ruiz', '35555123', 'Uruguay 888', '3815675678', 4),
('Nicolás Silva', '30000123', 'Brasil 999', '3816786789', 5);

select * from ;

insert into servicios (nombre_servicio, precio_mensual) values
('Internet 100MB', 8000),
('Internet 300MB', 12000),
('Cable Basico', 6000),
('Cable Premium', 9000),
('Telefonía', 4000);

insert into contrataciones (id_cliente, id_servicio, fecha_alta) values
(1,1,'2024-01-10'),
(1,3,'2024-01-15'),
(2,2,'2024-02-01'),
(3,1,'2024-02-10'),
(4,4,'2024-03-05'),
(5,5,'2024-03-10'),
(6,2,'2024-03-15'),
(7,1,'2024-04-01'),
(8,3,'2024-04-05'),
(9,4,'2024-04-10'),
(10,5,'2024-04-15'),
(11,2,'2024-05-01'),
(12,1,'2024-05-05'),
(13,3,'2024-05-10'),
(14,4,'2024-05-15'),
(15,5,'2024-06-01'),
(2,3,'2024-06-05'),
(3,4,'2024-06-10'),
(4,5,'2024-06-15'),
(5,1,'2024-07-01');

select * from pagos;

insert into facturas (id_cliente, fecha_emision, total) values
(1,'2024-02-01',14000),
(2,'2024-02-05',12000),
(3,'2024-02-10',8000),
(4,'2024-03-01',9000),
(5,'2024-03-05',4000),
(6,'2024-03-10',12000),
(7,'2024-03-15',8000),
(8,'2024-04-01',6000),
(9,'2024-04-05',9000),
(10,'2024-04-10',4000),
(11,'2024-04-15',12000),
(12,'2024-05-01',8000),
(13,'2024-05-05',6000),
(14,'2024-05-10',9000),
(15,'2024-05-15',4000),
(1,'2024-06-01',14000),
(2,'2024-06-05',6000),
(3,'2024-06-10',9000),
(4,'2024-06-15',4000),
(5,'2024-07-01',8000);

insert into pagos (id_factura, fecha_pago, importe, medio_pago) values
(1,'2024-02-05',14000,'Efectivo'),
(2,'2024-02-10',12000,'Transferencia'),
(3,'2024-02-15',8000,'Efectivo'),
(4,'2024-03-05',9000,'Tarjeta'),
(5,'2024-03-10',4000,'Efectivo'),
(6,'2024-03-15',12000,'Transferencia'),
(7,'2024-03-20',8000,'Efectivo'),
(8,'2024-04-05',6000,'Tarjeta'),
(9,'2024-04-10',9000,'Transferencia'),
(10,'2024-04-15',4000,'Efectivo'),
(11,'2024-04-20',12000,'Tarjeta'),
(12,'2024-05-05',8000,'Efectivo'),
(13,'2024-05-10',6000,'Transferencia'),
(14,'2024-05-15',9000,'Tarjeta'),
(15,'2024-05-20',4000,'Efectivo'),
(16,'2024-06-05',14000,'Transferencia'),
(17,'2024-06-10',6000,'Efectivo'),
(18,'2024-06-15',9000,'Tarjeta'),
(19,'2024-06-20',4000,'Efectivo'),
(20,'2024-07-05',8000,'Transferencia'),
(1,'2024-07-10',2000,'Efectivo'),
(2,'2024-07-15',3000,'Transferencia'),
(3,'2024-07-20',1000,'Efectivo'),
(4,'2024-07-25',2000,'Tarjeta'),
(5,'2024-07-30',1000,'Efectivo');