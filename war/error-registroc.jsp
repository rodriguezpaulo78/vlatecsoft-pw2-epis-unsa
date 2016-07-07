<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Registro Cliente</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery-1.6.2.js" type="text/javascript"></script>
	<script src="js/jquery.validate.js" type="text/javascript"></script>
	<script src="js/messages_es.js" type="text/javascript"></script>
	<link type="text/css" href="css/jquery-ui-1.7.2.custom.css" rel="Stylesheet" />
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.6.min.js"></script>
    <script type="text/javascript" src="js/jquery.ui.datepicker-es.js"></script>
    
	<meta name="description" content="Ofrece lo último en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:url" content="http://1-dot-vlatecsoft.appspot.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://1-dot-vlatecsoft.appspot.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo último en Hardware al alcance de tus manos."/>
	<script>
	$(function() {
		$('#fecha').datepicker({dateFormat: 'yy-mm-dd', changeMonth: true, changeYear: true, yearRange: '-100:+0'});
	});
	</script>
	<script>
	function validarPasswd() {
	var p1 = document.getElementById("pass").value;
	var p2 = document.getElementById("cpass").value;
	var espacios = false;
	var cont = 0;
	 
	while (!espacios && (cont < p1.length)) {
	  if (p1.charAt(cont) == " ")
	    espacios = true;
	  cont++;
	}
	 
	if (espacios) {
	  alert ("La contraseña no puede contener espacios en blanco");
	  return false;
	}
	
	if (p1.length == 0 || p2.length == 0) {
		  alert("Los campos de la contraseña no pueden quedar vacios!");
		  return false;
		}
	
	if (p1 != p2) {
		  alert("Las contraseñas deben de coincidir!");
		  return false;
		} else {
		  return true; 
		}
	}
	</script>
</head>

<body>
<header>
	<div id="lightbox" class="shadow">
	<div class="mensaje">
		<span><i class="icon-cancel"></i></span>
		<iframe src="https://docs.google.com/forms/d/1Daw6PCY74PJfzSjc0496DdNLiSaJHakLAjaMC71Y5eo/viewform?embedded=true" width="600" height="400" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
	</div>
	</div>

	<div class="container">
		<div class="logo">
			<a href="index.jsp">
				<img src="images/logo.jpg" alt="Vlatecsoft" title="Vlatecsoft">
			</a>
		</div>
		<nav>
			<ul>
				<li>
					<a href="nosotros.jsp">Nosotros</a>
					<ul class="children">
						<li><a href="nosotros.jsp">¿Quiénes somos?</a></li>
						<li><a href="galeria.jsp">Galería</a></li>
						<li><a href="javascript:void(0);" id="opener" class="boton">Escríbenos</a></li>
					</ul>
				</li>
				
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="productos-tipo.jsp">Productos según Tipo</a></li>
						<li><a href="productos-marca.jsp">Productos según Marca</a></li>
						<li><a href="productos-precio.jsp">Productos según Precio</a></li>
					</ul>
				</li>
				
				<li><a href="compras.jsp">Compras en Línea</a></li>
				
				<li>
					<a href="servicio-pfc.jsp">Servicio Técnico</a>
					<ul class="children">
						<li><a href="servicio-pfc.jsp">Preguntas Frecuentes del Cliente</a></li>
						<li><a href="servicio-pfd.jsp">Preguntas Frecuentes de Nuestros Distribuidores</a></li>
						<li><a href="servicio-hla.jsp">Horarios y Lugares de Atención</a></li>
						<li><a href="servicio-tdg.jsp">Tipos de Garantía</a></li>
						<li><a href="archivos/nocas.pdf">Atención de otras marcas</a></li>
					</ul>
				</li>
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="registro-distribuidor.jsp">Registro</a></li>
						<li><a href="login-distribuidor.jsp">Extranet-Actualización de Datos</a></li>
						<li><a href="archivos/terminos.pdf">Términos</a></li>
					</ul>
				</li>
				<li><a href="contacto.jsp">Contáctanos</a></li>
				<li><a href="login-cliente.jsp">Iniciar Sesión</a></li>
			</ul>
		</nav>
		<div class="nav-mobil">
			<i class="icon-cancel"></i>
			<ul>
				<li>
					<a href="nosotros.jsp">Nosotros</a>
					<ul class="children">
						<li><a href="nosotros.jsp">¿Quiénes somos?</a></li>
						<li><a href="galeria.jsp">Galería</a></li>
						<li class="boton"><a  href="javascript:void(0);" id="opener" class="boton">Escríbenos</a></li>
					</ul>
				</li>
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="productos-tipo.jsp">Productos según Tipo</a></li>
						<li><a href="productos-marca.jsp">Productos según Marca</a></li>
						<li><a href="productos-precio.jsp">Productos según Precio</a></li>
					</ul>
				</li>
				<li><a href="compras.jsp">Compras en Línea</a></li>
				<li>
					<a href="servicio-pfc.jsp">Servicio Técnico</a>
					<ul class="children">
						<li><a href="servicio-pfc.jsp">Preguntas Frecuentes del Cliente</a></li>
						<li><a href="servicio-pfd.jsp">Preguntas Frecuentes de Nuestros Distribuidores</a></li>
						<li><a href="servicio-hla.jsp">Horarios y Lugares de Atención</a></li>
						<li><a href="servicio-tdg.jsp">Tipos de Garantía</a></li>
						<li><a href="archivos/nocas.pdf">Atención de otras marcas</a></li>
					</ul>
				</li>
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="registro-distribuidor.jsp">Registro</a></li>
						<li><a href="login-distribuidor.jsp">Extranet-Actualización de Datos</a></li>
						<li><a href="archivos/terminos.pdf">Términos</a></li>
					</ul>
					</ul>
				</li>
				
				<li><a href="contacto.jsp">Contáctanos</a></li>
				<li><a href="login-cliente.jsp">Iniciar Sesión</a></li>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>


<section class="wrapper">
	
	<div id="headForm"><!--Cabecera del formulario -->
	</div>

	<div id="div_registro" class="containerclient"><!--formulario  inicio-->
	<span class="titlereg"> Inscripci&oacute;n de Clientes</span> 
	<span class="italicText">Todos los campos son obligatorios *</span>    
	<center><p style='color: #ffffff; background-color: #BC2626'>Ocurrió un error, Intentelo de nuevo.</p></center>
	<div id="areaForm">	<!--Area del formulario  Inicio-->	
	        
	<form class="" id="frm_registro" name="frm_registro" method="POST" action="saveCliente" onSubmit="return validarPasswd()">	
	      
	<span class="titSeccion">Contacto Principal</span> 
	<div class="tablaTitulos"><span class="alignVert">Nombres</span></div>
	<div class="cellInput"><input type="text" class="textBox"   maxlength="20" size="40" id="nombres" name="nombres" required></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Apellidos</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="25" size="40" id="apellidos" name="apellidos" required></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Fecha de Nacimiento</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="10" id="fecha" name="fecha" size="8" required></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert" >Sexo</span></div>
	<div class="cellInput">
		<select class="textBox" id="sexo" name="sexo" required>
		<option value="">Sin especificar</option>
		<option value="M">Masculino</option>
		<option value="F">Femenino</option>
		
		</select>
	</div>
	<div class="clean"></div><br>
	
	<span class="titSeccion">Usuario Web</span> 
	<div class="tablaTitulos"><span class="alignVert">Usuario</span></div>
	<div class="cellInput"><input type="text" class="textBox" size="40" name="user" maxlength="8" required></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Contraseña</span></div>
	<div class="cellInput"><input type="password" class="textBox" maxlength="10" size="40" id="pass" name="pass" required></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Repita la Contraseña</span></div>
	<div class="cellInput"><input type="password" class="textBox" value="" size="40"  maxlength="10" id ="cpass"name="cpass" required></div>
	<div class="clean"></div>
	<br>
	<div class="clean"></div><div class="clean"></div>
	<input  style="color: #ffffff; margin: 0 auto;background-color: #338790" type="submit" name="guardar" id="guardar" value="Guardar">
	<input  style="color: #ffffff; margin: 0 auto;background-color: #338790" type="reset" value="Borrar" />
	<div class="clean"></div>
	</form>
	</div>
	</div>
	
</section>
	<br><br><br><br><br><br><br>
	<div class="franja">
			<div class="container">
			</div>
	</div>

<footer>
	<div class="container">
		<div class="box one">
			<h3>VlatecSoft</h3>
			<ul>
				<li><a href="nosotros.jsp">Nosotros</a></li>
				<li><a href="http://google.com" target="_blank">Blog</a></li>
			</ul>
		</div>
		<div class="box two">
			<h3>Producto</h3>
			<ul>
				<li><a href="productos.jsp">Lista de Productos</a></li>
				<li><a href="compras.jsp">Compras en Línea</a></li>
				<li><a href="servicio-pfc.jsp">Sérvicio Tecnico</a></li>
				<li><a href="galeria.jsp">Información de la Empresa</a></li>
			</ul>
		</div>
		<div class="box three">
			<h3>Soporte</h3>
			<ul>
				<li><a href="contacto.jsp">Contacto</a></li>
				<li>Llámanos (+51) 959 096 704 </li>
				<li>vlatecsoft@hotmail.com</li>
			</ul>
		</div>
		<div class="box four">
			<ul>
				<ul class="redes">
					<li><a href="https://www.facebook.com/Vlatec-Soft-1450201235273579/"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
				<li>&copy; VlatecSoft</li>
				<li>Todos los derechos reservados</li>
			</ul>
		</div>
	</div>
	
	<div class="box-mobile">
		<div id="accordion">
			<h3>Vlatecsoft<i class="icon-down-open"></i></h3>
			<div class="container">
				<ul>
					<li><a href="nosotros.jsp">Nosotros</a></li>
				</ul>
			</div>
			<h3>Producto<i class="icon-down-open"></i></h3>
			<div class="container">
				<ul>
				<li><a href="productos.jsp">Lista de Productos</a></li>
				<li><a href="compras.jsp">Compras en Línea</a></li>
				<li><a href="servicio-pfc.jsp">Servicio Técnico</a></li>
				<li><a href="galeria.jsp">Información de la Empresa</a></li>
				</ul>
			</div>
			<h3>Soporte <i class="icon-down-open"></i></h3>
			<div class="container">
				<ul>
					<li><a href="contacto.jsp">Contacto</a></li>
					<li>Llámanos (+51) 959 096 704 </li>
					<li>vlatecsoft@hotmail.com</li>
				</ul>
			</div>
		</div>
		<div class="container">
			<ul>
				<ul class="redes">
					<li><a href="https://www.facebook.com/Vlatec-Soft-1450201235273579/"><i class="icon-facebook"></i></a></li>
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