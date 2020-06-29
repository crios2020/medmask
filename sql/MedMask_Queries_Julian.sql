-- =====================================================================
-- Aporte de consultas del compañero Julian Noya
-- =====================================================================	
-- use medmask;

-- 1)ordenar en prioridad segun la fecha del pedido la institucion y la cantidad de mascaras que necesita
select s.institucion Institucion, 
	   sdm.cantidadMascaras Cantidad, sdm.fechaPublicacion Publicacion, sdm.estado EstadoDelPedido
 from usuarios u join solicitantes s on u.id=s.idUsuario join solicitudesDeMascaras sdm on
		s.id=sdm.idSolicitante order by date(sdm.fechaPublicacion);
  
  
-- 2) ordenar segun fecha de publicacion que cantidad y que materiales necesita el armador

select concat(u.nombre,u.apellido) NombreArmador,
	   smat.fechaPublicacion Publicacion, smat.estado EstadoPedido,
       mat.nombre Material, smat.cantidad Cantidad
	from usuarios u join armadores arm on u.id=arm.idUsuario 
						 join solicitudesDeMateriales smat on u.id=smat.idSolicitante
						 join materiales mat on mat.id=smat.idMaterial
                         order by smat.fechaPublicacion;
                         

-- 3) materiales disponibles para donar 
select mat.nombre Material, mpd.cantidad Cantidad, dcs.estado EstadoDonacion,
	   dcs.fechaDonacion
from usuarios u join donantes d on u.id=d.idUsuario
						 join donaciones dcs on d.id=dcs.idDonante
                         join materialesParaDonar mpd on dcs.id=mpd.idDonacion
                         join materiales mat on mat.id=mpd.idMaterial 
                         where dcs.estado like '%Disponible%';
                         
-- 4) cantidad de armadores/solicitantes/donantes
select count(*) CantidadDeArmadores from usuarios u join armadores arm on u.id=arm.idUsuario;
select count(*) CantidadSolicitantes from usuarios u join solicitantes s on u.id=s.idUsuario;
select count(*) CantidadDonantes from usuarios u join donantes d on u.id=d.idUsuario;
