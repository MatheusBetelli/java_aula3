<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot </title>
</head>
<body>
    <h1>Tarefas: </h1>
    <a href="/tarefas/insert">Nova Tarefa</a>
    <ul>
        <c:forEach var="item" items="${tarefas}">
            <li>
                ${item.descricao}
                <a href="/tarefas/update?id=${item.id}">Editar</a>
                <a href="/tarefas/delete?id=${item.id}">Remover</a>
            </li>
        </c:forEach>
</body>
</html>