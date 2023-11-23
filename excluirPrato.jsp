<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Excluir Prato</title>
</head>
<body>
    <h1>Excluir Prato</h1>
    <p>Você tem certeza de que deseja excluir o prato com ID ${prato.id} - ${prato.nome}?</p>
    <form action="ExcluirPratoServlet" method="post">
        <input type="hidden" name="id" value="${prato.id}">
        <input type="submit" value="Confirmar Exclusão">
    </form>
    <br>
    <a href="listarPrato.jsp">Cancelar e voltar para a lista de pratos</a>
</body>
</html>
