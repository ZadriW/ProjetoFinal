<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="restaurante.model.Prato" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmar Exclusão de Prato</title>
</head>
<body>
    <h1>Confirmar Exclusão de Prato</h1>
    <%
        Prato prato = (Prato) request.getAttribute("prato");
        if (prato != null) {
    %>
    <p>Tem certeza de que deseja excluir o prato: <strong><%= prato.getNome() %></strong>?</p>
    
    <form action="ExcluirPratoServlet" method="post">
        <input type="hidden" name="id" value="<%= prato.getId() %>">
        <input type="submit" value="Confirmar Exclusão">
    </form>
    <%
        }
    %>
    <br>
    <a href="ListarPratosServlet">Cancelar</a>
</body>
</html>
