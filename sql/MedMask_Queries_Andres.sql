
-- =====================================================================
-- Aporte de consultas del compañero Andres
-- =====================================================================	
-- use medmask;
-- ////////////////////////// SECCION USUARIOS//////////////////////////////////////////////

-- Todas los usuarios--
SELECT * FROM usuarios;

-- Usuarios ordenados por localidad(ESPECIFICO)--
SELECT * FROM usuarios WHERE localidad='CABA' ;
SELECT * FROM usuarios WHERE localidad='Moron' ;
SELECT * FROM usuarios WHERE localidad='Avellaneda' ;
SELECT * FROM usuarios WHERE localidad='Belgrano' ;
SELECT * FROM usuarios WHERE localidad='Barrio Norte' ;
SELECT * FROM usuarios WHERE localidad='Haedo' ;
SELECT * FROM usuarios WHERE localidad='Almagro' ;

-- Usuarios ordenados por localidad(GENERAL)--
SELECT * FROM usuarios ORDER BY localidad ;

-- Cantidad de usuarios por localidad--
SELECT localidad, COUNT(*) AS Cantidad_de_Usuarios FROM usuarios GROUP BY localidad;
 
-- Usuarios ordenados por email --
SELECT * FROM usuarios ORDER BY email ;

-- Usuarios ordenados por email con servicio gmail --
SELECT * FROM usuarios WHERE email LIKE '%@gmail%';

-- Usuarios ordenados por email con servicio hotmail --
SELECT * FROM usuarios WHERE email LIKE '%@hotmail%';

-- Usuarios que sean donantes--
SELECT u.id, nombre, apellido, localidad, email FROM usuarios u, donantes d WHERE u.id=d.idUsuario; 

-- Usuarios que sean donantes por Localidad(especifica)--
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='Belgrano'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='CABA'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='Avellaneda'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='Moron'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='Almagro'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='Haedo'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE (u.id=d.idUsuario AND u.localidad='Barrio norte'); 

-- Usuarios que sean donantes ordenados por localidad(general)--
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, donantes d WHERE u.id=d.idUsuario ORDER BY u.localidad; 

-- Cantidad de usuarios que sean donantes por localidad--
 SELECT u.localidad, COUNT(*) AS Cantidad_de_Usuarios_Donantes FROM usuarios u, donantes d 
 WHERE u.id=d.idUsuario 
 GROUP BY localidad;

-- Usuarios que sean solicitantes--
SELECT u.id, nombre, apellido, localidad, email FROM usuarios u, solicitantes s WHERE u.id=s.idUsuario; 

-- Usuarios que sean solicitantes por localidad--
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='Belgrano'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='CABA'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='Avellaneda'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='Moron'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='Almagro'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='Haedo'); 
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE (u.id=s.idUsuario AND u.localidad='Barrio norte'); 

-- Usuarios que sean solicitantes ordenados por localidad--
SELECT u.id, nombre, apellido, u.localidad, email FROM usuarios u, solicitantes s WHERE u.id=s.idUsuario ORDER BY u.localidad; 

-- Usuarios solicitantes ordenados por localidad e Institucion--
SELECT u.id, nombre, apellido, u.localidad,s.institucion, email FROM usuarios u, solicitantes s WHERE u.id=s.idUsuario ORDER BY s.institucion; 
  
-- Cantidad de usuarios que sean solicitantes por localidad--
 SELECT u.localidad, COUNT(*) AS Cantidad_de_Usuarios_Solicitantes FROM usuarios u, solicitantes s 
 WHERE u.id=s.idUsuario 
 GROUP BY localidad;
 
-- Cantidad de Usuarios solicitantes ordenados por Institucion--
SELECT u.localidad,s.institucion, COUNT(*) AS Cantidad_de_Usuarios_Solicitantes FROM usuarios u, solicitantes s 
WHERE u.id=s.idUsuario 
ORDER BY  s.institucion; 

-- //////////////////////////FIN SECCION USUARIOS//////////////////////////////////////////////
  
    
-- ////////////////////////// SECCION DONACIONES//////////////////////////////////////////////

-- Todas las Donaciones--
SELECT * FROM donaciones;

-- Donaciones  disponibles--
SELECT * FROM donaciones WHERE estado='Disponible' ;

-- Donaciones  disponibles con mensajes--
SELECT * FROM donaciones WHERE (estado='Disponible' AND mensaje !='') ;

-- Donaciones  disponibles ordenadas por fechaPublicacion en orden ascendente --
SELECT * FROM donaciones ORDER BY fechaPublicacion ASC ;

-- Donaciones  disponibles ordenadas por fechaPublicacion en orden ascendente --
SELECT * FROM donaciones ORDER BY fechaPublicacion DESC ;

-- //////////////////////////FIN SECCION DONACIONES//////////////////////////////////////////////
	


-- //////////////////////////SECCION DISPONIBILIDAD DONACION GRAL/////////////////////////////////////////

-- Cantidad de materiales disponibles donados ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad from usuarios
u join donantes d on u.id=d.idUsuario join donaciones da 
on da.idDonante=d.id join materialesParaDonar md 
on md.idDonacion=da.id join materiales ma 
on md.idMaterial=ma.id 
where da.estado='Disponible'
ORDER BY localidad;

-- Cantidad de materiales disponibles mayores a 20(HAY STOCK) donados ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad from usuarios
u join donantes d on u.id=d.idUsuario join donaciones da 
on da.idDonante=d.id join materialesParaDonar md 
on md.idDonacion=da.id join materiales ma 
on md.idMaterial=ma.id 
where (md.cantidad>20 AND da.estado='Disponible')
ORDER BY localidad;

-- Cantidad de materiales disponibles menores a 10(FALTA STOCK) donados ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad from usuarios
u join donantes d on u.id=d.idUsuario join donaciones da 
on da.idDonante=d.id join materialesParaDonar md 
on md.idDonacion=da.id join materiales ma 
on md.idMaterial=ma.id 
where (md.cantidad<10 AND da.estado='Disponible')
ORDER BY localidad;

--  Cantidad de Placas de Acetato disponibles ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where (ma.nombre='Placas de acetato' AND da.estado='Disponible')
    ORDER BY localidad;
    
--  Cantidad de Radiografías viejas disponibles ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where (ma.nombre='Radiografías viejas' AND da.estado='Disponible')
    ORDER BY localidad;
    
--  Cantidad de Bolsas Reciclables ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where (ma.nombre='Bolsas reciclables' AND da.estado='Disponible')
    ORDER BY localidad;
    
--  Cantidad de Precintos disponibles ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where (ma.nombre='Precintos' AND da.estado='Disponible')
    ORDER BY localidad;
    
--  Cantidad de Bandas elásticas  disponibles ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where (ma.nombre='Bandas elásticas' AND da.estado='Disponible')
    ORDER BY localidad;
  
--  Cantidad de Zunchos plásticos  disponibles ordenados por localidad--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email,localidad
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where (ma.nombre='Zunchos plásticos ' AND da.estado='Disponible')
    ORDER BY localidad;



-- //////////////////////////FIN SECCION DISPONIBILIDAD DONACION GRAL/////////////////////////////////////////

-- //////////////////////////SECCION DISPONIBILIDAD DONACION POR SECTORES//////////////////////////////////////////////

-- ///////////////////////BELGRANO///////////////////////////////////////////////////////////////
--  Que materiales hay disponibles para donar en Belgrano?
-- La query devuelve id material, nombre material, cantidad del material, el nombre del donante y el email del donante

select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND (md.cantidad<5 AND da.estado='Disponible');
    
    
--  Placas de Acetato disponibles
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Placas de acetato' AND da.estado='Disponible');
    
--  Cantidad de Placas de Acetato disponibles menor a 5(FALTA STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Placas de acetato' AND da.estado='Disponible' AND md.cantidad<5 );
    
--  Bolsas reciclables disponibles
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Bolsas reciclables' AND da.estado='Disponible');
    
-- Cantidad de Bolsas reciclables disponibles menor a 5(FALTA STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Bolsas reciclables' AND da.estado='Disponible' AND md.cantidad<5 );

--  Radiografias viejas disponibles
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Radiografías viejas' AND da.estado='Disponible');
    
--  Cantidad de Radiografias Viejas disponibles menor a 5(FALTA STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Radiografías Viejas' AND da.estado='Disponible' AND md.cantidad<5 );
    
    
    
--  Bandas elásticas disponibles
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Bandas elásticas' AND da.estado='Disponible');
    
-- Cantidad de Bandas elásticas disponibles menor a 5(FALTA STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Belgrano' AND  (ma.nombre='Bandas elásticas' AND da.estado='Disponible' AND md.cantidad<5 );
    
    
-- ///////////////////////MORON///////////////////////////////////////////////////////////////

-- Materiales Disponibles en Moron--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Moron' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Moron' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Moron' AND (md.cantidad<5 AND da.estado='Disponible');
    
-- //////////////////////BARRIO NORTE///////////////////////////////////////////////////////////////

-- Materiales Disponibles en Barrio Norte--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Barrio norte' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Barrio norte' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Barrio norte' AND (md.cantidad<5 AND da.estado='Disponible');
    
-- //////////////////////CABA///////////////////////////////////////////////////////////////

-- Materiales Disponibles en Barrio Norte--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='CABA' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='CABA' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='CABA' AND (md.cantidad<5 AND da.estado='Disponible');
    
-- //////////////////////AVELLANEDA///////////////////////////////////////////////////////////////

-- Materiales Disponibles en Barrio Norte--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Avellaneda' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Avellaneda' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Avellaneda' AND (md.cantidad<5 AND da.estado='Disponible');
    
    
-- //////////////////////Almagro///////////////////////////////////////////////////////////////

-- Materiales Disponibles en Barrio Norte--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Almagro' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Almagro' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Almagro' AND (md.cantidad<5 AND da.estado='Disponible');
    
    
 -- //////////////////////HAEDO///////////////////////////////////////////////////////////////

-- Materiales Disponibles en Barrio Norte--
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Haedo' and da.estado='Disponible';
    
-- Cantidad de Materiales disponibles mayores a 20(HAY STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Haedo' AND (md.cantidad>20 AND da.estado='Disponible');
    
-- Cantidad de Materiales disponibles menores a 5(Falta STOCK)
select ma.id,ma.nombre,md.cantidad, concat(u.nombre,' ',u.apellido) donante, u.email
	from usuarios u join donantes d on u.id=d.idUsuario
    join donaciones da on da.idDonante=d.id
    join materialesParaDonar md on md.idDonacion=da.id
    join materiales ma on md.idMaterial=ma.id
    where localidad='Haedo' AND (md.cantidad<5 AND da.estado='Disponible');


    
-- //////////////////////////FIN SECCION DISPONIBILIDAD DONACION POR SECTORES//////////////////////////////////////////////
    