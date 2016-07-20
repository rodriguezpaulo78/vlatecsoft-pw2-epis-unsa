<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>VLATECSOFT | Productos</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/scripts.js"></script>
	<meta name="description" content="Ofrece lo �ltimo en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnolog�a en tus manos"/>
	<meta property="og:url" content="http://1-dot-vlatecsoft.appspot.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnolog�a en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://1-dot-vlatecsoft.appspot.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo �ltimo en Hardware al alcance de tus manos."/>
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
						<li><a href="nosotros.jsp">�Qui�nes somos?</a></li>
						<li><a href="galeria.jsp">Galer�a</a></li>
						<li><a href="javascript:void(0);" id="opener" class="boton">Escr�benos</a></li>
					</ul>
				</li>
				
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="productos-tipo.jsp">Productos seg�n Tipo</a></li>
						<li><a href="productos-marca.jsp">Marcas</a></li>
					
					</ul>
				</li>
				
				
				
				<li>
					<a href="servicio-pfc.jsp">Servicio T�cnico</a>
					<ul class="children">
						<li><a href="servicio-pfc.jsp">Preguntas Frecuentes del Cliente</a></li>
						<li><a href="servicio-pfd.jsp">Preguntas Frecuentes de Nuestros Distribuidores</a></li>
						<li><a href="servicio-hla.jsp">Horarios y Lugares de Atenci�n</a></li>
						<li><a href="servicio-tdg.jsp">Tipos de Garant�a</a></li>
						<li><a href="archivos/nocas.pdf">Atenci�n de otras marcas</a></li>
					</ul>
				</li>
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="registro-distribuidor.jsp">Registro</a></li>
						<%HttpSession misesion= request.getSession(); %>
						<% if(misesion.getAttribute("username") != null){%>
						<li><a href="distribuidores.jsp">Extranet-Actualizaci�n de Datos</a></li>
						<%}else{ %>
						<li><a href="login-distribuidor.jsp">Extranet-Actualizaci�n de Datos</a></li>
						<%} %>
						<li><a href="archivos/terminos.pdf">T�rminos</a></li>
					</ul>
				</li>
				<li><a href="contacto.jsp">Cont�ctanos</a></li>
				
    			<% if(misesion.getAttribute("username") == null){%>
    			<li><a href="login-cliente.jsp">Iniciar Sesi�n</a></li>
   				<% } else {%>
   				<li>
					<a><% out.println(misesion.getAttribute("username")); %></a>
					<ul class="children">
						<li><a href="informacion-cliente.jsp">Informaci�n de la Cuenta</a></li>
						<li><a href="/cerrarSesionCliente">Cerrar Sesi�n</a></li>
					</ul>
				</li>
   				<% }%>
				
			</ul>
		</nav>
		<div class="nav-mobil">
			<i class="icon-cancel"></i>
			<ul>
				<li>
					<a href="nosotros.jsp">Nosotros</a>
					<ul class="children">
						<li><a href="nosotros.jsp">�Qui�nes somos?</a></li>
						<li><a href="galeria.jsp">Galer�a</a></li>
						<li class="boton"><a  href="javascript:void(0);" id="opener" class="boton">Escr�benos</a></li>
					</ul>
				</li>
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="productos-tipo.jsp">Productos seg�n Tipo</a></li>
						<li><a href="productos-marca.jsp">Marcas</a></li>
						
					</ul>
				</li>
				
				<li>
					<a href="servicio-pfc.jsp">Servicio T�cnico</a>
					<ul class="children">
						<li><a href="servicio-pfc.jsp">Preguntas Frecuentes del Cliente</a></li>
						<li><a href="servicio-pfd.jsp">Preguntas Frecuentes de Nuestros Distribuidores</a></li>
						<li><a href="servicio-hla.jsp">Horarios y Lugares de Atenci�n</a></li>
						<li><a href="servicio-tdg.jsp">Tipos de Garant�a</a></li>
						<li><a href="archivos/nocas.pdf">Atenci�n de otras marcas</a></li>
					</ul>
				</li>
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="registro-distribuidor.jsp">Registro</a></li>
						<% if(misesion.getAttribute("username") != null){%>
						<li><a href="distribuidores.jsp">Extranet-Actualizaci�n de Datos</a></li>
						<%}else{ %>
						<li><a href="login-distribuidor.jsp">Extranet-Actualizaci�n de Datos</a></li>
						<%} %>
						<li><a href="archivos/terminos.pdf">T�rminos</a></li>
					</ul>
					</ul>
				</li>
				
				<li><a href="contacto.jsp">Cont�ctanos</a></li>
    			<% if(misesion.getAttribute("username") == null){%>
    			<li><a href="login-cliente.jsp">Iniciar Sesi�n</a></li>
   				<% } else {%>
   				<li>
					<a><% out.println(misesion.getAttribute("username")); %></a>
					<ul class="children">
						<li><a href="informacion-distribuidor.jsp">Informaci�n de la Cuenta</a></li>
						<li><a href="up-distribuidor.jsp">Actualizar Informaci�n</a></li>
						<li><a href="del-distribuidor.jsp">Eliminar Cuenta</a></li>
						<li><a href="/cerrarSesionCliente">Cerrar Sesi�n</a></li>
					</ul>
				</li>
   				<% }%>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>

	<div class="top-beneficios">
		<div class="container">
			<div class="title">
				<h1>Lista de Productos</h1>
				<h2>Aqu� encontrar�s una lista de los principales productos que ofrecemos, puedes revisar la informaci�n e ingresar para ver las caracter�sticas de cada producto.</h2>
			</div>
		</div>
	</div>
	
<section>
	<div class="beneficios">
		<div class="container">
			<ul class="nav-two">
				<li>
					<a href="#one"><img src="images/m.jpg" alt="Motherboards"></a>
					<h4>Motherboards</h4>
				</li>
				<li>
					<a href="#four"><img src="images/mi.jpg" alt="Microprocesadores"></a>
					<h4>Microprocesadores</h4>
				</li>
				<li>
					<a href="#two"><img src="images/me.jpg" alt="Memorias Ram"></a>
					<h4>Memorias Ram</h4>
				</li>
				<li>
					<a href="#three"><img src="images/d.jpg" alt="Discos Duros"></a>
					<h4>Discos Duros</h4>
				</li>
				<li>
					<a href="#five"><img src="images/c.jpg" alt="Multimedia"></a>
					<h4>Multimedia</h4>
				</li>
				<li>
					<a href="#six"><img src="images/moni.jpg" alt="Monitores"></a>
					<h4>Monitores</h4>
				</li>
				<li>
					<a href="#seven"><img src="images/t.jpg" alt="Teclados"></a>
					<h4>Teclados</h4>
				</li>
				<li>
					<a href="#eight"><img src="images/mou.jpg" alt="Mouse"></a>
					<h4>Mouse</h4>
				</li>
				<li>
					<a href="#nine"><img src="images/i.jpg" alt="Impresoras"></a>
					<h4>Impresoras</h4>
				</li>
				<li>
					<a href="#ten"><img src="images/pc.jpg" alt="Computadoras Desktop"></a>
					<h4>Computadoras Desktop</h4>
				</li>
				<li>
					<a href="#eleven"><img src="images/n.jpg" alt="Notebooks"></a>
					<h4>Notebooks</h4>
				</li>
				<li>
					<a href="#twelve"><img src="images/v.jpg" alt="Consolas para Videojuegos"></a>
					<h4>Consolas</h4>
				</li>
			</ul>
		</div>

		<div class="franja">
		<div class="container">
		</div>
</div>
		
		<div id="one" class="section one">
			<div class="container">
				<div class="left" align="justify">
					<img src="images/m.jpg" alt="Motherboards">
					<h2>Motherboards</h2>
					<p>Es una tarjeta de circuito impreso a la que se conectan los componentes que constituyen la computadora.</p>
					<p>Es una parte fundamental para armar cualquier computadora personal de escritorio o port�til.</p>
					<p>Va instalada dentro de una carcasa o gabinete que por lo general est� hecha de chapa y tiene un panel para conectar dispositivos externos y muchos conectores internos y z�calos para instalar componentes internos.</p>
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
				<div class="right">
					<img src="images/mother.jpg" alt="Motherboards">
				</div>
			</div>
		</div>
		<div id="four" class="section four">
			<div class="container">
				<div class="left">
					<img src="images/micro.jpg" alt="Microprocesadores">
				</div>
				<div class="right" align="justify">
					<img src="images/mi.jpg" alt="Microprocesadores"></a>
					<h2>Microprocesadores</h2>
					<p>Es el circuito integrado central m�s complejo de un sistema inform�tico; a modo de ilustraci�n, se le suele llamar por analog�a el �cerebro� de un computador.</p>
					<p>Es el encargado de ejecutar los programas, desde el sistema operativo hasta las aplicaciones de usuario; s�lo ejecuta instrucciones programadas en lenguaje de bajo nivel, </p>
					<p>realizando operaciones aritm�ticas y l�gicas simples, tales como sumar, restar, multiplicar, dividir, las l�gicas binarias y accesos a memoria.</p>
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="two" class="section two">
			<div class="container">
				<div class="left" align="justify">
					<img src="images/me.jpg" alt="Memorias Ram"></a>
					<h2>Memorias Ram</h2>
					<p>Se utiliza como memoria de trabajo de computadoras para el sistema operativo, los programas y la mayor parte del software.</p>
					<p> En la RAM se cargan todas las instrucciones que ejecuta la unidad central de procesamiento (procesador) y otras unidades del computador.</p>
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
				<div class="right">
					<img src="images/memoria.jpg" alt="Memorias Ram">
				</div>
			</div>
		</div>
		
		<div class="franja">
		<div class="container">
		</div>
</div>
		
		<div id="three" class="section three">
			<div class="container" align="justify">
				<img src="images/d.jpg" alt="Discos Duros"></a>
				<h2>Discos Duros</h2>
				<p>Es el dispositivo de almacenamiento de datos que emplea un sistema de grabaci�n magn�tica para almacenar archivos digitales.</p>
				<p>Se compone de uno o m�s platos o discos r�gidos, unidos por un mismo eje que gira a gran velocidad dentro de una caja met�lica sellada.</p>
				<p> Es memoria no vol�til.</p>
				<ul>
					<li><a href="productos-tipo.jsp">Lista Completa</a></li>
				</ul>
			</div>
		</div>
		
		<div class="franja">
		<div class="container">
		</div>
</div>
		
		<div id="five" class="section five">
			<div class="container">
				<div class="left" align="justify">
					<img src="images/c.jpg" alt="Multimedia">
					<h2>Multimedia</h2>
					<p>Cualquier objeto o sistema que utiliza m�ltiples medios de expresi�n f�sicos o digitales para presentar o comunicar informaci�n</p>
					<p>Los medios pueden ser variados, desde texto e im�genes, hasta animaci�n, sonido, video, etc. </p>
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
				<div class="right">
					<img src="images/multi.jpg" alt="Multimedia">
				</div>
			</div>
		</div>
		<div id="six" class="section six">
			<div class="container">
				<div class="left">
					<img src="images/monitor.jpg" alt="Monitores">
				</div>
				<div class="right" align="justify">
					<img src="images/moni.jpg" alt="Monitores"></a>
					<h2>Monitores</h2>
					<p>Es el principal dispositivo de salida (interfaz), que muestra datos o informaci�n al usuario.</p>
					<p>Tambi�n puede considerarse un perif�rico de Entrada/Salida si el monitor tiene pantalla t�ctil o multit�ctil.</p>
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="seven" class="section seven">
			<div class="container">
				<div class="left" align="justify">
					<img src="images/t.jpg" alt="Teclados"></a>
					<h2>Teclados</h2>
					<p>Es un dispositivo o perif�rico de entrada, en parte inspirado en el teclado de las m�quinas de escribir, que utiliza una disposici�n de botones o teclas, para que act�en como palancas mec�nicas o interruptores electr�nicos que env�an informaci�n a la computadora.</p>
					<p>Despu�s de las tarjetas perforadas y las cintas de papel, la interacci�n a trav�s de los teclados, al estilo teletipo, se convirti� en el principal dispositivo de entrada para las computadoras.</p>
				
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
				<div class="right">
					<img src="images/teclado.jpg" alt="Teclados">
				</div>
			</div>
		</div>
		
		<div class="franja">
		<div class="container">
		</div>
</div>
		
		<div id="eight" class="section eight">
			<div class="container" align="justify">
				<img src="images/mou.jpg" alt="Mouse"></a>
				<h2>Mouse</h2>
				<p>Es un dispositivo apuntador utilizado para facilitar el manejo de un entorno gr�fico en una computadora.</p>
				<p>Generalmente est� fabricado en pl�stico, y se utiliza con una de las manos. </p>
				<p>Detecta su movimiento relativo en dos dimensiones por la superficie plana en la que se apoya, reflej�ndose habitualmente a trav�s de un puntero, cursor o flecha en el monitor.</p>
				<ul>
					<li><a href="productos-tipo.jsp">Lista Completa</a></li>
				</ul>
			</div>
		</div>
		
		<div class="franja">
		<div class="container">
		</div>
</div>
		
		<div id="nine" class="section nine">
			<div class="container">
				<div class="left" align="justify">
					<img src="images/i.jpg" alt="Impresoras">
					<h2>Impresoras</h2>
					<p>Es un dispositivo perif�rico del ordenador que permite producir una gama permanente de textos o gr�ficos de documentos almacenados en un formato electr�nico, imprimi�ndolos en medios f�sicos, normalmente en papel, utilizando cartuchos de tinta o tecnolog�a l�ser (con t�ner).</p>
					<p>Muchas de las impresoras son usadas como perif�ricos, y est�n permanentemente unidas al ordenador por un cable.</p>
					
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
				<div class="right">
					<img src="images/impresora.jpg" alt="Impresoras">
				</div>
			</div>
		</div>
		<div id="ten" class="section ten">
			<div class="container">
				<div class="left" >
					<img src="images/desktop.jpg" alt="Computadoras Desktop">
				</div>
				<div class="right" align="justify">
					<img src="images/pc.jpg" alt="Computadoras Desktop"></a>
					<h2>Computadoras Desktop</h2>
					<p>Es un tipo de computadora personal, dise�ada y fabricada para ser instalada en una ubicaci�n fija, como un escritorio o mesa, a diferencia de otras computadoras, como las port�tiles, notebooks, netbooks, laptops o ultrabooks.</p>
					<p>Puede referirse a dos tipos de computadoras:
					Computadoras de uso dom�stico en hogares.
					Computadoras de oficina para los usuarios de una empresa.</p>
				
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="eleven" class="section eleven">
			<div class="container">
				<div class="left" align="justify">
					<img src="images/n.jpg" alt="Notebooks"></a>
					<h2>Notebooks</h2>
					<p>Es un ordenador personal m�vil o transportable, que pesa normalmente entre 1 y 3 kg. </p>
					<p> Los ordenadores port�tiles son capaces de realizar la mayor parte de las tareas que realizan los ordenadores de escritorio, tambi�n llamados �de torre�, con similar capacidad y con la ventaja de su peso y tama�o reducidos; ello sumado tambi�n a que tienen la capacidad de operar por un per�odo determinado sin estar conectadas a una red el�ctrica.</p>
					<ul>
						<li><a href="productos-tipo.jsp">Lista Completa</a></li>
					</ul>
				</div>
				<div class="right">
					<img src="images/note.jpg" alt="Notebooks">
				</div>
			</div>
		</div>
		
		<div class="franja">
		<div class="container">
		</div>
</div>
		
		<div id="twelve" class="section twelve">
			<div class="container" align="justify">
				<img src="images/v.jpg" alt="Consolas para Videojuegos"></a>
				<h2>Consolas para Videojuegos</h2>
				<p>Son un sistema electr�nico de entretenimiento para el hogar que ejecuta juegos electr�nicos (videojuegos) contenidos en cartuchos, discos �pticos, discos magn�ticos, tarjetas de memoria o cualquier dispositivo de almacenamiento.</p>
				
				<ul>
					<li><a href="productos-tipo.jsp">Lista Completa</a></li>
				</ul>
			</div>
		</div>
	</div>
	
</section>

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
				<li><a href="compras.jsp">Compras en L�nea</a></li>
				<li><a href="servicio-pfc.jsp">S�rvicio Tecnico</a></li>
				<li><a href="galeria.jsp">Informaci�n de la Empresa</a></li>
			</ul>
		</div>
		<div class="box three">
			<h3>Soporte</h3>
			<ul>
				<li><a href="contacto.jsp">Contacto</a></li>
				<li>Ll�manos (+51) 959 096 704 </li>
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
				<li><a href="compras.jsp">Compras en L�nea</a></li>
				<li><a href="servicio-pfc.jsp">Servicio T�cnico</a></li>
				<li><a href="galeria.jsp">Informaci�n de la Empresa</a></li>
				</ul>
			</div>
			<h3>Soporte <i class="icon-down-open"></i></h3>
			<div class="container">
				<ul>
					<li><a href="contacto.jsp">Contacto</a></li>
					<li>Ll�manos (+51) 959 096 704 </li>
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