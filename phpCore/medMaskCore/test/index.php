<!DOCTYPE html>
<html lang=es>
<head><title>test API medMask</title></head>
<body>
	<?php 
		$url="http://localhost/medMaskCore/"
	?>
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
				Nombre:<input type=text name=nombre /><br>
				Apellido:<input type=text name=apellido /><br>
				Localidad<input type=text name=localidad /><br>
				Provincia:<input type=text name=provincia /><br>
				Pais:<input type=text name=pais /><br>
				Email:<input type=text name=email /><br>
				Password:<input type=text name=pass /><br>
				<input type=submit value=Alta />
			</form>
		</li>
		<li>
			<form method=POST action="<?php echo $url; ?>entidades/usuarios/v1/session/">
				Sessión de Usuario:<br>
				Email:<input type=text name=email /><br>
				Password:<input type=text name=pass /><br>
				<input type=submit value=Alta />
			</form>
		</li>
	</ul>
	<hr>
</body>
</html>
