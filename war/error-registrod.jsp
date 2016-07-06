<!DOCTYPE html>
<html lang="en">

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
	<meta name="description" content="Ofrece lo �ltimo en Hardware al alcance de tus manos.">
	<meta property="og:site_name" content="VLATECSOFT | Tecnolog�a en tus manos"/>
	<meta property="og:url" content="http://1-dot-vlatecsoft.appspot.com"/>
	<meta property="og:title" content="VLATECSOFT | Tecnolog�a en tus manos"/>
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="http://1-dot-vlatecsoft.appspot.com/images/default.png"/>
	<meta property="og:description" content="Ofrece lo �ltimo en Hardware al alcance de tus manos."/>
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
	  alert ("La contrase�a no puede contener espacios en blanco");
	  return false;
	}
	
	if (p1.length == 0 || p2.length == 0) {
		  alert("Los campos de la contrase�a no pueden quedar vacios!");
		  return false;
		}
	
	if (p1 != p2) {
		  alert("Las contrase�as deben de coincidir!");
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
					            
					            /* *** contacto 1 **  */
								apePat:{  
					                required:true
					            },
					            apeMat:{  
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
					<a href="galeria.jsp">Nosotros</a>
					<ul class="children">
						<li><a href="nosotros.jsp">�Qui�nes somos?</a></li>
						<li><a href="galeria.jsp">Galer�a</a></li>
						<li><a href="javascript:void(0);" id="opener" class="boton">Escr�benos</a></li>
					</ul>
				</li>
				
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="#">Productos seg�n Tipo</a></li>
						<li><a href="#">Productos seg�n Marca</a></li>
						<li><a href="#">Productos seg�n Precio</a></li>
					</ul>
				</li>
				
				<li><a href="compras.jsp">Compras en L�nea</a></li>
				
				<li>
					<a href="servicio.jsp">Servicio T�cnico</a>
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
						<li><a href="login-distribuidor.jsp">Extranet-Actualizaci�n de Datos</a></li>
						<li><a href="archivos/deltron.pdf">T�rminos</a></li>
					</ul>
				</li>
				<li><a href="contacto.jsp">Cont�ctanos</a></li>
				<li><a href="login-cliente.jsp">Iniciar Sesi�n</a></li>
			</ul>
		</nav>
		<div class="nav-mobil">
			<i class="icon-cancel"></i>
			<ul>
				<li>
					<a href="galeria.jsp">Nosotros</a>
					<ul class="children">
						<li><a href="nosotros.jsp">�Qui�nes somos?</a></li>
						<li><a href="galeria.jsp">Galer�a</a></li>
						<li class="boton"><a  href="javascript:void(0);" id="opener" class="boton">Escr�benos</a></li>
					</ul>
				</li>
				<li>
					<a href="productos.jsp">Productos</a>
					<ul class="children">
						<li><a href="#">Productos seg�n Tipo</a></li>
						<li><a href="#">Productos seg�n Marca</a></li>
						<li><a href="#">Productos seg�n Precio</a></li>
					</ul>
				</li>
				<li><a href="compras.jsp">Compras en L�nea</a></li>
				<li>
					<a href="servicio.jsp">Servicio T�cnico</a>
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
						<li><a href="login-distribuidor.jsp">Extranet-Actualizaci�n de Datos</a></li>
						<li><a href="archivos/deltron.pdf">T�rminos</a></li>
					</ul>
					</ul>
				</li>
				
				<li><a href="contacto.jsp">Cont�ctanos</a></li>
				<li><a href="login-cliente.jsp">Iniciar Sesi�n</a></li>
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
	<center><p style='color: #ffffff; background-color: #BC2626'>Ocurri� un error, Intentelo de nuevo.</p></center>
	<div id="areaForm">	<!--Area del formulario  Inicio-->	
	        
	<form class="" id="frm_registro" name="frm_registro" method="POST" action="saveDistribuidor" onSubmit="return validarPasswd()" novalidate>	
	       
	<!--	************ Personal Natural o Empresa *******************************	-->
	
	<span class="titSeccion">Contacto Principal</span> 
	<div class="tablaTitulos"><span class="alignVert">Apellido Paterno</span></div>
	<div class="cellInput"><input type="text" class="textBox" size="40" name="apePat"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Apellido Materno</span></div>
	<div class="cellInput"><input type="text" class="textBox" size="40" name="apeMat"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Nombres</span></div>
	<div class="cellInput"><input type="text" class="textBox" value="" size="50" name="nombre"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Doc. Identidad</span></div>
	<div class="cellInput"><input type="text" class="textBox" maxlength="8" name="dni"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Email</span></div>
	<div class="cellInput"><input type="text" class="textBox" size="50" name="email"></div>
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
	
	<!--	*********************************** /////// *******************************	-->	
							
	<!--	****************** contacto y Usuario Web************************	-->
	<span class="titSeccion">Usuario Web</span> 
	<div class="tablaTitulos"><span class="alignVert">Usuario</span></div>
	<div class="cellInput"><input type="text" class="textBox" size="40" name="user"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Contrase�a</span></div>
	<div class="cellInput"><input type="password" class="textBox" size="40" id="pass" name="pass"></div>
	<div class="clean"></div>
	
	<div class="tablaTitulos"><span class="alignVert">Repita la Contrase�a</span></div>
	<div class="cellInput"><input type="password" class="textBox" value="" size="50"   id ="cpass"name="cpass"></div>
	<div class="clean"></div>
	<br>
	<div align="center">
	<span class="subtitle">T&eacute;rminos de garant&iacute;a</span>
	<div class="boxTerGaran">
	    
	TERMINOS DE GARANTIA (DCWGAR001)<br><br>
	<strong>1 -Alcance de la Garant�a</strong><br><br>
	
	1.1-Grupo Deltron no se responsabiliza por el desconocimiento de los t�rminos de garant�a del personal que entregue o recoja los productos en el �rea de Servicio al Cliente.<br>
	1.2-La garant�a aplica s�lo a la mercader�a vendida por Grupo Deltron, no se extiende a terceros ni se responsabiliza por posibles da�os a otra mercader�a ni los producidos por el transporte de terceros y s�lo se presta en nuestros centros de servicios.<br>
	1.3-La garant�a no incluye ning�n tipo de instalaci�n. Dicho servicio tendr� un costo adicional.<br>
	1.4-En ning�n caso Grupo Deltron se responsabiliza por el software u otros datos almacenados en la mercader�a. Se recomienda realizar backups (copias de respaldo) en forma peri�dica. Grupo Deltron no se responsabiliza por posibles da�os y/o perjuicios de cualquier naturaleza causados por fallas en la mercader�a (a excepci�n de la propia mercader�a). Es obligatorio que al ensamblar se realice un control de calidad antes de entregar el producto final.<br>
	1.5-El periodo de garant�a del servicio de ensamblaje de computadoras es de un a�o y s�lo cubre la mano de obra de la reparaci�n. Esta garant�a no cubre el software instalado u otra informaci�n instalada.<br>
	1.6-No se aceptar�n cambios ni devoluciones por incompatibilidad con productos de otros proveedores ni por errores de compra, esto se encontrar� sujeto a validaci�n por el �rea de reclamos, as� como a penalizaciones por gastos administrativos.<br>
	<br>
	<strong>2 -Lineamientos de los Productos en Garant�a</strong><br><br>
	2.1-La mercader�a debe ser remitida a nuestros centros de servicios debidamente protegida, con los accesorios completos, conforme fue despachada, en el caso de "cases" bastar� traer la fuente de alimentaci�n con su respectiva gu�a de remisi�n. En los casos que el producto sea de un lote se solicitar� la gu�a de remisi�n para el ingreso del producto.<br>
	2.2-El cliente deber� indicar la falla espec�fica de la mercader�a al momento de entregarla. De no verificarse la falla descrita, la mercader�a ser� devuelta. En el caso de env�o de productos de provincia se deber� llenar el formato RMA especificando la falla del producto, el cual se encuentra colgado en el siguiente link:http://intra-www2.deltron.com.pe/images/envios/descargar_formato.html?.<br>
	2.3-La garant�a de la mercader�a no ser� v�lida en los siguientes casos: da�o f�sico, etiquetas del fabricante o de Grupo Deltron adulteradas o removidas, evidencia de intento de reparaci�n, evidencia de rayaduras o maltratos en las cubiertas pl�sticas, da�os causados por fluctuaciones el�ctricas externas, sobrecarga, mala instalaci�n, cualquier elemento extra�o (oxido, �cidos, l�quidos, qu�micos, etc.), por desastres naturales o provocados (incendios, inundaciones, tormentas el�ctricas, terremotos, etc.), por uso o almacenaje sin cumplir las especificaciones ambientales del fabricante.<br>
	2.4-La garant�a no cubre accesorios, conectores, puertos de entrada y salida (paralelo, serial, etc.), o cabezales de impresoras. As� mismo no cubre consumibles y/o repuestos consumibles y componentes que se desgasten por el uso.<br>
	2.5-La recepci�n del producto, por parte de Servicio al Cliente, no implica un diagnostico definitivo y no garantiza la aplicaci�n de la garant�a del mismo, esto ser� validado por el especialista t�cnico. Por lo tanto, el cargo de recepci�n que se le entrega no garantiza la aplicaci�n de la garant�a del producto.<br>
	2.6-El cliente se encuentra en la obligaci�n de ingresar al sistema listo (http://listo.deltron.com.pe/precargos) para conocer el status de su producto, en el caso que estos se encuentren en la categor�a "LISTO PARA RECOGER" y superen el tiempo de almacenamiento de 30 d�as Grupo Deltron podr� disponer de los productos seg�n como considere conveniente, siendo el producto declarado en ABANDONO.<br>
	2.7-Los productos enviados a nuestras oficinas que no cumplan con los requisitos indicados o que no cuenten con la informaci�n completa no ser�n aceptados.<br>
	<br>
	<strong>3 -Tipos y Tiempos de Garant�a</strong><br><br>
	3.1-Los tipos y per�odos de garant�a se especifican en la lista de precios, gu�a de remisi�n y ficha de producto en nuestra web. Consulte con su ejecutivo de ventas cualquier duda antes de realizar su compra.<br>
	3.2-La mercader�a con c�digo de garant�a "W" (Garant�a del representante en el Per�) descritos en la lista de precios y en la ficha del producto en nuestra web, se rigen por las condiciones de garant�a de los mismos representantes y se canalizan a trav�s de sus Centros de Servicio Autorizados (CSA).<br>
	3.3-La mercader�a con c�digo de garant�a "X" (Consultar), "Y" (Garant�a s�lo del fabricante) y "Z" (No aplica), deber�n ser tramitadas directamente con el fabricante.<br>
	3.4-La mercader�a que no se encuentre especificada en los puntos 3.2 y 3.3, se manejar� bajo las siguientes modalidades:<br>
	3.4.1-Atenci�n Inmediata: Durante este plazo la mercader�a podr� ser remplazada inmediatamente despu�s de verificada la falla de fabricaci�n. Los requisitos son:<br>
	3.4.1.1-Despachos locales (3 d�as �tiles despu�s de la compra).<br>
	3.4.1.2-Despachos a otras provincias (5 d�as �tiles despu�s de la compra).<br>
	3.4.2-Atenci�n Regular: El remplaz� se realizar� en un tiempo m�ximo de 30 d�as calendarios posteriores al ingreso del producto.<br>
	3.5-La mercader�a de remplaz� podr� ser: reparada, remanufacturada u otro producto de caracter�sticas similares o superiores de la misma marca u otra; y ser� garantizada por el per�odo restante de la garant�a.<br>
	3.6-En caso de no disponer de stock del producto de remplaz� en el plazo m�ximo de atenci�n se emitir� una nota de cr�dito, con el precio actualizado del producto a la fecha de emisi�n de la nota de cr�dito. La emisi�n de la nota de cr�dito no aplica para los casos con soluci�n de remplaz� de producto.<br>
	<br>
	<br>
	Con el prop�sito de brindarles un mejor servicio en la atenci�n de sus garant�as y aclarar las posibles dudas, les invitamos a contactarse: Consultas T�cnicas - email: soporte@deltron.com.pe<br><br>
	
	Consultas administrativas y de gesti�n de garant�as - email: servicio.cliente@deltron.com.pe<br><br>
	
	Consultas sobre el estado de sus productos, ingresar al siguiente link: .http://listo.deltron.com.pe/precargos<br><br>
	
	Para mayor informaci�n visite nuestra p�gina web www.deltron.com.pe www.deltron.com.pe
	Los t�rminos y condiciones de garant�as pueden ser modificados sin previo aviso. El cliente declara su consentimiento respecto a los t�rminos de la presente es libre y voluntario, sin que medie dolo, error ni vicio alguno que pudiera invalidarla parcial totalmente.<br>
	 
	</div>
	
	<div class="checkboxStyle">
	<input type="checkbox" name="acepto_termino" style="display:inline; padding-top:5px;" >
	<span style="display:inline; width:20%; padding-top:5px;">Acepto los t�rminos</span>
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
				<li><a href="compras.jsp">Compras en L�nea</a></li>
				<li><a href="servicio.jsp">S�rvicio Tecnico</a></li>
				<li><a href="galeria.jsp">Informaci�n de la Empresa</a></li>
			</ul>
		</div>
		<div class="box three">
			<h3>Soporte</h3>
			<ul>
				<li><a href="contacto.jsp">Contacto</a></li>
				<li>Ll�manos (+511) 416 - 2018</li>
			</ul>
		</div>
		<div class="box four">
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
				<li><a href="servicio.jsp">Servicio T�cnico</a></li>
				<li><a href="galeria.jsp">Informaci�n de la Empresa</a></li>
				</ul>
			</div>
			<h3>Soporte <i class="icon-down-open"></i></h3>
			<div class="container">
				<ul>
					<li><a href="contacto.jsp">Contacto</a></li>
					<li>Ll�manos (+511) 416 - 2018</li>
				</ul>
			</div>
		</div>
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