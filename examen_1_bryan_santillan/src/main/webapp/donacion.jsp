<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>

<%
    String mensaje = null;

    // Form submission handling
    if (request.getMethod().equalsIgnoreCase("POST")) {
        usuario us = new usuario();
        String be = request.getParameter("be");
        String or = request.getParameter("or");
        String ds = request.getParameter("ds");
        String re = request.getParameter("re");

        HttpSession sesion = request.getSession(); 
        Integer user1 = (Integer) sesion.getAttribute("id_us");

        if (user1 != null && us.insertar_recurso(be, or, ds, re, user1)) {
            mensaje = "Recurso insertado, habla con nuestros supervisores para la donación.";
        } else {
            mensaje = "Datos incorrectos.";
        }

        // Store the message in session to display it after the redirect
        sesion.setAttribute("mensaje", mensaje);
        
        // Redirect to the same page to handle the GET request and display the message
        response.sendRedirect("donacion.jsp");
        return; // Ensure no further processing in this request
    } else {
        // Get the message from session
        HttpSession sesion = request.getSession();
        mensaje = (String) sesion.getAttribute("mensaje");
        // Remove the message from session after retrieving it
        if (mensaje != null) {
            sesion.removeAttribute("mensaje");
        }
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Donación</title>
    <link href="style.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
    <div class="cuadro">
        <h1 class="titulo">Ayuda Alimentaria</h1>
    </div>
    <nav>
        <ul class="menu">
            <li class="item"><a href="donacion.jsp">Donación</a></li>
            <li class="item"><a href="cambiar_contraseña.jsp">Cambiar Contraseña</a></li>
            <li class="item"><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>
        </ul>
    </nav>
    <div class="container">
        <div class="cuadro2">
            <h2 class="titulo2">Donación</h2>
            <hr> 
            <form action="donacion.jsp" method="post">
                <label class="item_reg">Beneficiario: <input type="text" name="be" required></label>
                <label class="item_reg">Origen: <input type="text" name="or" required></label>
                <label class="item_reg">Destino: <input type="text" name="ds" required></label>
                <label class="item_reg">Recurso: <input type="text" name="re" required></label>
                <div class="item_login">
                    <input value="Ingresar" name="ingresar" type="submit" class="button">  
                    <input value="Cancelar" name="cancelar" type="reset" class="button">
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