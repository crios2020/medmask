-- Este archivo arma la estructura de la base
-- Ejecutar este archivo implica borrar toda la base existente

drop database if exists medmask;
create database medmask;
use medmask;

drop table if exists solicitudesDeMascaras;
drop table if exists solicitantes;
drop table if exists solicitudesDeMateriales;
drop table if exists armadores;
drop table if exists materialesParaDonar;
drop table if exists materiales;
drop table if exists donaciones;
drop table if exists donantes;
drop table if exists usuarios;

create table usuarios(
	id 			int 			auto_increment primary key,
    nombre 		varchar(25) 	not null,
    apellido 	varchar(25) 	not null,
    localidad 	varchar(25) 	not null,
    email 		varchar(60) 	not null,
    pass 		varchar(25) 	not null
);

create table solicitantes(
	id 			int 			auto_increment primary key,
    idUsuario 	int 			not null,
    institucion	varchar(50)		not null
);

alter table solicitantes
	add constraint fk_solicitantes_idUsuario
    foreign key (idUsuario)
    references usuarios(id);

create table donantes(
	id 			int 			auto_increment primary key,
    idUsuario 	int 			not null
);

alter table donantes
	add constraint fk_donantes_idUsuario
    foreign key (idUsuario)
    references usuarios(id);

create table armadores(
	id 			int 			auto_increment primary key,
    idUsuario 	int 			not null
);

alter table armadores
	add constraint fk_armadores_idUsuario
    foreign key (idUsuario)
    references usuarios(id);
 
create table materiales(
	id 			int 			auto_increment primary key,
    nombre 		varchar(25) 	not null,
    descripcion varchar(50)
);

create table donaciones(
	id 					int 							auto_increment primary key,
    idDonante 			int 							not null,
    estado 				enum('Disponible','Donado') 	not null,
    fechaPublicacion 	date 							not null,
    fechaDonacion 		date,
    mensaje 			varchar(255)
);

alter table donaciones
	add constraint fk_donaciones_idDonante
    foreign key(idDonante)
    references donantes(id);

create table materialesParaDonar(
	id 					int 			auto_increment primary key,
    idDonacion 			int 			not null,
    idMaterial 			int 			not null,
    cantidad 			int 			not null
);

alter table materialesParaDonar
	add constraint fk_donar_idDonacion
    foreign key (idDonacion)
    references donaciones(id);

alter table materialesParaDonar
	add constraint fk_donar_idMaterial
    foreign key (idMaterial)
    references materiales(id);

create table solicitudesDeMascaras(
	id 					int 							auto_increment primary key,
	idSolicitante 		int 							not null,
	estado 				enum('Pendiente','Resuelto') 	not null,
	fechaPublicacion 	date 							not null,
	fechaRecepcion 		date,
    cantidadMascaras	int								not null,
	mensaje 			varchar(255)
);

alter table solicitudesDeMascaras
	add constraint fk_solicitudes_idSolicitanteMascara
    foreign key (idSolicitante)
    references solicitantes(id);

create table solicitudesDeMateriales(
	id 					int 							auto_increment primary key,
	idSolicitante 		int 							not null,
	estado 				enum('Pendiente','Resuelto') 	not null,
	fechaPublicacion 	date 							not null,
	fechaRecepcion 		date,
    idMaterial			int 							not null,
    cantidad 			int								not null,
	mensaje 			varchar(255)
);

alter table solicitudesDeMateriales
	add constraint fk_solicitudes_idSolicitanteMaterial
    foreign key (idSolicitante)
    references armadores(id);
    
alter table solicitudesDeMateriales
	add constraint fk_solicitudes_idMaterial
    foreign key (idMaterial)
    references materiales(id);

