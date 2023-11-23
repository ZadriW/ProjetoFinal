<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="restaurante.model.Prato" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Pratos</title>
</head>
<body>
    <h1>Listar Pratos</h1>

    <table border="1">
        <tr>
            <th>Nome</th>
            <th>Ingredientes</th>
            <th>Tipo</th>
            <th>Ações</th>
        </tr>
        <%
            List<Prato> pratos = (List<Prato>) request.getAttribute("pratos");
            if (pratos != null) {
                for (Prato prato : pratos) {
        %>
        <tr>
            <td><%= prato.getNome() %></td>
            <td><%= prato.getIngredientes() %></td>
            <td><%= prato.getTipo() %></td>
            <td>
                <a href="EditarPratoServlet?id=<%= prato.getId() %>">Editar</a> |
                <a href="ConfirmarExclusaoPratoServlet?id=<%= prato.getId() %>">Excluir</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>

    <br>
    <a href="adicionarPrato.jsp">Adicionar Novo Prato</a>
</body>
</html>
