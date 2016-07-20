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
	<meta name="description" content="Ofrece lo último en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:url" content="http://1-dot-vlatecsoft.appspot.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://1-dot-vlatecsoft.appspot.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo último en Hardware al alcance de tus manos."/>
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
						<li><a href="productos-marca.jsp">Marcas</a></li>
					
					</ul>
				</li>
				
				
				
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
						<%HttpSession misesion= request.getSession(); %>
						<% if(misesion.getAttribute("username") != null){%>
						<li><a href="distribuidores.jsp">Extranet-Actualización de Datos</a></li>
						<%}else{ %>
						<li><a href="login-distribuidor.jsp">Extranet-Actualización de Datos</a></li>
						<%} %>
						<li><a href="archivos/terminos.pdf">Términos</a></li>
					</ul>
				</li>
				<li><a href="contacto.jsp">Contáctanos</a></li>
				
    			<% if(misesion.getAttribute("username") == null){%>
    			<li><a href="login-cliente.jsp">Iniciar Sesión</a></li>
   				<% } else {%>
   				<li>
					<a><% out.println(misesion.getAttribute("username")); %></a>
					<ul class="children">
						<li><a href="informacion-cliente.jsp">Información de la Cuenta</a></li>
						<li><a href="/cerrarSesionCliente">Cerrar Sesión</a></li>
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
						<li><a href="nosotros.jsp">¿Quiénes somos?</a></li>
						<li><a href="galeria.jsp">Galería</a></li>
						<li class="boton"><a  href="javascript:void(0);" id="opener" class="boton">Escríbenos</a></li>
					</ul>
				</li>
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="productos-tipo.jsp">Productos según Tipo</a></li>
						<li><a href="productos-marca.jsp">Marcas</a></li>
						
					</ul>
				</li>
				
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
						<% if(misesion.getAttribute("username") != null){%>
						<li><a href="distribuidores.jsp">Extranet-Actualización de Datos</a></li>
						<%}else{ %>
						<li><a href="login-distribuidor.jsp">Extranet-Actualización de Datos</a></li>
						<%} %>
						<li><a href="archivos/terminos.pdf">Términos</a></li>
					</ul>
					</ul>
				</li>
				
				<li><a href="contacto.jsp">Contáctanos</a></li>
    			<% if(misesion.getAttribute("username") == null){%>
    			<li><a href="login-cliente.jsp">Iniciar Sesión</a></li>
   				<% } else {%>
   				<li>
					<a><% out.println(misesion.getAttribute("username")); %></a>
					<ul class="children">
						<li><a href="informacion-distribuidor.jsp">Información de la Cuenta</a></li>
						<li><a href="up-distribuidor.jsp">Actualizar Información</a></li>
						<li><a href="del-distribuidor.jsp">Eliminar Cuenta</a></li>
						<li><a href="/cerrarSesionCliente">Cerrar Sesión</a></li>
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
				<h2>Aquí encontrarás una lista de los principales productos que ofrecemos, puedes revisar la información e ingresar para ver las características de cada producto.</h2>
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
					<p>Es una parte fundamental para armar cualquier computadora personal de escritorio o portátil.</p>
					<p>Va instalada dentro de una carcasa o gabinete que por lo general está hecha de chapa y tiene un panel para conectar dispositivos externos y muchos conectores internos y zócalos para instalar componentes internos.</p>
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
					<p>Es el circuito integrado central más complejo de un sistema informático; a modo de ilustración, se le suele llamar por analogía el «cerebro» de un computador.</p>
					<p>Es el encargado de ejecutar los programas, desde el sistema operativo hasta las aplicaciones de usuario; sólo ejecuta instrucciones programadas en lenguaje de bajo nivel, </p>
					<p>realizando operaciones aritméticas y lógicas simples, tales como sumar, restar, multiplicar, dividir, las lógicas binarias y accesos a memoria.</p>
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
				<p>Es el dispositivo de almacenamiento de datos que emplea un sistema de grabación magnética para almacenar archivos digitales.</p>
				<p>Se compone de uno o más platos o discos rígidos, unidos por un mismo eje que gira a gran velocidad dentro de una caja metálica sellada.</p>
				<p> Es memoria no volátil.</p>
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
					<p>Cualquier objeto o sistema que utiliza múltiples medios de expresión físicos o digitales para presentar o comunicar información</p>
					<p>Los medios pueden ser variados, desde texto e imágenes, hasta animación, sonido, video, etc. </p>
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
					<p>Es el principal dispositivo de salida (interfaz), que muestra datos o información al usuario.</p>
					<p>También puede considerarse un periférico de Entrada/Salida si el monitor tiene pantalla táctil o multitáctil.</p>
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
					<p>Es un dispositivo o periférico de entrada, en parte inspirado en el teclado de las máquinas de escribir, que utiliza una disposición de botones o teclas, para que actúen como palancas mecánicas o interruptores electrónicos que envían información a la computadora.</p>
					<p>Después de las tarjetas perforadas y las cintas de papel, la interacción a través de los teclados, al estilo teletipo, se convirtió en el principal dispositivo de entrada para las computadoras.</p>
				
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
				<p>Es un dispositivo apuntador utilizado para facilitar el manejo de un entorno gráfico en una computadora.</p>
				<p>Generalmente está fabricado en plástico, y se utiliza con una de las manos. </p>
				<p>Detecta su movimiento relativo en dos dimensiones por la superficie plana en la que se apoya, reflejándose habitualmente a través de un puntero, cursor o flecha en el monitor.</p>
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
					<p>Es un dispositivo periférico del ordenador que permite producir una gama permanente de textos o gráficos de documentos almacenados en un formato electrónico, imprimiéndolos en medios físicos, normalmente en papel, utilizando cartuchos de tinta o tecnología láser (con tóner).</p>
					<p>Muchas de las impresoras son usadas como periféricos, y están permanentemente unidas al ordenador por un cable.</p>
					
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
					<p>Es un tipo de computadora personal, diseñada y fabricada para ser instalada en una ubicación fija, como un escritorio o mesa, a diferencia de otras computadoras, como las portátiles, notebooks, netbooks, laptops o ultrabooks.</p>
					<p>Puede referirse a dos tipos de computadoras:
					Computadoras de uso doméstico en hogares.
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
					<p>Es un ordenador personal móvil o transportable, que pesa normalmente entre 1 y 3 kg. </p>
					<p> Los ordenadores portátiles son capaces de realizar la mayor parte de las tareas que realizan los ordenadores de escritorio, también llamados «de torre», con similar capacidad y con la ventaja de su peso y tamaño reducidos; ello sumado también a que tienen la capacidad de operar por un período determinado sin estar conectadas a una red eléctrica.</p>
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
				<p>Son un sistema electrónico de entretenimiento para el hogar que ejecuta juegos electrónicos (videojuegos) contenidos en cartuchos, discos ópticos, discos magnéticos, tarjetas de memoria o cualquier dispositivo de almacenamiento.</p>
				
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