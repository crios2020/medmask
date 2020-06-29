
-- =====================================================================
-- Aporte de consultas de la compañera Waleska
-- =====================================================================
-- use medmask;

-- 1- Qué solicitudes de máscaras hay pendientes en Belgrano.

select s.idUsuario, s.institucion, concat(u.nombre,' ',u.apellido) solicitante, u.localidad, smc.fechaPublicacion, smc.cantidadMascaras, smc.mensaje
        from usuarios u join solicitantes s on u.id=s.idUsuario
            join solicitudesDeMascaras smc on smc.idSolicitante = s.id
			where estado='Pendiente' and localidad='Belgrano';

-- 2. Quienes están solicitando Placas de acetato en CABA y qué cantidad
 select smt.idSolicitante, concat(u.nombre,' ',u.apellido) armador, u.email, u.localidad, m.nombre, m.descripcion, smt.cantidad, smt.mensaje
        from solicitudesDeMateriales smt
             join armadores a on smt.idSolicitante=a.id
			 join usuarios u on u.id=a.idUsuario
			 join materiales m on smt.idMaterial = m.id
             where estado = 'Pendiente' and localidad = 'CABA' and m.nombre like '%placas de acetato%';

-- 3. Donaciones disponibles por localidad
select u.localidad, concat(u.nombre,' ',u.apellido) donante, dd.fechaPublicacion, m.nombre, m.descripcion, md.cantidad, dd.mensaje
        from donaciones dd
             join donantes d on dd.idDonante=d.id
			 join usuarios u on u.id=d.idUsuario
             join materialesParaDonar md on md.IdDonacion = dd.id
			 join materiales m on md.idMaterial = m.id
		where estado = 'Disponible'
        order by localidad;
 
 -- 4. solicitudes de máscaras pendientes por localidad
	select u.localidad, s.institucion, concat(u.nombre,' ',u.apellido) solicitante, smc.fechaPublicacion, smc.mensaje
        from usuarios u join solicitantes s on u.id=s.idUsuario
            join solicitudesDeMascaras smc on smc.idSolicitante = s.id
            where estado = 'Pendiente'
            order by localidad;
            
-- 5. Qué materiales está solicitando 'Ana Mendoza'		
select concat(u.nombre,' ', u.apellido) armador, smt.estado, smt.fechaPublicacion, m.nombre, m.descripcion, smt.cantidad, smt.mensaje
        from solicitudesDeMateriales smt
             join armadores a on smt.idSolicitante=a.id
			 join usuarios u on u.id=a.idUsuario
			 join materiales m on smt.idMaterial = m.id
	    where estado='Pendiente' and u.nombre='Ana' and apellido='Mendoza';


-- 6. Cuántas máscaras ha recibido el hospital municipal? 
select s.institucion, u.localidad, sum(smc.cantidadRecibida) 'cantidad de máscaras recibidas'
        from usuarios u join solicitantes s on u.id=s.idUsuario
            join solicitudesDeMascaras smc on smc.idSolicitante = s.id
            where institucion = 'hospital municipal'
			group by institucion, localidad;
