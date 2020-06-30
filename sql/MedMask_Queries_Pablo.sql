
-- =====================================================================
-- Aporte de consultas del compañero Pablo
-- =====================================================================	
-- use medmask;

/* lista los armadores*/
select * from usuarios  where id in (select idUsuario from armadores);

/* cuenta las solicitudes de la Localidad de Belgrano */
select count(id)  from solicitudesDeMateriales where id in (select id from usuarios where localidad = 'Belgrano');

/* lista las solicitudes en Ejecucion con tiempos  y totales */
select  u.apellido, u.nombre, 
		datediff(m.fechaPublicacion,now())  Publicacion, datediff(m.fechaInicioArmado, now())  Armado,  datediff(m.fechaRecepcion, now())  Recepcion, m.cantidadMascaras
from solicitudesDeMascaras m, usuarios u , solicitantes s 
where  s.id = u.id and s.id = m.idSolicitante and estado = 'Ejecucion'
Union 
select 'Pedidos',count(*),'', '', 'Mascaras', sum(cantidadMascaras) from solicitudesDeMascaras where estado = 'Ejecucion' ;

/* Cantidades por Estado en varios registros */
select estado, count(estado) cantidad
from     solicitudesDeMascaras
group by estado;

-- solicitudes pendientes
select apellido, nombre, estado, sum(cantidadMascaras) 
from solicitudesDeMascaras m, usuarios u 
where m.id = u.id and estado = 'Pendiente'
group by m.id
