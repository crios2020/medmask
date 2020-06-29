-- Este archivo inserta registros de prueba de la base
-- No ejecutar cuando la base esta en producción

-- use medmask;
set sql_safe_updates=0;

insert into materiales (id,nombre,descripcion) values
	(1,'Radiografías viejas','tamaño mínimo de 35cmx35cm'),
    (2,'Placas de acetato','tamaño mínimo de 35cmx35cm'),
    (3,'Bolsas reciclables','friselina'),
    (4,'Precintos','espesor máximo 4mm'),
    (5,'Bandas elásticas',''),
    (6,'Zunchos plásticos','espesor mínimo 15 mm');
    
insert into usuarios (nombre,apellido,localidad,email,pass) values 
	('Ana','Mendoza','CABA','ana@gmail.com','123'),
    ('Laura','Segovia','Moron','laura@gmail,com','321'),
    ('Martin','Martinez','Avellaneda','marto@gmail.com','aaa'),
    ('Diego','Doreti','Belgrano','di@gmail.com','abc'),
    ('Debora','Vargas','Belgrano','deby@gmail.com','abc'),
    ('Laura','Salas','Barrio norte','lausa@gmail.com','abc'),
    ('Miguel','Losano','Almagro','migue@gmail.com','abc'),
    ('Lorena','Godoy','Haedo','lore@gmail.com','lolo');

insert into armadores (idUsuario) values (1),(3);

insert into donantes (idUsuario) values (2),(4);

insert into solicitantes (idUsuario,institucion) values 
	(5,'Hospital municipal'),
    (6,'Comedor comunitario'),
    (7,'centro de jubilados'),
    (8,'Hogar de Ansianos');

insert into solicitudesDeMascaras (idSolicitante,estado,fechaPublicacion,cantidadMascaras,mensaje) values
	(1,'Pendiente',curdate(),30,'necesito ayuda, estamos en situación de riesgo'),
	(2,'Pendiente',curdate(),4,''),
	(3,'Pendiente',curdate(),20,''),
	(4,'Pendiente',curdate(),15,'');

insert into donaciones (idDonante,estado,fechaPublicacion,mensaje) values 
	(1,'Disponible',curdate(),'Son cosas que ya no uso'),
    (2,'Disponible',curdate(),'');

insert into materialesParaDonar (idDonacion,idMaterial,cantidad) values
	(1,4,10),
    (1,5,20),
    (1,6,30),
    (1,2,5),
    (2,2,25),
    (2,3,16),
    (2,1,80),
    (2,5,12);

insert into solicitudesDeMateriales (idSolicitante,estado,fechaPublicacion,idMaterial,cantidad,mensaje) values
	(1,'Pendiente',curdate(),2,30,''),
	(1,'Pendiente',curdate(),4,30,''),
	(1,'Pendiente',curdate(),5,30,''),
    (2,'Pendiente',curdate(),6,40,''),
    (2,'Pendiente',curdate(),3,40,''),
    (2,'Pendiente',curdate(),1,40,'');
    
insert into usuarios (nombre,apellido,localidad,email,pass) values 
	('FHJGHJG','GHJGHJ','CABA','GHGHGHSime@hotmail.com','123'),
    	('FHFGHFGH','GFGJJ','Barrio norte','GuASGHGHGAsto@gmail,com','321');

insert into usuarios (nombre,apellido,localidad,email,pass) values 
	('FHJGHJG','GHJGHJ','CABA','GHGHGHSime2@gmail.com','123'),
    	('FHFGHFGH','GFGJJ','Barrio norte','GuASGHGHGAsto2@gmail,com','321');
    
insert into donantes (idUsuario) values (9),(10);

insert into usuarios (nombre,apellido,localidad,email,pass) values 
	('SARASA','LOREM','CABA','jASASime@gmail.com','123'),
    	('ASSAS','ASAS','Barrio norte','GuASASAsto@gmail,com','321');
    
insert into donantes (idUsuario) values (11),(12);


insert into solicitantes (idUsuario,institucion) values 
	(13,'Hospital municipal Merlo'),
    (14,'Comedor comunitario Caritas');
    
insert into usuarios (nombre,apellido,localidad,email,pass) values 
	('Jimena','Baron','CABA','jime@gmail.com','123'),
    	('Benjamin','Guttierez','Barrio norte','Gusto@gmail,com','321');
    
insert into donantes (idUsuario) values (15),(16);
    
insert into donaciones (idDonante,estado,fechaPublicacion,mensaje) values 
	(4,'Disponible',curdate(),'Ayuda para la sociedad'),
    (5,'Disponible',curdate(),'Materiales sin uso');
    
insert into materialesParaDonar (idDonacion,idMaterial,cantidad) values
	(4,4,10),
    (4,5,20),
    (4,6,30),
    (4,2,5),
    (4,2,25),
    (4,3,16),
    (4,1,80),
    (4,5,12);
    

insert into usuarios (nombre, apellido, localidad, email, pass) values
('Julian', 'Ruiz', 'Bernal', 'julianruiz@gmail.com', 'juiadse90'),
('Mariana','Linares','Flores','marianaflores@yahoo.com','jdooe11'),
('Mario','Limon','Once','mariolimon','12cfd'),
('Lino','Clemente','Haedo','linoclemente@hotmail.com','linolino2'),
('Cara','Caressi','Tigre','caraca@gmail.com','dhkj23'),
('Lola','Martinez','San Isidro','lolalolita@gmail.com','kddadfdf'),
('Felipe','Rojo','Quilmes','felipereojo@yahoo.com','rfacw'),
('Tomas','Gabriel','CABA','tomasgabriel@hotmail.com','toamsdf'),
('Belen','Mena','CABA','belen_mena23@gmail.com','424rg'),
('Mona','Lisado','Tigre','monalisa@gmail.com','839dsf'),
('Julio','Lopez','Wilde','julio_34_lpez@hotmail.com','hfjflope88');

insert into armadores (idUsuario) values
(12),
(15),
(18),
(9),
(17);

insert into donantes (idUsuario) values
(22),
(24),
(25),
(26),
(23),
(18),
(17),
(19);

insert into solicitantes (idUsuario, institucion) values
(10, 'Hospital Rivadavia'),
(11, 'Hospital Durand'),
(13, 'Centro Medico Pueyrredon'),
(14, 'Centro Medico Barrial 6'),
(16, 'Centro Medico Mevaterapia'),
(8, 'Centro Medico Monserrat'),
(9, 'Centro de Salud y Accion Comunitaria');

insert into solicitudesDeMascaras (idSolicitante, estado, fechaPublicacion, cantidadMascaras, mensaje) values
(1, 'Resuelto', '2020-02-16', 5,''),
(2, 'Resuelto', '2020-02-20', 6,''),
(10, 'Resuelto', '2020-03-04', 10,''),
(11, 'Resuelto', '2020-03-15', 12,''),
(5, 'Resuelto', '2020-04-01', 6,''),
(6, 'Resuelto', '2020-04-18', 8,''),
(7, 'Ejecucion', '2020-06-16', 12,''),
(8, 'Ejecucion', '2020-06-17', 8,''),
(9, 'Ejecucion', '2020-06-17', 9,''),
(3, 'Ejecucion', '2020-06-20', 11,''),
(4, 'Pendiente', curdate(), 25,''),
(11, 'Pendiente', curdate(), 40,'');

update solicitudesDeMascaras set idArmador=1  where id=5;
update solicitudesDeMascaras set idArmador=2  where id=6;
update solicitudesDeMascaras set idArmador=6  where id=7;
update solicitudesDeMascaras set idArmador=3  where id=8;
update solicitudesDeMascaras set idArmador=4  where id=9;
update solicitudesDeMascaras set idArmador=7  where id=10;
update solicitudesDeMascaras set idArmador=5  where id=11;
update solicitudesDeMascaras set idArmador=1  where id=12;
update solicitudesDeMascaras set idArmador=2  where id=13;
update solicitudesDeMascaras set idArmador=6  where id=14;

update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=5;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=6;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=7;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=8;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=9;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=10;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=11;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=12;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=13;
update solicitudesDeMascaras set fechaInicioArmado=date_add(fechaPublicacion, interval 5 day)
, fechaRecepcion=date_add(fechaInicioArmado, interval 10 day)  where id=14;

update solicitudesDeMascaras set cantidadRecibida=5  where id=5;
update solicitudesDeMascaras set cantidadRecibida=6  where id=6;
update solicitudesDeMascaras set cantidadRecibida=10  where id=7;
update solicitudesDeMascaras set cantidadRecibida=10  where id=8;
update solicitudesDeMascaras set cantidadRecibida=10  where id=9;
update solicitudesDeMascaras set cantidadRecibida=8  where id=10;
update solicitudesDeMascaras set cantidadRecibida=12  where id=11;
update solicitudesDeMascaras set cantidadRecibida=8  where id=12;
update solicitudesDeMascaras set cantidadRecibida=9  where id=13;
update solicitudesDeMascaras set cantidadRecibida=8  where id=14;

insert into donaciones (idDonante, estado, fechaPublicacion, mensaje) values
(1, 'Disponible','2020-06-21',''),
(2, 'Disponible','2020-06-27',''),
(3, 'Disponible','2020-06-27',''),
(4, 'Donado','2020-02-01',''),
(5, 'Donado','2020-02-18',''),
(6, 'Donado','2020-03-20',''),
(7, 'Donado','2020-04-01',''),
(8, 'Donado','2020-04-02',''),
(9, 'Donado','2020-05-15',''),
(10, 'Donado','2020-05-25',''),
(11, 'Donado','2020-06-15',''),
(12, 'Disponible','2020-06-26',''),
(13, 'Disponible','2020-06-26','');

update donaciones set fechaDonacion=date_add(fechaPublicacion, interval 6 day) where estado='Donado';

select * from donaciones;
insert into materialesParaDonar (idDonacion, idMaterial, cantidad) values
(14, 1, 20),
(15, 1, 5),
(11, 2, 10),
(12, 3, 50),
(13, 6, 100),
(14, 5, 5),
(15, 1, 13);

insert into solicitudesDeMateriales (idSolicitante, estado, fechaPublicacion, idMaterial, cantidad, cantidadRecibida) values 
(1, 'Pendiente', curdate(), 1, 30, null),
(2, 'Pendiente', curdate(), 2, 50, null),
(6, 'Pendiente', '2020-06-22', 4, 25, null),
(3, 'Pendiente', '2020-06-25', 6, 40, null),
(4, 'Resuelto', '2020-02-06', 4, 10, 10),
(7, 'Resuelto', '2020-02-23', 5, 20, 20),
(5, 'Resuelto', '2020-05-21', 2, 25, 20),
(1, 'Resuelto', '2020-06-13', 3, 100, 80),
(6, 'Pendiente', '2020-06-27', 3, 19, null);

update solicitudesDeMateriales set fechaRecepcion='2020-02-07' where id=29;
update solicitudesDeMateriales set fechaRecepcion='2020-02-24' where id=30;
update solicitudesDeMateriales set fechaRecepcion='2020-05-25' where id=31;
update solicitudesDeMateriales set fechaRecepcion='2020-06-15' where id=32;
