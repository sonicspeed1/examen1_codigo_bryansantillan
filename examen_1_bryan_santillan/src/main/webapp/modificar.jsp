<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>
<%
    usuario us = new usuario();
    String errorMessage = null;
    try {
      
        if ("POST".equalsIgnoreCase(request.getMethod())) {
        	int id = Integer.parseInt(request.getParameter("cod"));
            String beneficiario = request.getParameter("be");
            String origen = request.getParameter("or");
            String destino = request.getParameter("des");
            String recurso = request.getParameter("re");
            String estado = request.getParameter("se");

            if (us.actualizar(id, beneficiario, origen, destino, recurso, estado)) {
                response.sendRedirect("Lista_donadores.jsp");
                return; 
            } else {
                errorMessage = "Actualización fallida. Inténtelo de nuevo.";
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        errorMessage = "Ocurrió un error: " + e.getMessage();
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Modificar</title>
    <link href="style.css" rel="stylesheet"/>
</head>
<body class="cuerpo">
    <div class="cuadro">
        <h1 class="titulo">Ayuda Alimentaria</h1>
    </div>
    <div class="container">
        <div class="cuadro2">
            <form action="modificar.jsp" method="post">
                 <input type="hidden" name="cod" value="<%= request.getParameter("cod") %>">
                <label class="item_reg">Beneficiario: <input type="text" name="be"></label>
                <label class="item_reg">Origen: <input type="text" name="or"></label>
                <label class="item_reg">Destino: <input type="text" name="des"></label>
                <label class="item_reg">Recurso: <input type="text" name="re"></label>
                <label class="item_reg">Estado:
                    <select name="se" class="item_reg">
                        <option value="Entregado">Entregado</option>
                        <option value="Perdido">Perdido</option>
                        <option value="No Entregado">No Entregado</option>
                    </select>
                </label>
                <div class="item_login">
                    <input value="Actualizar" name="ingresar" type="submit" class="button">  
                    <input value="Borrar" name="cancelar" type="reset" class="button">
                </div>
            </form>
            <% if (errorMessage != null) { %>
                <div class="error"><%= errorMessage %></div>
            <% } %>
        </div>
    </div>
</body>
</html>