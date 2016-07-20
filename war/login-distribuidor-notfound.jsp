<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Refresh" content="4;url=login-distribuidor.jsp">
<title>Error</title>
<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.jpg">
<link rel="stylesheet" type="text/css" href="../css/iniciarSesionUsuario.css">
<script language="JavaScript">
 
    /* Determinamos el tiempo total en segundos */
    var totalTiempo=5;
    /* Determinamos la url donde redireccionar */
    var url="login-admin.jsp";
 
    function updateReloj()
    {
        document.getElementById('footer2').innerHTML = "Primero debe Iniciar Sesión para ingresar a esta página!, Redireccionando en "+totalTiempo+" segundos";
 
        if(totalTiempo==0)
        {
            window.location=url;
        }else{
            /* Restamos un segundo al tiempo restante */
            totalTiempo-=1;
            /* Ejecutamos nuevamente la función al pasar 1000 milisegundos (1 segundo) */
            setTimeout("updateReloj()",1000);
        }
    }
 
    window.onload=updateReloj;
 
    </script>
</head>
<body>
<p id="footer2"></p>
<p id="footer3">Si no eres redireccionado automáticamente pulsa en el siguiente enlace : <a href="login-distribuidor.jsp"> Inicio de Sesión de Distribuidores.</a></p>

</body>
</html>