<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" href="resources/css/tasks.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/jquery.js"></script>
<meta charset="ISO-8859-1">
<title>Edita Task</title>
</head>
<body>
<script type="text/javascript">
	function reabilitar(){
		$("#cb").attr("checked",false);
		$("#dt").val("");
		$("#frm").submit();
	}
</script>
	<h2>Formulário de edição da <i>Task</i> : ${task.id}</h2>
	
	<form id="frm" action="editatask" method="post">
		<input type="hidden" name="id" value="${task.id}"/>
		<h3>Descrição</h3>
		<form:errors path="task.descricao" cssStyle="color:red"/> 
		<fmt:message key="teste.mensagem"/>
		<br/>
		<textarea rows="5" cols="100" name="descricao">${task.descricao}</textarea>
		<br/>
		<label for="finalizada">Finalizada?</label><input type="checkbox" id="cb" name="finalizada" value="true" ${task.finalizada ? 'checked' : ''}/>
		<br/>
		<label for="dataFinalizacao">Data de Finalização</label><input type="text" id="dt" name="dataFinalizacao" value="<fmt:formatDate value='${task.dataFinalizacao.time}' pattern='dd/MM/yyyy'/>"/>
		<br/>
		<input type="button" onclick="reabilitar()" value="Reabrir"/>
		<input type="submit" value="Salvar"/>	
	</form>

</body>
</html>