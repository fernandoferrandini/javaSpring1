<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edita Task</title>
</head>
<body>
	<h2>Formulário de edição da <i>Task</i> : ${task.id}</h2>
	
	<form action="editatask" method="post">
		<input type="hidden" name="id" value="${task.id}"/>
		<h3>Descrição</h3>
		<form:errors path="task.descricao" cssStyle="color:red"/> 
		<fmt:message key="teste.mensagem"/>
		<br/>
		<textarea rows="5" cols="100" name="descricao">${task.descricao}</textarea>
		<br/>
		<label for="finalizada">Finalizada?</label><input type="checkbox" name="finalizada" value="true" ${task.finalizada ? 'checked' : ''}/>
		<br/>
		<label for="dataFinalizacao">Data de Finalização</label><input type="text" name="dataFinalizacao" value="<fmt:formatDate value='${task.dataFinalizacao.time}' pattern='dd/MM/yyyy'/>"/>
		<br/>
		<input type="submit" value="Salvar"/>	
	</form>

</body>
</html>