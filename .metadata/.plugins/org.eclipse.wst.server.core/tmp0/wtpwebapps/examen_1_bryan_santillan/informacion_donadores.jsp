<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Información de Donadores</title>
<link href="style.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
<div class="cuadro">
<h1 class="titulo">Ayuda Alimentaria</h1>
</div>
<nav>
<ul class="menu">
<li class="item"><a href="informacion_donadores.jsp">Información de Donadores</a></li>
<li class="item"><a href="Lista_donadores.jsp">Lista de Donadores</a></li>
<li class="item"><a href="cambiar_contraseña.jsp">Cambiar Contraseña</a></li>
<li class="item"><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>
</ul>
</nav>
<div class="item_login">
<form action="informacion_donadores.jsp" method="post">
<label>Nombre: <input type="text" name="nom"></label>
<input type="submit" class="button" value="Comprobar">
<input type="reset" class="button" value="Cancelar">
</form>
</div>
<%
    usuario us = new usuario();
    String nombre = request.getParameter("nom");
    if (nombre != null && !nombre.isEmpty()) {
        out.print("<div>" + us.info_donacion(nombre) + "</div>");
    }
%>

</body>
</html>