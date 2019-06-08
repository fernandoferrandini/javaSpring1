<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" href="resources/css/tasks.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Tela de Login</title>
</head>
<body>
	<h1>Login - TASKS</h1>
	<form action="getLogin" method="post">
		<h3>Login:</h3><input type="text" name="login"/>
		<br/>
		<br/>
		<h3>Password:</h3><input type="password" name="senha"/>
		<br/>
		<br/>
		<input type="submit" value="Login"/>
	</form>
</body>
</html>