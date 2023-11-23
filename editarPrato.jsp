<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Prato</title>
</head>
<body>
    <h1>Editar Prato</h1>
    <form action="EditarPratoServlet" method="post">
        <input type="hidden" name="id" value="${prato.id}">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${prato.nome}" required>
        <br>
        <label for="ingredientes">Ingredientes:</label>
        <textarea id="ingredientes" name="ingredientes" required>${prato.ingredientes}</textarea>
        <br>
        <label for="tipo">Tipo:</label>
        <select id="tipo" name="tipo" required>
            <option value="entrada" ${prato.tipo eq 'entrada' ? 'selected' : ''}>Entrada</option>
            <option value="principal" ${prato.tipo eq 'principal' ? 'selected' : ''}>Principal</option>
            <option value="sobremesa" ${prato.tipo eq 'sobremesa' ? 'selected' : ''}>Sobremesa</option>
        </select>
        <br>
        <input type="submit" value="Salvar">
    </form>
    <br>
    <a href="listarPrato.jsp">Voltar para a lista de pratos</a>
</body>
</html>
