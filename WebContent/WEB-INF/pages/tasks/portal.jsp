<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" href="resources/css/tasks.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Seja bem vindo ao portal, ${usuarioLogado.login} !</h2>
	<a href="gettasks">Clique para exibir as Tasks</a>
	<br/><br/>
	<h4><a href="logout">Sair</a></h4>
</body>
</html>