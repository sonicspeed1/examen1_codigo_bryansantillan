<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
    String mensaje = (String) session.getAttribute("mensaje");
    session.removeAttribute("mensaje");
%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="style.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
<div class="cuadro">
<h1 class="titulo">Ayuda Alimentaria</h1>
</div>
<div class="container">
    <div class="cuadro2">
 <h2 class="titulo2">Login</h2><hr> 
 <form action="validar.jsp" method="post"> 
 <label class="item_login"><p class="titulo2">Usuario:</p > <input type="text" name="usuario"></label> 
 <label class="item_login"><p class="titulo2">Contraseña:</p> <input type="password" name="contraseña"></label>
 <div class="item_login">
 <a href="registro_donadores.jsp" class="hiper">Registrarse</a>
 </div><hr> 
 <div class="item_login">
  <input value="Ingresar" name="ingresar" type="submit" class="button">  
 <input value="Cancelar" name="cancelar" type="reset" class="button">
 <a href="home.jsp" class="button">Regresar</a>
 </div>
   <% if (mensaje != null && !mensaje.isEmpty()) { %>
        <p><%= mensaje %></p>
    <% } %>
 </form>
    </div>
</div>
<footer class="footer"> Contactos con nosotros: telf: 3821-660 cel:098234334</footer>
</body>
</html>