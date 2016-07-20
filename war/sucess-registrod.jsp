<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>VLATECSOFT | Registro Distribuidor</title>
	<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery-1.6.2.js" type="text/javascript"></script>
	<script src="js/jquery.validate.js" type="text/javascript"></script>
	<script src="js/messages_es.js" type="text/javascript"></script>
	<meta name="description" content="Ofrece lo último en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:url" content="http://1-dot-vlatecsoft.appspot.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnología en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://1-dot-vlatecsoft.appspot.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo último en Hardware al alcance de tus manos."/>
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
	<script>
		
	/* **********************  validacion del formulario  ****************** */
		$(document).ready(function(){
					   
			$("#frm_registro").validate({  
				rules:{  
					user:{  
					   required:true
					},
					pass:{  
					   required:true
					},
					cpass:{  
					   required:true
					}, 
					apPat:{  
					   required:true
					},
					apMat:{  
					   required:true
					}, 
					nombre:{  
					   required:true
					} ,
					dni:{  
					   required:true,
					   number: true 
					} ,
					email:{  
					   required:true ,
					   email:true  
					},  
					acepto_termino:{  
					   required:true
					}, 
					tel:{  
					   required:true,
					   number: true  
					} 
        		},
				messages: {
					acepto_termino:{  
					   required:'Seleccione la Casilla'  
					},
					dni:{  
					   number: 'solo numeros' 
					}, 
					email:{  
					   email:'email no valido' 
					},
					tel:{  
					   number: 'solo numeros' 
					}
				} 		        
			});       
	});  
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

<section class="wrapper">
	
	<div id="headForm"><!--Cabecera del formulario -->
	</div>

	<div id="div_registro" class="containerreg"><!--formulario  inicio-->
	<span class="titlereg"> Inscripci&oacute;n de Nuevos Distribuidores</span> 
	<span class="italicText">Todos los campos son obligatorios *</span>    
	<center><p style='color: #ffffff; background-color: #BC2626'>Registro Exitoso. </p></center>
	<div id="areaForm">	<!--Area del formulario  Inicio-->	
	        
	<form class="" id="frm_registro" name="frm_registro" method="POST" action="saveDistribuidor" onSubmit="return validarPasswd()" novalidate>	
	       
	<span class="titSeccion">Contacto Principal</span> 
	<div class="tablaTitulos"><span class="alignVert">Apellido Paterno</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="12" size="40" name="apPat"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Apellido Materno</span></div>
	<div class="cellInput"><input type="text" class="textBox"size="40" maxlength="12" name="apMat"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Nombres</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="20"  size="50" name="nombre"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Doc. Identidad</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="8" name="dni"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Email</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="25" size="50" name="email"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert1">Tel&eacute;fono Movil</span></div>
	<div class="cellInput" style="width:165px">
	<span class="tablaSub" >para recibir notificaciones sobre su inscripci&oacute;n</span>
	
	<input type="text" class="textBox" value="" maxlength="9" size="9" name="tel">             
	</div>
	
	<div class="cellInput" style="width:185px">
	
	</div>
	<div class="clean"></div>
	<input type="hidden" class="textBox" value="1" id="chkMaster" name="chkMaster">
	<input type="hidden" value="999">
	<br>
	
	<span class="titSeccion">Usuario Web</span> 
	<div class="tablaTitulos"><span class="alignVert">Usuario</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="8" size="40" name="user"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Contraseña</span></div>
	<div class="cellInput"><input type="password" class="textBox" maxlength="10" size="40" id="pass" name="pass"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Repita la Contraseña</span></div>
	<div class="cellInput"><input type="password" class="textBox" maxlength="10" value="" size="40"   id ="cpass"name="cpass"></div>
	<div class="clean"></div>
	<br>
	<div align="center">
	<span class="subtitle">T&eacute;rminos de garant&iacute;a</span>
	<div class="boxTerGaran">
	    
	TERMINOS DE GARANTIA<br><br>
	<strong>1 -Alcance de la Garantía</strong><br><br>
	
	1.1-Grupo Vlatecsoft no se responsabiliza por el desconocimiento de los términos de garantía del personal que entregue o recoja los productos en el área de Servicio al Cliente (Revise y verifique).
	<br>1.2-La garantía aplica sólo a la mercadería vendida por Grupo Vlatecsoft, no se extiende a terceros ni se responsabiliza por posibles daños a otra mercadería ni los producidos por el transporte de terceros y sólo se presta en nuestros centros de atención al cliente.
	<br>1.3-La garantía no incluye ningún tipo de instalación (solo del equipo). Dicho servicio tendrá un costo adicional.
	<br>1.4-En ningún caso Grupo Vlatecsoft se responsabiliza por el software u otros datos almacenados en la mercadería. Se recomienda realizar backups (copias de seguridad) en forma periódica. Grupo Vlatecsoft no se responsabiliza por posibles daños y/o perjuicios de cualquier naturaleza causados por fallas en la mercadería (a excepción de la propia mercadería adquirida en nuestras tiendas). Es obligatorio que al ensamblar se realice un control de calidad antes de entregar el producto final.
	<br>1.5-El periodo de garantía del servicio de ensamblaje de computadoras es de acuerdo a lo acordado(al comprar) y sólo cubre la mano de obra de la reparación. Esta garantía no cubre el software instalado u otra información instalada.
	<br>1.6-No se aceptarán cambios ni devoluciones por incompatibilidad (verifique compatibilidad en las propias marcas y modelos) con productos de otros proveedores ni por errores de compra, esto se encontrará sujeto a validación por el área de reclamos, así como a penalizaciones por gastos administrativos.
	<br><br>
	<strong>2 -Lineamientos de los Productos en Garantía</strong><br><br>
	<br>2.1-La mercadería debe ser remitida a nuestros centros de servicios debidamente protegida, con los accesorios completos, conforme fue despachada, en el caso de "cases" bastará traer la fuente de alimentación con su respectiva guía de remisión. En los casos que el producto sea de un lote se solicitará la guía de remisión para el ingreso del producto.
	<br>2.2-El cliente deberá indicar la falla específica de la mercadería al momento de entregarla. De no verificarse la falla descrita, la mercadería será devuelta. En el caso de envío de productos de provincia se deberá llenar el formato RMA especificando la falla del producto, el cual se encuentra colgado en el siguiente
	link: http//www.vlatecsoft.com/formulario.jsp.
	<br>2.3-La garantía de la mercadería no será válida en los siguientes casos: daño físico, etiquetas del fabricante o de Grupo Vlatecsoft adulteradas o removidas, evidencia de intento de reparación, evidencia de rayaduras o maltratos en las cubiertas plásticas, daños causados por fluctuaciones eléctricas externas,
	sobrecarga, mala instalación, cualquier elemento extraño (oxido, ácidos, líquidos, químicos, etc.), por desastres naturales o provocados (incendios, inundaciones, tormentas eléctricas, terremotos, etc.), por uso o almacenaje sin cumplir las especificaciones ambientales del fabricante.
	<br>2.4-La garantía no cubre accesorios, conectores, puertos de entrada y salida (paralelo, serial, etc.), o cabezales de impresoras. Así mismo no cubre consumibles y/o repuestos consumibles y componentes que se desgasten por el uso (consulte garantías del fabricante).
	<br>2.5-La recepción del producto, por parte de Servicio al Cliente, no implica un diagnostico definitivo y no garantiza la aplicación de la garantía del mismo, esto será validado por el especialista técnico. Por lo tanto, el cargo de recepción que se le entrega no garantiza la aplicación de la garantía del producto.
	<br>2.6-El cliente se encuentra en la obligación de ingresar al sistema listo (http://Vlatecsoft.com/garantias.jsp) para conocer el status de su producto, en el caso que estos se encuentren en la categoría "LISTO PARA RECOGER" y superen el tiempo de almacenamiento de 30 días Grupo Vlatecosft podrá disponer de los productos según como considere conveniente, siendo el producto declarado en ABANDONO.
	<br>2.7-Los productos enviados a nuestras oficinas que no cumplan con los requisitos indicados o que no cuenten con la información completa no serán aceptados.
	<br><br>
	<strong>3 -Tipos y Tiempos de Garantía</strong><br><br>
	<br>3.1-Los tipos y períodos de garantía se especifican en la lista de precios, guía de remisión y ficha de producto en nuestra web. Consulte con su ejecutivo de ventas cualquier duda antes de realizar su compra.
	<br>3.2-La mercadería con código de garantía "W" (Garantía del representante en el Perú) descritos en la lista de precios y en la ficha del producto en nuestra web, se rigen por las condiciones de garantía de los mismos representantes y se canalizan a través de sus Centros de Servicio Autorizados (CSA).
	<br>3.3-La mercadería con código de garantía "X" (Consultar), "Y" (Garantía sólo del fabricante) y "Z" (No aplica), deberán ser tramitadas directamente con el fabricante.
	<br>3.4-La mercadería que no se encuentre especificada en los puntos 3.2 y 3.3, se manejará bajo las siguientes modalidades:
	<br>3.4.1-Atención Inmediata: Durante este plazo la mercadería podrá ser remplazada inmediatamente después de verificada la falla de fabricación. Los requisitos son:
	<br>3.4.1.1-Despachos locales (3 días útiles después de la compra).
	<br>3.4.1.2-Despachos a otras provincias (5 días útiles después de la compra).
	<br>3.4.2-Atención Regular: El remplazó se realizará en un tiempo máximo de 30 días calendarios posteriores al ingreso del producto.
	<br>3.5-La mercadería de remplazó podrá ser: reparada, remanufacturada u otro producto de características similares o superiores de la misma marca u otra; y será garantizada por el período restante de la garantía.
	<br>3.6-En caso de no disponer de stock del producto de remplazó en el plazo máximo de atención se emitirá una nota de crédito, con el precio actualizado del producto a la fecha de emisión de la nota de crédito. La emisión de la nota de crédito no aplica para los casos con solución de remplazó de producto.
	<br>
	<br>
	Con el propósito de brindarles un mejor servicio en la atención de sus garantías y aclarar las posibles dudas, les invitamos a contactarse: Consultas Técnicas - email: garantias@vlatecsoft.com.pe
	Consultas administrativas y de gestión de garantías - email: garantias.cliente@vlatecsoft.com.pe
	Consultas sobre el estado de sus productos, ingresar al siguiente link: .http://Vlatecsoft.com/garantias.jsp
	Para mayor información visite nuestra página web www.deltron.com.pe www.Vlatecsoft.com.pe
	Los términos y condiciones de garantías pueden ser modificados sin previo aviso. El cliente declara su consentimiento
	</div>
	
	<div class="checkboxStyle">
	<input type="checkbox" name="acepto_termino" style="display:inline; padding-top:5px;" >
	<span style="display:inline; width:20%; padding-top:5px;">Acepto los términos</span>
	</div>
	<br>
	<input  style="color: #ffffff; margin: 0 auto;background-color: #338790" type="submit" name="guardar" id="guardar" value="Guardar">
	</div>	
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