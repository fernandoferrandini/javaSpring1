<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
a {
font : 28px;
font-weight : bold;
}
</style>
<meta charset="ISO-8859-1">
<title>Lista Tasks</title>
</head>
<body>
	<a href="novatask">Nova Task</a>
	<br/>
	<br/>
	<table>
		<tr>
			<th>Id</th>
			<th>Descricao</th>
			<th>Finalizada</th>
			<th>Data de Finalização</th>
			<th colspan="2">Ações</th>
		</tr>
		<c:forEach items="${tasks}" var="task">
			<tr>
				<td>${task.id}</td>
				<td>${task.descricao}</td>
				
				<c:if test="${task.finalizada eq false}">
					<td>Não finalizada</td>
				</c:if>
				
				<c:if test="${task.finalizada eq true}">
					<td>finalizada</td>
				</c:if>
				<td><fmt:formatDate value="${task.dataFinalizacao.time}" pattern="dd/MM/yyyy"/></td>
				<td><a href="excluitask?id=${task.id}">Excluir</a></td>
				<td><a href="buscartask?id=${task.id}">Editar</a></td>
			</tr>
		</c:forEach>	
	
	</table>
</body>
</html>