<!DOCTYPE html>
<html lang="en">

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
				<li><a href="login-admin.jsp">Cerrar Sesión</a></li>
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
				
				<li><a href="login-admin.jsp">Cerrar Sesión</a></li>
			</ul>
		</div>
	</div>
	<i class="icon-menu"></i>
</header>


<div class="top2">
	<div class="page-title">
		<div class="container">
			<div class="h1color"><h1>Eliminar Clientes</h1></div>
		</div>
		<div class="container">
	
		
			<div class="datagrid1">
			<%@ page import="ServicesModel.*" import="java.util.List"
	import="javax.jdo.Query" import="javax.jdo.PersistenceManager"
%>
<% 	PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery(Cliente.class);
	List<Cliente> p = (List<Cliente>) q.execute();%>
	<table border='4'>
	<THEAD><tr>
		<th WIDTH="30"> N </th>
		<th WIDTH="300"> Nombres </th>
		<th WIDTH="300"> Apellidos </th>
		<th WIDTH="150"> Fecha de Nacimiento </th>
		<th WIDTH="120"> Sexo </th>
		<th WIDTH="150"> User </th>
		<th WIDTH="200"> Pass </th>
		<th WIDTH="120"> Estado </th>
		<th WIDTH="120"> Opcion </th>
		
	</tr></THEAD>
		<% for(int i=0;i<p.size();i++){ %>
		<% String estado= (p.get(i).getContest())? " Activo":"No Activo"; %>
			<form action="removeCliente" method="post">
			<tbody>
				<tr>
					<input type="hidden"  name="indice" value="<%=i+1%>">
					<td><%=i+1%></td>
					<td><%=p.get(i).getNombres()%></td>
					<td><%=p.get(i).getApellidos()%></td>
					<td><%=p.get(i).getFecha()%></td>
					<td><%=p.get(i).getSexo()%></td>
					<td><%=p.get(i).getUser()%></td>
					<td><%=p.get(i).getPass().substring(0,1)+"*********"%></td>
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