<!DOCTYPE html>
<html lang=es>
<head><title>test API medMask</title></head>
<body>
	<?php 
		//Colocar aca la url del proyecto
		//$url="https://diycovid19mask.com/medMaskCore/";
		$url="http://localhost/medMaskCore/";
	?>
	
	<hr>
	<h1>test API medMask</h1>
	
	<hr>
	<h2>Geografia</h2>
	<hr>
	
	<ul>
		<li><a href="<?php echo $url; ?>geografia/provinciasArgentinas/v1">Provincias Argentinas</a></li>
		<li><a href="<?php echo $url; ?>geografia/partidosBuenosAires/v1">Partidos Buenos Aires</a></li>
		<li><a href="<?php echo $url; ?>geografia/barriosCABA/v1">Barrios CABA</a></li>
	</ul>
	
	<hr>
	<h2>Materiales</h2>
	<hr>
	
	<ul>
		<li><a href="<?php echo $url; ?>entidades/materiales/v1/all">all</a></li>
		<li>
			<form action="<?php echo $url; ?>entidades/materiales/v1/byId">
				byId:<input type=text name=id />
			</form>
		</li>
	</ul>
	
	<hr>
	<h2>Usuarios</h2>
	<hr>
	
	<ul>
		<li><a href="<?php echo $url; ?>entidades/usuarios/v1/all">all</a></li>
		<li>
			<form action="<?php echo $url; ?>entidades/usuarios/v1/byId">
				byId:<input type=text name=id />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/usuarios/v1/byEmail">
				byEmail:<input type=text name=email />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/usuarios/v1/byLocalidad">
				byLocalidad:<input type=text name=localidad />
			</form>
		</li>
		<li>
			<form method=POST action="<?php echo $url; ?>entidades/usuarios/v1/alta/">
				Alta de Usuario:<br>
				Nombre:<input type=text name=nombre />
				Apellido:<input type=text name=apellido />
				Localidad<input type=text name=localidad />
				Provincia:<input type=text name=provincia />
				Pais:<input type=text name=pais />
				Email:<input type=text name=email />
				Password:<input type=text name=pass />
				<input type=submit value=Alta />
			</form>
		</li>
		<li>
			<form method=POST action="<?php echo $url; ?>entidades/usuarios/v1/session/">
				Sessión de Usuario:<br>
				Email:<input type=text name=email />
				Password:<input type=text name=pass />
				<input type=submit value=Alta />
			</form>
		</li>
	</ul>
	
	<hr>
	<h2>Armadores</h2>
	<hr>
	
	<ul>
		<li><a href="<?php echo $url; ?>entidades/armadores/v1/all">all</a></li>
		<li>
			<form action="<?php echo $url; ?>entidades/armadores/v1/byId">
				byId:<input type=text name=id />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/armadores/v1/byEmail">
				byEmail:<input type=text name=email />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/armadores/v1/byLocalidad">
				byLocalidad:<input type=text name=localidad />
			</form>
		</li>
		<li>
			<form method=POST action="<?php echo $url; ?>entidades/armadores/v1/alta/">
				Alta de Armador:<br>
				idUsuario:<input type=text name=idUsuario />
				<input type=submit value=Alta />
			</form>
		</li>
	</ul>
	
	<hr>
	<h2>Donantes</h2>
	<hr>
	
	<ul>
		<li><a href="<?php echo $url; ?>entidades/donantes/v1/all">all</a></li>
		<li>
			<form action="<?php echo $url; ?>entidades/donantes/v1/byId">
				byId:<input type=text name=id />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/donantes/v1/byEmail">
				byEmail:<input type=text name=email />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/donantes/v1/byLocalidad">
				byLocalidad:<input type=text name=localidad />
			</form>
		</li>
		<li>
			<form method=POST action="<?php echo $url; ?>entidades/donantes/v1/alta/">
				Alta de Donante:<br>
				idUsuario:<input type=text name=idUsuario />
				<input type=submit value=Alta />
			</form>
		</li>
	</ul>
		
	<hr>
	<h2>Solicitantes</h2>
	<hr>
	
	<ul>
		<li><a href="<?php echo $url; ?>entidades/solicitantes/v1/all">all</a></li>
		<li>
			<form action="<?php echo $url; ?>entidades/solicitantes/v1/byId">
				byId:<input type=text name=id />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/solicitantes/v1/byEmail">
				byEmail:<input type=text name=email />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/solicitantes/v1/byLocalidad">
				byLocalidad:<input type=text name=localidad />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/solicitantes/v1/byInstitucion">
				byInstitucion:<input type=text name=institucion />
			</form>
		</li>
		<li>
			<form action="<?php echo $url; ?>entidades/solicitantes/v1/likeInstitucion">
				likeInstitucion:<input type=text name=institucion />
			</form>
		</li>
		<li>
			<form method=POST action="<?php echo $url; ?>entidades/solicitantes/v1/alta/">
				Alta de Solicitante:<br>
				idUsuario:<input type=text name=idUsuario />
				institucion:<input type=text name=institucion />
				<input type=submit value=Alta />
			</form>
		</li>
	</ul>
</body>
</html>
