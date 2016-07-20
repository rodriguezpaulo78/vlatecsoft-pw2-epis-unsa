<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<li><a href="informacion-cliente.jsp">Información de la Cuenta</a></li>
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
			<h4>Te ofrecemos los productos con las mejores marcas.</h4>
		</div>
	</div>
</div>
<br><br>
<section class="wrapper">
	<div class="phones">
		<div class="container">
			<div class="title">

<center>			
<TABLE BORDER CELLSPACING=0 CELLPADDING=0 bordercolorlight="#D5EAFF" bordercolordark="#E8F8FF" bordercolor="#CEEFFF">
<TR BGCOLOR="#004F75" bordercolorlight="#0078B3" bordercolordark="#002233">
<TD ALIGN=CENTER VALIGN=CENTER HEIGHT="35">

<CENTER>
<FONT COLOR="#FFFFFF">
<B>MARCAS</B>
</FONT></CENTER>
</TD>
</TR>
<TR>
<TD>
<CENTER>

<TABLE BORDER CELLSPACING=0 CELLPADDING=0>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.adata.com/index_en.html">
<IMG SRC='data:image/png;base64,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' BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>A-DATA</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.advanceperu.com/">
<IMG SRC='data:image/png;base64,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' BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>ADVANCE COMPUTER CORP</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>

<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://latin.aoc.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000125.gif.pagespeed.ic.tsv8KcQsuk.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>AOC</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.asus.com/latin/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000037.gif.pagespeed.ic.h59c-gc5m4.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>ASUS</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://latam.benq.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000124.gif.pagespeed.ic.UYzZdstGyo.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>BENQ</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.cla.canon.com/cla/es/home">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000023.gif.pagespeed.ic.afmnuyN_5e.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>CANON</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.corsair.com/en">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000226.gif.pagespeed.ic.qu2buSly61.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>CORSAIR</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>

<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="https://www.crucial.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000298.gif.pagespeed.ic.QcvIxryhdj.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>CRUCIAL</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>

<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.ctlife.us/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000338.gif.pagespeed.ic.2a143IUlq2.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>CT LIFE</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.dell.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000245.gif.pagespeed.ic.TrM6PAVWET.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>DELL</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="https://latin.epson.com/select/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000024.gif.pagespeed.ic.R6ExPVduaK.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>EPSON</B>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.evga.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000264.gif.pagespeed.ic.xYY-KiAHUS.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>EVGA</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.geniusnet.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000013.gif.pagespeed.ic.F_UuA5uLJb.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>GENIUS</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://halion.com.pe/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/lineas/150x50xdefault.jpg.pagespeed.ic.AdU_y15bWE.jpg' HEIGHT=50 WIDTH=150 border=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>HALION</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.hp.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000314.gif.pagespeed.ic.Xs_KmxsN1I.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>HP STORAGE</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.intel.es/content/www/es/es/homepage.html">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000002.gif.pagespeed.ic.LvrlVYSvj9.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>INTEL CORP</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.kingston.com/latam">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000079.gif.pagespeed.ic.Xn8ILJMhBd.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>KINGSTON</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.lenovo.com/pe/es/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000139.gif.pagespeed.ic.uwwciI8jA2.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>LENOVO</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.lg.com/es">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000016.gif.pagespeed.ic.9iv3w6PqVd.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>LG ELECTRONICS</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="https://www.logitech.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000017.gif.pagespeed.ic.kg3NnJhMNG.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>LOGITECH</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="https://www.microsoft.com/es-es/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000018.gif.pagespeed.ic.pq2uBBfbuH.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>MICROSOFT OEM</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.nokia.com/es_int">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000300.gif.pagespeed.ic.YIApqATTaz.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>NOKIA</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.panasonic.com/es/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000041.gif.pagespeed.ic.j9x2u_Ya2k.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>PANASONIC</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


</TR>

<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.samsung.com/latin/home/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000004.gif.pagespeed.ic.in49m3G4TP.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>SAMSUNG</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>



<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.sony.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000011.gif.pagespeed.ic.gBhVzQ3M8-.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>SONY</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>


<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="http://www.toshiba.com/tai/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000005.gif.pagespeed.ic.HtnTKyPwKB.jpg' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>TOSHIBA</B></center>
<BR>&nbsp; &nbsp;
</TD>
</TR>

<TR>
<TD ALIGN=CENTER VALIGN=CENTER WIDTH="155" HEIGHT="65" BGCOLOR="#007AC4" bordercolorlight="#0078B3" bordercolordark="#002233">
<A HREF="https://www.xerox.com/">
<IMG SRC='http://imagenes.deltron.com.pe/images/productos/marcas/150x50xm000085.gif.pagespeed.ic.d9rlqz9fHG.png' HEIGHT=50 WIDTH=150 BORDER=0></A>
</TD>
<TD WIDTH="602">&nbsp;
<center><B>XEROX</B></center>
<BR>&nbsp; &nbsp;
</TD>
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
	
</section>


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