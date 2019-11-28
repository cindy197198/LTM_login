<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome</title>
</head>
<body>
	<%
	String username = request.getParameter("username");
	String temp = (String) session.getAttribute("temp");
	String address = (String) request.getAttribute("address");
	%>
	Welcome: <%=username %> <br />
	Address: <%=address %><br />
	Temp: <%=temp %><br />
</body>
</html>