<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<div class="top">
	<div class="page-title">
		<div class="container">
			<div class="h1color"><h1>Productos Vlatecsoft</h1></div>
			<h4>Te ofrecemos los mejores productos.</h4>
		</div>
	</div>
</div>
<br><br>

<section class="wrapper">
	<div class="phones">
		<div class="container">
			<div class="title">
		
				<center>
				<TABLE BORDER CELLSPACING=0 CELLPADDING=0 bordercolorlight="#D5EAFF" bordercolordark="#E8F8FF" bordercolor="#000">
				<TR BGCOLOR="#004F75" bordercolorlight="#0078B3" bordercolordark="#002233">
				<TD ALIGN=CENTER VALIGN=CENTER HEIGHT="35">
				<CENTER>
				<font color="#FFFFFF"><B>PRODUCTOS POR TIPO</font></B>
				
				</CENTER>
				</TD>
				</TR>
				<TR>
				<TD><CENTER>
				<TABLE BORDER=4 CELLSPACING=0 CELLPADDING=0 bordercolor="#CEEFFF">
													
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xmbd.jpg.pagespeed.ic.Zi03XZIP0q.jpg' HEIGHT=50 WIDTH=150 BORDER=0>		
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<b>MOTHERBOARDS (PLACAS BASE)</b>
												<BR><br>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;2&nbsp;Duo&nbsp;S775&nbsp;FSB800</b><br>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;2&nbsp;Duo&nbsp;S775&nbsp;FSB1066</b><br>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;2&nbsp;Duo&nbsp;S775&nbsp;FSB1333</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S1366</b><br>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S1156</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S1155</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S2011</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S1150</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Procesador&nbsp;Intel&nbsp;Integrado</b><BR>
											
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Procesador&nbsp;AMD&nbsp;Integrado</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;AM2</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;AM3</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;AM3+</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;FM1</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;FM2</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;FM2+</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;Socket&nbsp;AMD&nbsp;AM1</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S2011-3</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S1150&nbsp;Gaming</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S2011-3&nbsp;Gaming</b><BR>
												&nbsp;<b >Mainboard&nbsp;Core&nbsp;i7&nbsp;S1151</b><BR>
												&nbsp;<b>Mainboard&nbsp;Core&nbsp;i7&nbsp;S1151&nbsp;Gaming</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;socket&nbsp;AMD&nbsp;AM3+&nbsp;Gaming</b><BR>
												&nbsp;<b>Mainboard&nbsp;con&nbsp;socket&nbsp;AMD&nbsp;FM2+&nbsp;Gaming</b>	
										</TR>
																																		
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xcpu.jpg.pagespeed.ic.p7hEVisTK9.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>CPUS (MICROPROCESADORES)</B></A>
												<BR><br>
												&nbsp;<b>Procesador&nbsp;Xeon&nbsp;S2011&nbsp;E5-XXXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Xeon&nbsp;S1155&nbsp;E3-XXXX</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;A-Series&nbsp;SFM2</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Athlon&nbsp;X4&nbsp;SFM2</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i3&nbsp;S1155&nbsp;3XXX&nbsp;-&nbsp;Tercera&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Celeron&nbsp;Dual&nbsp;Core&nbsp;S775&nbsp;E3XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Pentium&nbsp;Dual&nbsp;Core&nbsp;S775&nbsp;E5XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Pentium&nbsp;Dual&nbsp;Core&nbsp;S775&nbsp;E6XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i3&nbsp;S1155&nbsp;2XXX&nbsp;-&nbsp;Segunda&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i5&nbsp;S1155&nbsp;2XXX&nbsp;-&nbsp;Segunda&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i7&nbsp;S1155&nbsp;2XXX&nbsp;-&nbsp;Segunda&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i7&nbsp;S1155&nbsp;3XXX&nbsp;-&nbsp;Tercera&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i5&nbsp;S1155&nbsp;3XXX&nbsp;-&nbsp;Tercera&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i7&nbsp;S1150&nbsp;4XXX&nbsp;-&nbsp;Cuarta&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i5&nbsp;S1150&nbsp;4XXX&nbsp;-&nbsp;Cuarta&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;2&nbsp;Duo&nbsp;S775&nbsp;E4XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;2&nbsp;Duo&nbsp;S775&nbsp;E7XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;2&nbsp;Duo&nbsp;S775&nbsp;E8XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;2&nbsp;Quad&nbsp;S775&nbsp;Q8XXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i3&nbsp;S1156&nbsp;5XX&nbsp;</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i5&nbsp;S1156&nbsp;6XX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i7&nbsp;S1366&nbsp;9XX</b><BR>
												&nbsp;<b>Procesador&nbsp;Core&nbsp;i7&nbsp;S2011&nbsp;3XXX&nbsp;-&nbsp;Tercera&nbsp;Generacion</b><BR>
												&nbsp;<b>Procesador&nbsp;Celeron&nbsp;Dual&nbsp;Core&nbsp;S1155&nbsp;GXXX</b><BR>
												&nbsp;<b>Procesador&nbsp;Pentium&nbsp;Dual&nbsp;Core&nbsp;S1155&nbsp;GXXX</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Sempron&nbsp;SAM2</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Sempron&nbsp;SAM3</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Athlon&nbsp;X2&nbsp;SAM2</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Athlon&nbsp;II&nbsp;X2&nbsp;SAM3</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Phenom&nbsp;8XXX&nbsp;SAM2</b><BR>
												&nbsp;<b>Procesador&nbsp;AMD&nbsp;Phenom&nbsp;II&nbsp;9X&nbsp;SAM2</b><BR>
												&nbsp;<b>Procesador&nbsp;Pentium&nbsp;Dual&nbsp;Core&nbsp;S1150&nbsp;GXXXX</b><BR>
										</TR>
																																
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xmem.jpg.pagespeed.ic.uhaJNHUQQo.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>MEMORIAS RAM</B></A>
												<BR><br>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR&nbsp;266MHz&nbsp;PC2100</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR&nbsp;400MHz&nbsp;PC3200</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR2&nbsp;533Mhz&nbsp;PC2-4200</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR2&nbsp;667Mhz&nbsp;PC2-5300</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR2&nbsp;800Mhz&nbsp;PC2-6400</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;1066Mhz&nbsp;PC3-8500</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;1333Mhz&nbsp;&nbsp;PC3-10600</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;1600Mhz&nbsp;&nbsp;PC3-12800</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;1800Mhz&nbsp;PC3-14400</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;1866&nbsp;Mhz&nbsp;PC3-14900</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;2000Mhz&nbsp;PC3-16000</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;2133Mhz&nbsp;PC3-17000</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR3&nbsp;2400Mhz&nbsp;PC3-19200</b><BR>
												&nbsp;<b>Memoria&nbsp;SODIMM&nbsp;DDR2&nbsp;667Mhz&nbsp;PC2-5300</b><BR>
												&nbsp;<b>Memoria&nbsp;SODIMM&nbsp;DDR2&nbsp;800Mhz&nbsp;&nbsp;PC2-6400</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR4&nbsp;2133Mhz&nbsp;PC4-17000</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR4&nbsp;2400Mhz&nbsp;PC4-19200</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR4&nbsp;2666Mhz&nbsp;PC4-21300</b><BR>
												&nbsp;<b>Memoria&nbsp;RAM&nbsp;DDR4&nbsp;2800Mhz&nbsp;PC4-22400</b><BR>
										</TR>
																							
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xhdx.jpg.pagespeed.ic.ECP-7TA-zk.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>DISCOS DUROS, ACCESORIOS</B></A>
												<BR>
												&nbsp;<b>Disco&nbsp;Duro&nbsp;3.5"&nbsp;IDE</b><BR>
												&nbsp;<b>Disco&nbsp;Duro&nbsp;3.5"&nbsp;SATA</b><BR>
												&nbsp;<b>Disco&nbsp;Duro&nbsp;en&nbsp;Estado&nbsp;Solido&nbsp;-&nbsp;SSD</b><BR>
												&nbsp;<b>Disco&nbsp;Duro&nbsp;IDE&nbsp;para&nbsp;Notebook</b><BR>
												&nbsp;<b>Disco&nbsp;Duro&nbsp;SATA&nbsp;2.5"&nbsp;para&nbsp;Notebook</b><BR>
												&nbsp;<b>Disco&nbsp;Duro&nbsp;SAS</b>					
										</TR>
																																													
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xmm.jpg.pagespeed.ic.KxteqsIWU6.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>MULTIMEDIA, PRODUCTOS</B></b>
												<BR><br>
												&nbsp;<b>Controles&nbsp;de&nbsp;Juegos</b><BR>
												&nbsp;<b>Reproductores&nbsp;Multimedia</b><BR>
												&nbsp;<b>Microfonos&nbsp;y&nbsp;Auriculares</b><BR>
												&nbsp;<b>Parlantes&nbsp;Estéreo</b><BR>
												&nbsp;<b>Parlantes&nbsp;2.1</b><BR>
												&nbsp;<b>Parlantes&nbsp;5.1&nbsp;y&nbsp;mayores</b><BR>
												&nbsp;<b>Tarjetas&nbsp;de&nbsp;Sonido</b><BR>
												&nbsp;<b>Parlantes</b><BR>
												&nbsp;<b>Camara&nbsp;Video&nbsp;Conferencia&nbsp;Webcam</b><BR>
												&nbsp;<b>Accesorios&nbsp;Multimedia</b><BR>
												&nbsp;<b>Microfonos&nbsp;y&nbsp;Auriculares&nbsp;Gaming</b>			
										</TR>
															
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xmon.jpg.pagespeed.ic.orqxStkPvg.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>MONITORES</B></A>
												<BR><br>
												&nbsp;<b>Monitores&nbsp;LCD&nbsp;15"&nbsp;-&nbsp;19"</b><BR>
												&nbsp;<b>Monitores&nbsp;LCD&nbsp;20"&nbsp;-&nbsp;23"</b><BR>
												&nbsp;<b>Monitores&nbsp;LCD&nbsp;24"&nbsp;-&nbsp;27"</b><BR>
												&nbsp;<b>Monitores&nbsp;LCD&nbsp;29"&nbsp;+</b><BR>
												&nbsp;<b>Monitores&nbsp;Varios</b><BR>
												&nbsp;<b>Monitores&nbsp;Gaming</b>		
										</TR>
																										
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xkb.jpg.pagespeed.ic.g85YrvCo2Z.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>TECLADOS</B></A>
												<BR><br>
												&nbsp;<b>Kit&nbsp;de&nbsp;Teclado&nbsp;+&nbsp;Mouse</b><BR>
												&nbsp;<b>Teclado&nbsp;para&nbsp;Gamers</b><BR>
												&nbsp;<b>Teclado&nbsp;Inalambrico</b><BR>
												&nbsp;<b>Teclado&nbsp;PS/2</b><BR>
												&nbsp;<b>Teclado&nbsp;USB</b>	
										</TR>
																							
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xmi.jpg.pagespeed.ic.GlLEKLNW88.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>MOUSE, TRACKBALL, PUNTEROS</B></A>
												<BR><br>
												&nbsp;<b>Mouse&nbsp;PS/2</b><BR>
												&nbsp;<b>Mouse&nbsp;USB</b><BR>
												&nbsp;<b>Mouse&nbsp;Inalambrico</b><BR>
												&nbsp;<b>Mouse&nbsp;para&nbsp;Gamers</b><BR>
												&nbsp;<b>Mouse&nbsp;mini&nbsp;para&nbsp;Notebooks</b><BR>
												&nbsp;<b>Mouse&nbsp;Pad&nbsp;Accesorios</b><BR>
												&nbsp;<b>Touchpad&nbsp;Trackball&nbsp;Punteros</b>	
												
										</TR>
																																						
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xpr.jpg.pagespeed.ic.JkZiyFAXva.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>IMPRESORAS</B></A>
												<BR><br>
												&nbsp;<b>Impresora&nbsp;de&nbsp;Tinta</b><BR>
												&nbsp;<b>Impresora&nbsp;Laser</b><BR>
												&nbsp;<b>Impresora&nbsp;Multifuncional</b><BR>
												&nbsp;<b>Impresora&nbsp;Multifuncional&nbsp;Laser</b><BR>
												&nbsp;<b>Impresora&nbsp;Matricial</b><BR>
												&nbsp;<b>Plotter</b><BR>
												&nbsp;<b>Impresora&nbsp;Termica</b>		
										</TR>												
																															
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xbb.jpg.pagespeed.ic.o48hDcwxZb.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>COMPUTADORAS DESKTOP</B></A>
												<BR><br>
												&nbsp;<b>Computadora&nbsp;Dual&nbsp;Core</b><BR>
												&nbsp;<b>Computadora&nbsp;Celeron</b><BR>
												&nbsp;<b>Computadora&nbsp;Core&nbsp;2&nbsp;Duo</b><BR>
												&nbsp;<b>Computadora&nbsp;Quad&nbsp;Core</b><BR>
												&nbsp;<b>Computadora&nbsp;Core&nbsp;i7</b><BR>
												&nbsp;<b>Computadora&nbsp;Core&nbsp;i5</b><BR>
												&nbsp;<b>Computadora&nbsp;Core&nbsp;i3</b><BR>
												&nbsp;<b>Computadora&nbsp;Atom</b><BR>
												&nbsp;<b>Computadora&nbsp;AMD&nbsp;Sempron</b><BR>
												&nbsp;<b>Computadora&nbsp;AMD&nbsp;Athlon</b><BR>
												&nbsp;<b>Computadora&nbsp;AMD&nbsp;Phenom</b><BR>
												&nbsp;<b>Computadora&nbsp;All-InOne&nbsp;Core&nbsp;i7</b><BR>
												&nbsp;<b>Computadora&nbsp;All-InOne&nbsp;Core&nbsp;i5</b><BR>
												&nbsp;<b>Computadora&nbsp;All-InOne&nbsp;Core&nbsp;i3</b><BR>
												
										</TR>
																																														
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xnbk.jpg.pagespeed.ic.7MHnt9SxSM.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>NOTEBOOKS LAPTOPS PORTATILES</B></A>
												<BR><br>
												&nbsp;<b>Ultrabook</A><BR>
												&nbsp;<b>Ultrabook&nbsp;Core&nbsp;i7</b><BR>
												&nbsp;<b>Ultrabook&nbsp;Core&nbsp;i5</b><BR>
												&nbsp;<b>Ultrabook&nbsp;Core&nbsp;i3</b><BR>
												&nbsp;<b>Notebook&nbsp;2-in-1&nbsp;Celeron</b><BR>
												&nbsp;<b>Notebook&nbsp;2-in-1&nbsp;Atom</b><BR>
												&nbsp;<b>Notebook&nbsp;2-in-1&nbsp;Core&nbsp;i7</b><BR>
												&nbsp;<b>Notebook&nbsp;2-in-1&nbsp;Core&nbsp;i5</b><BR>
												&nbsp;<b>Notebook&nbsp;2-in-1&nbsp;Core&nbsp;i3</b><BR>
												&nbsp;<b>Notebook&nbsp;2-in-1&nbsp;Dual&nbsp;Core</b><BR>
												&nbsp;<b>Notebook&nbsp;Core&nbsp;i3</b><BR>
												&nbsp;<b>Notebook&nbsp;Core&nbsp;i5</b><BR>
												&nbsp;<b>Notebook&nbsp;Core&nbsp;i7</b><BR>
												&nbsp;<b>Notebook&nbsp;AMD</b><BR>
												&nbsp;<b>Notebook&nbsp;AMD&nbsp;Sempron</b><BR>
												&nbsp;<b>Notebook&nbsp;AMD&nbsp;Athlon</b><BR>
												&nbsp;<b>Notebook&nbsp;AMD&nbsp;Turion</b><BR>
										</TR>
																																																						
										<TR>
											<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
												<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xvij.jpg.pagespeed.ic.ly7kyZ4mRV.jpg' HEIGHT=50 WIDTH=150 BORDER=0>												</A>
											</TD>
											
											<TD WIDTH="602">&nbsp;
												<B>CONSOLAS PARA VIDEOJUEGOS</B></A>
												<BR><br>
												&nbsp;<b>Accesorios&nbsp;para&nbsp;PS3</b><BR>
												&nbsp;<b>Accesorios&nbsp;para&nbsp;XBOX360</b><BR>
												&nbsp;<b>Accesorios&nbsp;para&nbsp;Wii&nbsp;U</b><BR>
												&nbsp;<b>Accesorios&nbsp;para&nbsp;XBOX&nbsp;ONE</b><BR>
												&nbsp;<b>Videojuegos&nbsp;Para&nbsp;PS3</b><BR>
												&nbsp;<b>Videojuegos&nbsp;para&nbsp;XBOX360</b><BR>
												&nbsp;<b>Videojuegos&nbsp;para&nbsp;PC</b><BR>
												&nbsp;<b>Videojuegos&nbsp;para&nbsp;Wii&nbsp;U</b><BR>
												&nbsp;<b>Videojuegos&nbsp;para&nbsp;PSVITA</b><BR>
												&nbsp;<b>Videojuegos&nbsp;para&nbsp;XBOX&nbsp;ONE</b><BR>
												&nbsp;<b>Consolas&nbsp;PS3</b><BR>
												&nbsp;<b>Consolas&nbsp;XBOX360</b><BR>
												&nbsp;<b>Consolas&nbsp;Wii&nbsp;U</b><BR>
												&nbsp;<b>Consolas&nbsp;Wii</b><BR>
												&nbsp;<b>Consolas&nbsp;PS2</b><BR>
												&nbsp;<b>Consolas&nbsp;Nintendo&nbsp;3DS</b><BR>
												&nbsp;<b>Consolas&nbsp;PS&nbsp;Vita</b><BR>
												&nbsp;<b>Consolas&nbsp;PSP</b><BR>
												&nbsp;<b>Consolas&nbsp;PSP</b><BR>
												&nbsp;<b>Accesorios&nbsp;para&nbsp;PS4</b><BR>
												&nbsp;<b>Videojuegos&nbsp;para&nbsp;PS4</b><BR>
												&nbsp;<b>Consolas&nbsp;PS4</b><BR>
										</TR>
																								
										</TABLE>
</CENTER>
</TD>
</TR>
</TABLE>
			</center>
			</div>
	</div>
		</div>
	
	<br><br>
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
