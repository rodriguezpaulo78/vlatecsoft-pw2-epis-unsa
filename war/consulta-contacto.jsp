<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%HttpSession sesionadmin= request.getSession(); %>
    <% if(sesionadmin.getAttribute("username") == null){
    	response.sendRedirect("login-admin-notfound.jsp");
    } %>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Administradores</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	
	<link rel="stylesheet" href="css/table.css">
		<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript" src="js/shCore.js"></script>
<script language="javascript" src="js/shBrushJScript.js"></script>
<script language="javascript">$(function() { dp.SyntaxHighlighter.HighlightAll('code'); });</script><script type="text/javascript" src="js/table.js"></script>
	
	
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
					<a>Clientes</a>
					<ul class="children">
						<li><a href="consulta-clientes.jsp">Lista de Clientes</a></li>
						<li><a href="update-cliente.jsp">Actualizar a un Cliente</a></li>
						<li><a href="eliminar-cliente.jsp">Eliminar a un Cliente</a></li>
						
					</ul>
				</li>
				
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="consulta-distribuidores.jsp">Lista de Distribuidores</a></li>
						<li><a href="update-distribuidor.jsp">Actualizar a un Distribuidor</a></li>
						<li><a href="eliminar-distribuidor.jsp">Eliminar a un Distribuidor</a></li>
					</ul>
				</li>
				
				
				<li>
					<a>Mensajes</a>
					<ul class="children">
						<li><a href="consulta-contacto.jsp">Lista de Mensajes</a></li>
						<li><a href="update-contacto.jsp">Actualización de Mensajes</a></li>
						<li><a href="eliminar-contacto.jsp">Eliminación de Mensajes</a></li>
					</ul>
				</li>
				<li><a href="/cerrarSesionAdmin">Cerrar Sesión</a></li>
			</ul>
		</nav>
		<div class="nav-mobil">
			<i class="icon-cancel"></i>
			<ul>
				<li>
					<a>Clientes</a>
					<ul class="children">
						<li><a href="consulta-clientes.jsp">Lista de Clientes</a></li>
						<li><a href="update-cliente.jsp">Actualizar a un Cliente</a></li>
						<li><a href="eliminar-cliente.jsp">Eliminar a un Cliente</a></li>
					</ul>
				</li>
				
				<li>
					<a>Distribuidores</a>
					<ul class="children">
						<li><a href="consulta-distribuidores.jsp">Lista de Distribuidores</a></li>
						<li><a href="update-distribuidor.jsp">Actualizar a un Distribuidor</a></li>
						<li><a href="eliminar-distribuidor.jsp">Eliminar a un Distribuidor</a></li>
					</ul>
				</li>
				
				
				<li>
					<a>Mensajes</a>
					<ul class="children">
						<li><a href="consulta-contacto.jsp">Lista de Mensajes</a></li>
						<li><a href="update-contacto.jsp">Actualización de Mensajes</a></li>
						<li><a href="eliminar-contacto.jsp">Eliminación de Mensajes</a></li>
					</ul>
				</li>
				
				<li><a href="/cerrarSesionAdmin">Cerrar Sesión</a></li>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>


<div class="top2">
	<div class="page-title">
		<div class="container">
			<div class="h1color"><h1>Lista de Mensajes</h1></div>
		</div>
		<div class="container">
			<div class="datagrid1">
			<%@ page import="ServicesModel.*" import="java.util.List"
	import="javax.jdo.Query" import="javax.jdo.PersistenceManager"
%>
<% 	PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery(Contacto.class);
	List<Contacto> p = (List<Contacto>) q.execute();%>
	<table border='4' id="t1"  class="example table-autosort table-autofilter table-autopage:10 table-stripeclass:alternate table-page-number:t1page table-page-count:t1pages table-filtered-rowcount:t1filtercount table-rowcount:t1allcount">
	<THEAD><tr>
		<th WIDTH="30" class="table-filterable table-sortable:numeric"> N </th>
		<th WIDTH="200" class="table-sortable:default"> Nombre </th>
		<th WIDTH="250" class="table-sortable:default"> Correo </th>
		<th WIDTH="450" class="table-sortable:default"> Comentario </th>
		<th WIDTH="120" class="table-filterable table-sortable:default"> Estado </th>
		
	</tr></THEAD><tbody>

		<% for(int i=0;i<p.size();i++){ %>
		<% String estado= (p.get(i).getContest())? "Contestado":"No Contestado"; %>
			<form>
		
				<tr>
					<td><%=i+1%></td>
					<td><%=p.get(i).getName()%></td>
					<td><%=p.get(i).getEmail()%></td>
					<td><%=p.get(i).getComentary()%></td>
					<td><%=estado%></td>
					
				</tr>
			</form>
		<%} %>
		</tbody>
		<tfoot>
	<tr>
		<td class="table-page:previous" style="color:white;text-align:center;cursor:pointer;">Anterior</td>
		<td colspan="3" style="color:white;text-align:center;">Pagina <span id="t1page"></span>&nbsp;de <span id="t1pages"></span></td>
		<td class="table-page:next" style="color:white;text-align:center;cursor:pointer;">Siguiente</td>
		
	</tr>
	<tr>
		<td colspan="5"style="color:white;text-align:center;"><span id="t1filtercount"></span>&nbsp;of <span id="t1allcount"></span>&nbsp;rows match filter(s)</td>
</tfoot>
		
		</table>

			</div>
		</div>
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