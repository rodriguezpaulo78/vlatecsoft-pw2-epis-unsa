
		<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Distribuidores</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-ui.js"></script>
	<meta name="description" content="Ofrece lo último en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:url" content="http://1-dot-vlatecsoft.appspot.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://1-dot-vlatecsoft.appspot.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo último en Hardware al alcance de tus manos."/>
</head>

<body>
<header>

	<div class="container">
		<div class="logo">
			<a href="admin.jsp">
				<img src="images/logo.jpg" alt="Vlatecsoft" title="Vlatecsoft">
			</a>
		</div>
		<nav>
			<ul>
				<li>
					<a href="#">Clientes</a>
					<ul class="children">
						<li><a href="#">Lista de Clientes</a></li>
						<li><a href="#">Eliminar a un Cliente</a></li>
					</ul>
				</li>
				
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="consulta-distribuidores.jsp">Lista de Distribuidores</a></li>
						<li><a href="eliminar-distribuidor.jsp">Eliminar a un Distribuidor</a></li>
					</ul>
				</li>
				
				
				<li>
					<a href="#">Mensajes</a>
					<ul class="children">
						<li><a href="#">Lista de Mensajes</a></li>
						<li><a href="#">Actualización de Mensajes</a></li>
						<li><a href="#">Eliminación de Mensajes</a></li>
					</ul>
				</li>
				<li><a href="login-admin.jsp">Cerrar Sesión</a></li>
			</ul>
		</nav>
		<div class="nav-mobil">
			<i class="icon-cancel"></i>
			<ul>
				<li>
					<a href="#">Clientes</a>
					<ul class="children">
						<li><a href="#">Lista de Clientes</a></li>
						<li><a href="#">Eliminar a un Cliente</a></li>
					</ul>
				</li>
				
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="consulta-distribuidores.jsp">Lista de Distribuidores</a></li>
						<li><a href="eliminar-distribuidor.jsp">Eliminar a un Distribuidor</a></li>
					</ul>
				</li>
				
				
				<li>
					<a href="#">Mensajes</a>
					<ul class="children">
						<li><a href="#">Lista de Mensajes</a></li>
						<li><a href="#">Actualización de Mensajes</a></li>
						<li><a href="#">Eliminación de Mensajes</a></li>
					</ul>
				</li>
				
				<li><a href="login-admin.jsp">Cerrar Sesión</a></li>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>



<section class="wrapper">
<div id="headForm"><!--Cabecera del formulario -->
	</div>

	<div id="div_registro" class="containerdelprod"><!--formulario  inicio-->
	<span class="titlereg">Eliminación de Distribuidores</span>     
	
	<div id="areaForm">	<!--Area del formulario  Inicio-->	
	        
	<form class="" id="frm_registro" name="frm_registro" method="GET" action="removeDistribuidor" novalidate>	
	       
	<!--	************ Personal Natural o Empresa *******************************	-->
	
	<span class="titSeccion">Ingrese el codigo del distribuidor</span> 
	
	<select name="opcion">
			<option value="d">Dni</option>
			<option value="a">Eliminar Todo</option>
		</select>	
		<input type="text" name="busqueda">
		<input type="submit" value="Consultar">
	<div class="clean"></div>
	</form>
	</div> <!--Area del formulario  Fin-->  
	
	</section>



<footer>
	<div class="container">
		<div class="box1 four1">
			<ul>
				<ul class="redes">
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
				<li>&copy; VlatecSoft</li>
				<li>Todos los derechos reservados</li>
			</ul>
		</div>
	</div>
	
	<div class="box-mobile">
		<div class="container">
			<ul>
				<ul class="redes">
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
				<li>&copy; VlatecSoft</li>
				<li>Todos los derechos reservados</li>
			</ul>
		</div>
	</div>
</footer>
</body>
</html>


