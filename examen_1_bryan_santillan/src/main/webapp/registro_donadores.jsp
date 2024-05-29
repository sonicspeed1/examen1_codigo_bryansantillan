<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String mensaje = (String) session.getAttribute("mensaje");
    session.removeAttribute("mensaje");
%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Registro donadores</title>
<link href="style.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
<h2 class="cuadro3">Registro de donadores</h2>
<div class="container">
    <div class="cuadro2">
    <form action=Respuesta.jsp method="post">
    <label class="item_reg">Nombre: <input type="text" name="nombre"></label>
<label class="item_reg">Cedula: <input type="text" name="ci"></label>
<label class="item_reg">Correo: <input type="text" name="correo"></label>
<label class="item_reg">Usuario: <input type="text" name="us"></label>
<label class="item_reg">Contraseña: <input type="password" name="cont1"></label>
<label class="item_reg">Verificar contraseña: <input type="password" name="cont2"></label>
 <div class="item_login">
  <input value="Ingresar" name="ingresar" type="submit" class="button">  
 <input value="Cancelar" name="cancelar" type="reset" class="button">
 <a href="Login.jsp" class="button">Regresar</a>
 </div>
 <% if (mensaje != null && !mensaje.isEmpty()) { %>
        <p><%= mensaje %></p>
    <% } %>
 </form>
 </div>
</div>
</body>
</html>