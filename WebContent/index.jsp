<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>INGRESO A TITULATEC</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/Global.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<header>
	<img src="imagenes/logoITESZ.png"/>
	<br/>
</header>
	<div class="container">
	<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title">Incio de Sesion</div>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon">Usuario:</span> 
						<input id="username" type="text" class="form-control" name="username" value="" placeholder="username" required="required">
					</div>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon">Password:</span> 
						<input id="password" type="password" class="form-control" name="password" placeholder="password" required="required">
					</div>
						<input type="submit" value="Enviar" class="btn btn-info" />
						<input type="button" value="Registrar usuario" class="btn btn-info" onclick="reenviar('Usuarios?op=n');"/>
						<a href="jsp/comunes/principal.jsp">Principal</a>
				</form>
			</div>
		</div>
	</div>
	</div>
<footer><hr><img src="imagenes/logoACC.png" class="footer"><br/>
<address>Sitio desarrollado por alumnos de la Academia de Ciencias de la Computaci&oacute;n &copy; 2018</address></footer>
</body>
</html>