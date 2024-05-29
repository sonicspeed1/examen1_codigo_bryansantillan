<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="usuario.*"%>
<% 
usuario us= new usuario();
int n1=Integer.parseInt(request.getParameter("cod"));
if(us.eliminar(n1)){
	response.sendRedirect("Lista_donadores.jsp");
}
%>