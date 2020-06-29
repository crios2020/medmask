-- Este archivo arma la estructura de la base
-- Ejecutar este archivo implica borrar toda la base existente

-- drop database if exists medmask;
-- create database medmask;
-- use medmask;

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
    provincia	varchar(25) 	default 'CABA',
    pais		varchar(25)		default 'Argentina',
    email 		varchar(60) 	not null,
    pass 		varchar(25) 	not null
);

alter table usuarios
	add constraint u_usuarios_email
    unique(email);
    
create table solicitantes(
	id 			int 			auto_increment primary key,
    idUsuario 	int 			not null,
    institucion	varchar(50)		not null
);

alter table solicitantes
	add constraint fk_solicitantes_idUsuario
    foreign key (idUsuario)
    references usuarios(id);

alter table solicitantes
	add constraint u_solicitantes_institucion
	unique(institucion);

-- No se usa esta restricción por que se considera que un solicitante puede pedir para varias instituciones.
-- alter table solicitantes
-- 	add constraint u_solicitantes_idUsuario
--  unique(idUsuario);

create table donantes(
	id 			int 			auto_increment primary key,
    idUsuario 	int 			not null
);

alter table donantes
	add constraint fk_donantes_idUsuario
    foreign key (idUsuario)
    references usuarios(id);

alter table donantes
	add constraint u_donantes_idUsuario
    unique(idUsuario);

create table armadores(
	id 			int 			auto_increment primary key,
    idUsuario 	int 			not null
);

alter table armadores
	add constraint fk_armadores_idUsuario
    foreign key (idUsuario)
    references usuarios(id);
    
alter table armadores
	add constraint u_armadores_idUsuario
    unique(idUsuario);

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
	id 					int 										auto_increment primary key,
	idSolicitante 		int 										not null,
	estado 				enum('Pendiente','Resuelto','Ejecucion') 	not null,
	fechaPublicacion 	date 										not null,
    fechaInicioArmado	date,							-- Fecha en que se inicio el armado de la máscara.
	fechaRecepcion 		date,							-- Fecha en que se entregan las máscaras
    cantidadMascaras	int											not null,
    idArmador			int,
    cantidadRecibida	int,							-- Este campo indica la cantidad de mascaras recibidas
	mensaje 			varchar(255)
);

alter table solicitudesDeMascaras
	add constraint fk_solicitudes_idSolicitanteMascara
    foreign key (idSolicitante)
    references solicitantes(id);

alter table solicitudesDeMascaras
	add constraint fk_solicitudes_idArmador
    foreign key (idArmador)
    references armadores(id);

create table solicitudesDeMateriales(
	id 					int 										auto_increment primary key,
	idSolicitante 		int 										not null,
	estado 				enum('Pendiente','Resuelto') 	not null,
	fechaPublicacion 	date 										not null,
    fechaRecepcion 		date,
    idMaterial			int 										not null,
    cantidad 			int											not null,
    cantidadRecibida	int,							-- Este campo indica la cantidad de unidades recibidas
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

