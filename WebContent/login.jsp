<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
</head>
<body>
	<%
	String temp="temp";
	session.setAttribute("temp", temp);
	%>
	<form action="checkLogin.jsp" method="post">
		Username: <input type="text" name="username">
		Password: <input type="password" name="password">
		<button type="submit" value="OK">OK</button>
		<button type="reset" value="Reset">Reset</button>
	</form>
</body>
</html>