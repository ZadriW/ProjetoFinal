<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adicionar Prato</title>
</head>
<body>
    <h1>Adicionar Prato</h1>
    <form action="AdicionarPratoServlet" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required>
        <br>
        <label for="ingredientes">Ingredientes:</label>
        <textarea id="ingredientes" name="ingredientes" required></textarea>
        <br>
        <label for="tipo">Tipo:</label>
        <select id="tipo" name="tipo" required>
            <option value="entrada">Entrada</option>
            <option value="principal">Principal</option>
            <option value="sobremesa">Sobremesa</option>
        </select>
        <br>
        <input type="submit" value="Adicionar">
    </form>
    <br>
    <a href="listarPrato.jsp">Voltar para a lista de pratos</a>
</body>
</html>
