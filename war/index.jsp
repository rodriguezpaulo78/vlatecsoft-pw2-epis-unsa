<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Tecnología en tus manos</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-ui.js"></script>
	
	<link rel="stylesheet" href="css/table.css">
		<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript" src="js/shCore.js"></script>
<script language="javascript" src="js/shBrushJScript.js"></script>
<script language="javascript">$(function() { dp.SyntaxHighlighter.HighlightAll('code'); });</script><script type="text/javascript" src="js/table.js"></script>
	

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
   				<li><a><% out.println(misesion.getAttribute("username")); %></a>
					<ul class="children">
						<li><a href="informacion-cliente.jsp">Información de la Cuenta</a></li>
						<% if(misesion.getClass().equals(Cliente.class)){%>
						<li><a href="/cerrarSesionCliente">Cerrar Sesión</a></li>
						<%}else{ %>
						<li><a href="/cerrarSesionDistribuidor">Cerrar Sesión</a></li>
						<%} %>
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
			<div class="h1color"><h1>¡Sé Parte de Vlatecsoft!</h1></div>
			<h4>Regístrate para obtener beneficios o unirte a nuestro equipo de trabajo.</h4>
			<ul id="botones" class="botones">
				<li><a href="registro-cliente.jsp">Regístrate Aquí Cliente</a></li>
			</ul>
		</div>
	</div>
</div>

<div class="franja">
		<div class="container">
		</div>
</div>

<section class="wrapper">
	<div class="phones">
		<div class="container">
			<div class="title">

				<h1>Lista de Productos Disponibles.</h1>
			
				
			<div class="datagrid1">
			<%@ page import="ServicesModel.*" import="java.util.List"
	import="javax.jdo.Query" import="javax.jdo.PersistenceManager"
%>
<% 	PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery(Producto.class);
	List<Producto> p = (List<Producto>) q.execute();%>
	<table border='4' id="t1"  class="example table-autosort table-autofilter table-autopage:10 table-stripeclass:alternate table-page-number:t1page table-page-count:t1pages table-filtered-rowcount:t1filtercount table-rowcount:t1allcount">
	<THEAD><tr>
		<th WIDTH="30" class="table-filterable table-sortable:numeric"> N </th>
		<th WIDTH="200" class="table-filterable table-sortable:default"> Grupo </th>
		<th WIDTH="100" class="table-filterable table-sortable:default"> Marca </th>
		<th WIDTH="150" class="table-sortable:numeric"> Linea </th>
		<th WIDTH="120" class="table-sortable:numeric"> Item </th>
		<th WIDTH="300" class="table-sortable:default"> Descripción </th>
		<th class="table-sortable:date" WIDTH="80"> Fecha </th>
		<% if(misesion.getAttribute("username") != null){%>
		<th class="table-sortable:numeric" WIDTH="70"> Precio </th>
		<%} %>
		<th WIDTH="80" class="table-filterable table-sortable:default"> Estado </th>
	</tr></THEAD><tbody>
		<% for(int i=0;i<p.size();i++){ %>
		<% String estado= (p.get(i).getContest())? "Disponible":"No Disponible"; %>
			
			
				<tr>
					<td><%=i+1%></td>
					<td><%=p.get(i).getGrupo()%></td>
					<td><%=p.get(i).getMarca()%></td>
					<td><%=p.get(i).getLinea()%></td>
					<td><%=p.get(i).getItem()%></td>
					<td><%=p.get(i).getDescripcion()%></td>
					<td><%=p.get(i).getFecha()%></td>
					<% if(misesion.getAttribute("username") != null){%>
					<td><%=p.get(i).getPrecio()%></td>
					<%} %>
					<td><%=estado%></td>
				</tr>
				
			
		<%} %>
		</tbody>
		<tfoot>
	<tr>
		<td class="table-page:previous" style="color:white;text-align:center;cursor:pointer;">Anterior</td>
		<% if(misesion.getAttribute("username") != null){%>
		<td colspan="7" style="color:white;text-align:center;">Pagina <span id="t1page"></span>&nbsp;de <span id="t1pages"></span></td>
		<%}else{ %>
		<td colspan="6" style="color:white;text-align:center;">Pagina <span id="t1page"></span>&nbsp;de <span id="t1pages"></span></td>
		<%} %>
		<td class="table-page:next" style="color:white;text-align:center;cursor:pointer;">Siguiente</td>
		
	</tr>
	<tr>
		<% if(misesion.getAttribute("username") != null){%>
		<td colspan="9"style="color:white;text-align:center;"><span id="t1filtercount"></span>&nbsp;of <span id="t1allcount"></span>&nbsp;rows match filter(s)</td>
		<%}else{ %>
		<td colspan="8"style="color:white;text-align:center;"><span id="t1filtercount"></span>&nbsp;of <span id="t1allcount"></span>&nbsp;rows match filter(s)</td>
		<%} %>
</tfoot>
		</table>

</div>
			</div>
	</div>
		</div>
	
	
	<div class="franja">
		<div class="container">
		</div>
	</div>
	
	<div class="container boxes">
		<h1>La mejor opción para comprar Hardware</h1>
		<ul>
			<li><a href="productos.jsp"><img src="images/1.jpg" alt="Vlatecsoft Productos"></a></li>
			<li><h3>Hardware</h3></li>
			<li><p>Te ofrecemos lo ultimo del mercado en Tecnología.</p></li>
			<li><a class="more" href="productos.jsp">Leer más</a></li>
		</ul>
		<ul>
			<li><a href="compras.jsp"><img src="images/2.jpg" alt="Vlatecsoft Tienda"></a></li>
			<li><h3>Marcas</h3></li>
			<li><p>Te brindamos las mejores marcas.</p></li>
			<li><a class="more" href="productos-marca.jsp">Leer más</a></li>
		</ul>
		<ul>
			<li><a href="servicio-pfc.jsp"><img src="images/3.jpg" alt="Vlatecsoft servicio"></a></li>
			<li><h3>Servicio Técnico</h3></li>
			<li><p>Te ofrecemos un servicio Post Venta eficaz.</p></li>
			<li><a class="more" href="servicio-pfc.jsp">Leer más</a></li>
		</ul>
		<ul class="last">
			<li><a href="nosotros.jsp"><img src="images/4.jpg" alt="Vlatecsoft información"></a></li>
			<li><h3>Vlatecsoft</h3></li>
			<li><p>Ponte al tanto de lo ultimo en Tecnología.</p></li>
			<li><a class="more" href="nosotros.jsp">Leer más</a></li>
		</ul>
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