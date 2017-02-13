<%-- 
    Document   : Cerrar_Sesion
    Created on : 10/08/2016, 12:50:20 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
 response.setContentType("text/html");
 response.setHeader("Cache-Control", "no-cache");
 response.setHeader("Cache-Control", "no-store");
 response.setDateHeader("Expires", 0);

 request.getSession().removeAttribute("UserLogin");
 
 session.invalidate();
 response.sendRedirect("/Proyecto2/");
 
%>
