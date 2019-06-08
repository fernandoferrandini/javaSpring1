<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" href="resources/css/tasks.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/jquery.js"></script>
<meta charset="ISO-8859-1">
<title>Lista Tasks</title>
</head>
<body>
<script type="text/javascript">
function finalizar(id){
	$.post("finalizatask", {'id' : id}, function(){
		$("#task_"+id).html("Finalizada");
		$("#task_"+id+"_date").html(new Date().toLocaleDateString("pt-BR"));
	});
}
</script>
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
					<td id="task_${task.id}"><a href="#" onclick="finalizar(${task.id})">Finalizar</a></td>
				</c:if>
				
				<c:if test="${task.finalizada eq true}">
					<td>Finalizada</td>
				</c:if>
				<td id="task_${task.id}_date"><fmt:formatDate value="${task.dataFinalizacao.time}" pattern="dd/MM/yyyy"/></td>
				<td><a href="excluitask?id=${task.id}">Excluir</a></td>
				<td><a href="buscartask?id=${task.id}">Editar</a></td>
				
			</tr>
		</c:forEach>	
	
	</table>
</body>
</html>