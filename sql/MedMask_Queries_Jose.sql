
-- =====================================================================
-- Aporte de consultas del compañero Jose Javier
-- =====================================================================	

-- Este archivo tiene consultas para testear la base, se puede ejecutar en cualquier momento.

-- Redactar acá con palabras comunes que consultas harían a la base, yo después las resuelvo Ej:

-- 1- Que materiales hay disponibles para donar en Belgrano?

select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' and da.estado='Disponible';

-- 2- ¿Cuántas donaciones se han realizado en los últimos tres meses?

select count(*) from
(select month(fechaDonacion) as fecha
from donaciones
group by fechaDonacion
having fecha between month(curdate() - interval 3 month) and month(curdate())) as numero_donaciones;

-- 3- ¿Cuál es el material más escaso?
   -- Para responder esta pregunta vamos a crear dos vistas (materiales_pedidos y materiales_ofrecidos), vamos a pedir la máxima y la mínima cantidad
   -- respectivamente y el resultado, para ser acertado, debe ser congruente.

/*
Por ahora no disponemos del objeto vista en el servidor, por eso lo puse en un comentario

create view materiales_pedidos as
select sum(cantidad) as cantidad_solicitada, nombre from (
select m.nombre, s.cantidad, s.idMaterial, s.estado 
from solicitudesDeMateriales s
join materiales m on m.id=s.idMaterial
having s.estado='Pendiente'
) as cantidad_m
group by idMaterial, nombre;

select max(cantidad_solicitada), nombre as material_mas_pedido
from materiales_pedidos;

create view materiales_ofrecidos as
select sum(cantidad) as cantidad_ofrecida, nombre from (
select m.nombre, md.cantidad, md.idMaterial
from materialesParaDonar md
join materiales m on m.id=md.idMaterial)
as cantidad_d
group by idMaterial, nombre;

select min(cantidad_ofrecida), nombre as material_menos_ofrecido
from materiales_ofrecidos;

select max(mp.cantidad_solicitada), mp.nombre as material_mas_pedido, min(mo.cantidad_ofrecida), mo.nombre
from materiales_pedidos mp
join materiales_ofrecidos mo;
*/
-- 4- De los usuarios registrados, ¿quiénes son armadores? ¿quiénes solicitantes? y ¿quiénes donantes?  

select concat(u.nombre,' ',u.apellido) as nombre, a.id as armador, s.id as solicitante, d.id as donantes
from usuarios u
left outer join armadores a on a.idUsuario=u.id
left outer join solicitantes s on s.idUsuario=u.id
left outer join donantes d on d.idUsuario=u.id
order by nombre;


-- 5- Mostrar relación de localidades con número de solicitantes

select u.localidad, count(u.id) as usuarios
from usuarios u
join solicitantes s on s.idUsuario=u.id
group by localidad;

-- 6- Mostrar las solicitudes resueltas, organizarlas por mes y mostrar las cantidades de máscaras entregadas en cada ocasión

select id, monthname(fechaRecepcion) as mes, cantidadRecibida
from solicitudesDeMascaras
where estado='Resuelto'
order by mes;

