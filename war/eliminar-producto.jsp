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
					<a href="eliminar-producto">Eliminar Producto</a>
				</li>
				<li>
					<a>Usuario</a>
					<ul class="children">
						<li><a href="informacion-distribuidor.jsp">Información de la Cuenta</a></li>
						<li><a href="up-distribuidor.jsp">Actualizar Información</a></li>
						<li><a href="del-distribuidor.jsp">Eliminar Cuenta</a></li>
						<li><a href="index.jsp">Cerrar Sesión</a></li>
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
						<li><a href="index.jsp">Cerrar Sesión</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>


<section class="wrapper">
<div class="top2">
	<div class="page-title">
		<div class="container">
			<div class="h1color"><h1>Eliminar Productos</h1></div>
		</div>
		<div class="container">
	
		
			<div class="datagrid1">
			<%@ page import="ServicesModel.*" import="java.util.List"
	import="javax.jdo.Query" import="javax.jdo.PersistenceManager"
%>
<% 	PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery(Producto.class);
	List<Producto> p = (List<Producto>) q.execute();%>
	<table border='4'>
	<THEAD><tr>
		<th WIDTH="30"> N </th>
		<th WIDTH="200"> Grupo </th>
		<th WIDTH="100"> Marca </th>
		<th WIDTH="150"> Linea </th>
		<th WIDTH="120"> Item </th>
		<th WIDTH="300"> Descripción </th>
		<th WIDTH="100"> Fecha </th>
		<th WIDTH="100"> Estado </th>
		<th WIDTH="100"> Opcion </th>
		
	</tr></THEAD>
		<% for(int i=0;i<p.size();i++){ %>
		<% String estado= (p.get(i).getContest())? " Disponible":"No Disponible"; %>
			<form action="removeProducto" method="post">
			<tbody>
				<tr>
					<input type="hidden"  name="indice" value="<%=i+1%>">
					<td><%=i+1%></td>
					<td><%=p.get(i).getGrupo()%></td>
					<td><%=p.get(i).getMarca()%></td>
					<td><%=p.get(i).getLinea()%></td>
					<td><%=p.get(i).getItem()%></td>
					<td><%=p.get(i).getDescripcion()%></td>
					<td><%=p.get(i).getFecha()%></td>
					<td><%=estado%></td>
					<td><input style='color:#fff; background-color: #FF9900' type='submit' value='Eliminar'></td>
				</tr>
				</tbody>
			</form>
		<%} %>
		</table>

			</div>
		</div>
	</div>
</div>
	
	</section>



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