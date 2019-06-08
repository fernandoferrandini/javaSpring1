<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" href="resources/css/tasks.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Cadastra Task</title>
</head>
<body>
	<h2>Formulário de cadastro das <i>Tasks</i></h2>
	<form action="cadastratask" method="post">
		<h3>Descrição</h3>
		<form:errors path="task.descricao" cssStyle="color:red"/> 
		<fmt:message key="teste.mensagem"/>
		<br/>
		<textarea rows="5" cols="100" name="descricao"></textarea>
		<br/>
		<input type="submit" value="Cadastrar"/>	
	</form>

</body>
</html>