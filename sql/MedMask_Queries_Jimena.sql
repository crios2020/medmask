
-- =====================================================================
-- Aporte de consultas del compañero Maria Jimena
-- =====================================================================	
-- use medmask;

-- Email de donantes de material Placas de acetato en la localidad
-- Belgrano cuya donacion se encuentre disponible.

Select u.email
from usuarios u join donantes d on u.id=d.idUsuario
join donaciones do on d.id=do.idDonante
join materialesParaDonar md on do.id=md.idDonacion
join materiales m on md.idMaterial=m.id
where u.localidad='Belgrano'
and m.nombre='Placas de acetato'
and do.estado='Disponible';

-- Cuales instituciones tienen solicitudes de mascaras pedientes y
-- desde que fecha.
Select s.institucion,sdm.fechaPublicacion
from solicitantes s join solicitudesDeMascaras sdm on s.id=sdm.idSolicitante
where sdm.estado='Pendiente';

-- Que cantidad de mascaras se solicitaron y que cantidad se
-- entregaron a la fecha de hoy.
Select sum(cantidadMascaras) 'Cantidad solicitada',sum(cantidadRecibida) 'Cantidad entregada'
from solicitudesDeMascaras;

--  Cantidad de mascaras solicitadas por institucion
Select s.id, s.institucion,sum(sdm.cantidadMascaras) 'Cantidad solicitada'
from solicitantes s join solicitudesDeMascaras sdm on
s.id=sdm.idSolicitante
group by s.id;

-- Materiales para los cuales no haya donaciones disponibles.
Select m.nombre
from materiales m join materialesParaDonar mpd on
m.id=mpd.idMaterial
where mpd.cantidad=0;

-- Cantidad de solicitudes resueltas por armador
Select a.id,u.nombre,u.apellido,u.email,count(sd.id) 'cantidad de solicitudes resueltas'
from usuarios u join armadores a on u.id=a.idUsuario
join solicitudesDeMascaras sd on a.id=sd.idArmador
where sd.estado='Resuelto'
group by a.id;
