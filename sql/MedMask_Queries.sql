-- Este archivo tiene consultas para testear la base, se puede ejecutar en cualquier momento.

-- Redactar acá con palabras comunes que consultas harían a la base, yo después las resuelvo Ej:

-- 1- Que materiales hay disponibles para donar en Belgrano?
use medmask;

select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' and da.estado='Disponible';
	
