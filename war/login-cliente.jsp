<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Iniciar Sesión</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" type="text/css" href="../css/jquery-ui-themes-1.11.2/themes/dot-luv/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../css/iniciarSesionUsuario.css">
	

	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-ui.js"></script>
	<meta name="description" content="Ofrece lo último en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:url" content="http://vlatecsoft-pw2episunsa.rhcloud.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://vlatecsoft-pw2episunsa.rhcloud.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo último en Hardware al alcance de tus manos."/>
	
</head>

<body>
	<center>
	
	<a href="index.jsp">
				<img src="images/logo.jpg" alt="Vlatecsoft" title="Vlatecsoft">
			</a>
	<div id="texto1">
	<h1><font color="white" face="arial">Hola!, para continuar primero Inicia Sesión</font></h1>
	</div>
	
	
	
	<div id="texto">
	<h1><font color="white" face="arial">ACCESO DE CLIENTES</font></h1>
	</div>

	<div id="form-main">
		<div id="form-div">
			<form class="form" action="loginControllerDistribuidor" method="post">
			<p class="name">
				<input type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" name="username" id="usuario" placeholder="Nombre de usuario" maxlength="12" required="required" autofocus="autofocus"/>
			</p>
			<p class="email">
				<input type="password" class="validate[required,custom[email]] feedback-input" name="password" id="clave" placeholder="Contraseña" maxlength="8" required="required"/>
			</p> 
			<input type="submit" value="Iniciar Sesión" id="button-blue"/>
			</form>
		</div>
	</div>
	
	<div id="texto2">
	<h1><font color="white" face="arial">¿No tienes una cuenta?</font></h1>
	</div>
<br>
	
			
		<a  id="button-blue1" href="registro-cliente.jsp">Regístrate Aquí Cliente</a>
			
	
	
	</center>
	
</body>
</html>