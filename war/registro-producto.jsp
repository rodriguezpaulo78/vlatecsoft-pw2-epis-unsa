
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Productos</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery-1.6.2.js" type="text/javascript"></script>
	<script src="js/jquery.validate.js" type="text/javascript"></script>
	<script src="js/messages_es.js" type="text/javascript"></script>
	
	<script src="/js/countryselect.js" type="text/javascript"></script>
	
	<script>
	$(function() {
		$('#fecha').datepicker({dateFormat: 'yy-mm-dd', changeMonth: true, changeYear: true, yearRange: '-100:+0'});
	});
	</script>
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.6.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui.datepicker-es.js"></script>
	<link type="text/css" href="css/jquery-ui-1.7.2.custom.css" rel="Stylesheet" />
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
					<a href="consulta-productos.jsp">Ver Lista de Productos</a>
				</li>
				
				<li>
					<a href="registro-producto.jsp">Registrar Producto</a>
					<ul class="children"></ul>
				</li>
				
				<li><a href="update-producto.jsp">Actualizar Producto</a></li>
				
				<li>
					<a href="eliminar-producto.jsp">Eliminar Producto</a>
				</li>
				<li>
					<a>Usuario</a>
					<ul class="children">
						<li><a href="informacion-distribuidor.jsp">Información de la Cuenta</a></li>
						<li><a href="up-distribuidor.jsp">Actualizar Información</a></li>
						<li><a href="del-distribuidor.jsp">Eliminar Cuenta</a></li>
						<li><a href="index.html">Cerrar Sesión</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div class="nav-mobil">
			<i class="icon-cancel"></i>
			<ul>
				<li>
					<a href="consulta-productos.jsp">Ver Lista de Productos</a>
				</li>
				
				<li>
					<a href="registro-producto.jsp">Registrar Producto</a>
				</li>
				
				<li><a href="update-producto.jsp">Actualizar Producto</a></li>
				
				<li>
					<a href="eliminar-producto.jsp">Eliminar Producto</a>
				</li>
				<li><a>Usuario</a>
					<ul class="children">
						<li><a href="informacion-distribuidor.jsp">Información de la Cuenta</a></li>
						<li><a href="up-distribuidor.jsp">Actualizar Información</a></li>
						<li><a href="del-distribuidor.jsp">Eliminar Cuenta</a></li>
						<li><a href="index.html">Cerrar Sesión</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>


<section class="wrapper">
<div id="headForm"><!--Cabecera del formulario -->
	</div>

	<div id="div_registro" class="containerregprod"><!--formulario  inicio-->
	<span class="titlereg">Registro de Producto</span>     
	
	<div id="areaForm">	<!--Area del formulario  Inicio-->	
	        
	<form class="" id="mainform" name="mainform" method="POST" action="saveProducto" onSubmit="return validarPasswd()">	
	       >
	<span class="titSeccion">Especificación de Producto</span> 
	<div class="tablaTitulos"><span class="alignVert">Selecciona un Grupo</span></div>
	<div class="cellInput">
	<select name="Continent" size="1" onChange="if(!window.refillme){return;}refillme();" required>
					<option value="" selected>Elige Una</option>
					<option value="Motherboard">Motherboard</option>
					<option value="Microprocesador">Microprocesador</option>
					<option value="Memoria Ram">Memoria Ram</option>
					<option value="Disco Duro">Disco Duro</option>
					<option value="Multimedia">Multimedia</option>
					<option value="Monitor">Monitor</option>
					<option value="Teclado">Teclado</option>
					<option value="Mouse">Mouse</option>
					<option value="Impresora">Impresora</option>
					<option value="Desktop">Desktop</option>
					<option value="Notebook">Notebook</option>
					<option value="Consola">Consola</option>
	</select>
	</div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert" >Marca</span></div>
	<div class="cellInput">
		<select class="textBox" id="marca" name="marca" required>
		 <option value="" selected>Sin especificar</option>
		 <optgroup label="Microsoft"> 
		<option value="m">Advance</option>
		<option value="f">Alcatel</option>
		</optgroup>
		<option value="m">Amazon</option>
		<option value="f">BenQ</option>
		<option value="m">Cannon</option>
		<option value="f">CDP</option>
		<option value="m">Dell</option>
		<option value="f">Epson</option>
		<option value="m">Genius</option>
		<option value="f">GigaByte</option>
		<option value="m">HP</option>
		<option value="f">Intel</option>
		<option value="m">Lenovo</option>
		<option value="f">LG</option>
		<option value="m">Nvidia</option>
		<option value="f">Panasonic</option>
		<option value="m">Samsung</option>
		<option value="f">Sony</option>
		<option value="f">Toshiba</option>
		<option value="m">XEROX</option>
		<option value="f">ZTC</option>
		
		</select>
	</div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Selecciona una Modelo</span></div>
	<div class="cellInput">
	<select name="Country" size="1" onchange="if(!window.ableother){return;}ableother();" required>
					<option selected>Selecciona Uno</option>
					<!-- The countries for Africa -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ MotherBoards ------</option>
					<option value="Mainboard Core 2 Duo S775 FSB800">Mainboard Core 2 Duo S775 FSB800</option>
					<option value="Mainboard Core i7 S1366">Mainboard Core i7 S1366</option>
					<option value="Mainboard con Procesador Intel Integrado">Mainboard con Procesador Intel Integrado</option>
					<option value="Mainboard con Procesador AMD Integrado">Mainboard con Procesador AMD Integrado</option>
					<option value="Mainboard con Socket AMD AM2"> Mainboard con Socket AMD AM2</option>
					<option value="Mainboard Core i7 S2011-3"> Mainboard Core i7 S2011-3</option>
					<option value="Mainboard Core i7 S1150 Gaming">Mainboard Core i7 S1150 Gaming</option>
					<option value="Mainboard Core i7 S2011-3 Gaming">Mainboard Core i7 S2011-3 Gaming</option>
					
					<!-- Then the countries for Antarctica -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Microprocesadores ------</option>
					<option value="Procesador Xeon S2011 E5-XXXX"> Procesador Xeon S2011 E5-XXXX</option>
					<option value="Procesador AMD A-Series SFM2"> Procesador AMD A-Series SFM2</option>
					<option value="Procesador Core i3 S1155 3XXX - Tercera Generacion">Procesador Core i3 S1155 3XXX - Tercera Generacion</option>
					<option value="Procesador Core i5 S1155 3XXX - Tercera Generacion"> Procesador Core i5 S1155 3XXX - Tercera Generacion</option>
					<option value="Procesador Core i7 S1150 4XXX - Cuarta Generacion">Procesador Core i7 S1150 4XXX - Cuarta Generacion</option>
					<option value="Procesador Celeron Dual Core S1155 GXXX">Procesador Celeron Dual Core S1155 GXXX</option>
					<option value="Procesador AMD Sempron SAM2">Procesador AMD Sempron SAM2</option>
					<option value="Procesador AMD Phenom 8XXX SAM2"> Procesador AMD Phenom 8XXX SAM2</option>
					
					<!-- Then the countries for Asia -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  ------ Memoria Ram ------</option>
					<option value="Memoria RAM DDR 266MHz PC2100"> Memoria RAM DDR 266MHz PC2100</option>
					<option value="Memoria RAM DDR2 533Mhz PC2-4200"> Memoria RAM DDR2 533Mhz PC2-4200</option>
					<option value="Memoria RAM DDR3 1066Mhz PC3-8500">Memoria RAM DDR3 1066Mhz PC3-8500</option>
					<option value="Memoria SODIMM DDR 333MHz PC2700">Memoria SODIMM DDR 333MHz PC2700</option>
					<option value="Memoria SODIMM DDR2 667Mhz PC2-5300">Memoria SODIMM DDR2 667Mhz PC2-5300</option>
					<option value="Memoria SODIMM DDR3 1066Mhz  PC3-8500"> Memoria SODIMM DDR3 1066Mhz  PC3-8500</option>
					<option value="Memoria RAM DDR4 2133Mhz PC4-17000"> Memoria RAM DDR4 2133Mhz PC4-17000</option>
					<option value="Memoria SODIMM DDR4 2133Mhz PC4-17000">Memoria SODIMM DDR4 2133Mhz PC4-17000</option>
				
					<!-- Then the countries for Australasia -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Disco Duro ------</option>
					<option value="Disco Duro 3.5" IDE"> Disco Duro 3.5" IDE</option>
					<option value="Disco Duro 3.5" SATA">Disco Duro 3.5" SATA</option>
					<option value="Disco Duro en Estado Solido - SSD">Disco Duro en Estado Solido - SSD</option>
					<option value="Disco Duro IDE para Notebook">Disco Duro IDE para Notebook</option>
		
					
					<!-- Then the countries for Europe -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Equipos Multimedia ------</option>
					<option value="Controles de Juegos">Controles de Juegos</option>
					<option value="Reproductores Multimedia">Reproductores Multimedia</option>
					<option value="Microfonos y Auriculares">Microfonos y Auriculares</option>
					<option value="Parlantes Estéreo"> Parlantes Estéreo</option>
					<option value="Camara Video Conferencia Webcam">Camara Video Conferencia Webcam</option>
					
					<!-- Then the countries for North America -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Monitor ------</option>
					<option value="Monitores LCD 15' - 19'"> Monitores LCD 15" - 19"</option>
					<option value="Monitores LCD 20' - 23'">Monitores LCD 20" - 23"</option>
					<option value="Monitores LCD 24' - 27'"> Monitores LCD 24" - 27"</option>
					<option value="Monitores LCD 29' +">Monitores LCD 29" +</option>
					
					
					<!-- Then the countries for South America -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  ------ Teclado ------</option>
					<option value="Teclado para Gamers">Teclado para Gamers</option>
					<option value="Teclado Inalambrico">Teclado Inalambrico</option>
					<option value="Teclado PS/2">Teclado PS/2</option>
					<option value="Teclado USB">Teclado USB</option>
					
						<!-- Then the countries for Asia -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  ------ Mouse ------</option>
					<option value="Mouse PS/2">Mouse PS/2</option>
					<option value="Mouse USB"> Mouse USB</option>
					<option value="Mouse Inalambrico">Mouse Inalambrico</option>
					<option value="Mouse para Gamers"> Mouse para Gamers</option>
					<option value="Mouse mini para Notebooks">Mouse mini para Notebooks</option>
					
				
					<!-- Then the countries for Australasia -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Impresora ------</option>
					<option value="Impresora de Tinta">Impresora de Tinta</option>
					<option value="Impresora Laser"> Impresora Laser</option>
					<option value="Impresora Multifuncional">Impresora Multifuncional</option>
					<option value="Impresora Multifuncional Laser">Impresora Multifuncional Laser</option>
					<option value="Impresora Matricial">Impresora Matricial</option>
		
					
					<!-- Then the countries for Europe -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Computadora Desktop ------</option>
					<option value="Computadora Celeron">Computadora Celeron</option>
					<option value="Computadora Dual Core">Computadora Dual Core</option>
					<option value="Computadora Core i7">Computadora Core i7</option>
					<option value="Computadora Core i5">Computadora Core i5</option>
					<option value="Computadora Core i3">Computadora Core i3</option>
					<option value="Computadora Atom">Computadora Atom</option>
					<option value="Computadora AMD Sempron"> Computadora AMD Sempron</option>
					<option value="Computadora AMD Athlon">Computadora AMD Athlon</option>
					<option value="Computadora AMD Phenom">Computadora AMD Phenom</option>
					<option value="Computadora PC Stick">Computadora PC Stick</option>
					
					<!-- Then the countries for North America -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Notebook ------</option>
					<option value="Notebook Celeron">Notebook Celeron</option>
					<option value="Notebook Core Solo/Duo">Notebook Core Solo/Duo</option>
					<option value="Notebook Dual Core">Notebook Dual Core</option>
					<option value="Notebook Core 2 Duo">Notebook Core 2 Duo</option>
					<option value="Notebook Atom">Notebook Atom</option>
					<option value="Notebook Core i3">Notebook Core i3</option>
					<option value="Notebook Core i5">Notebook Core i5</option>
					<option value="Notebook Core i7">Notebook Core i7</option>
					<option value="Notebook AMD">Notebook AMD</option>
					<option value="Notebook Gaming">Notebook Gaming</option>
					
					
					<!-- Then the countries for South America -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  ------ Consolas para Videojuegos ------</option>
					<option value="Consolas PS3">Consolas PS3</option>
					<option value="Consolas XBOX 360">Consolas XBOX 360</option>
					<option value="Consolas Wii U">Consolas Wii U</option>
					<option value="Consolas Wii">Consolas Wii</option>
					<option value="Consolas PS2">Consolas PS2</option>
					<option value="Consolas PS4">Consolas PS4</option>
					<option value="Consolas Nintendo 3DS">Consolas Nintendo 3DS</option>
					<option value="Consolas XBOX One">Consolas XBOX One</option>
					<option value="Consolas PS Vita">Consolas PS Vita</option>
					<option value="Consolas PSP">Consolas PSP</option>
					
					
					<!-- Then the countries I might have missed -->
					<option>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ------ Other ------</option>
					<option value="Other">Other (please use the box below)</option>
				</select>
	</div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Otros</span></div>
	<div class="cellInput"><input type="text" name="other" maxlength="20" value="" size="20" ></div>
	<div class="clean"></div>
	<br>
	
	<div class="tablaTitulos"><span class="alignVert">Item - MiniCodigo</span></div>
	<div class="cellInput"><input id="item" name="item" maxlength="8" value="" size="20" required></div>
	<div class="clean"></div>
	<br>
	
	<div class="tablaTitulos"><span class="alignVert">Descripción</span></div>
	<div class="cellInput"><textarea name="descripcion" id="descripcion" rows="10" cols="50" required></textarea><br /></div>
	<div class="clean"></div>
	<br>
	
	<div class="tablaTitulos"><span class="alignVert">Fecha de Registro</span></div>
	<div class="cellInput"><input type="text" class="textBox" id="fecha" maxlength="10"  name="fecha" size="8" required></div>
	<div class="clean"></div>
	
	<div class="clean"></div><div class="clean"></div>
	<input  style="color: #ffffff; margin: 0 auto;background-color: #338790" type="submit" name="guardar" id="guardar" value="Guardar">
	<input  style="color: #ffffff; margin: 0 auto;background-color: #338790" type="reset" value="Borrar" />
	<div class="clean"></div>
	</form>

	</div> <!--Area del formulario  Fin-->  
	
	</section>
	<br><br><br><br><br><br><br>
	<div class="franja">
			<div class="container">
			</div>
	</div>


<footer>
	<div class="container">
		<div class="box1 four1">
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