-- Este archivo inserta registros de prueba de la base
-- No ejecutar cuando la base esta en producción

use medmask;

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

