<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Check Login</title>
</head>
<body>
	<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String address = "54 Nguyễn Lương Bằng";
	
	//kết nối cơ sở dữ liệu
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ltm", "root", "");
	Statement stmt=conn.createStatement();
	//Doc record ra man hinh
	String sql="SELECT id,username,password FROM users where username='"+username+"'&&password='"+password+"'";
	ResultSet rs=stmt.executeQuery(sql);
	if(rs.next())
	{
		request.setAttribute("address", address);
		RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
		rd.forward(request, response);
	}
	else //nếu không có trong CSDL quay về trang Login
		response.sendRedirect("login.jsp");
	}catch(SQLException e)
	{
		e.printStackTrace();
		System.out.println("Loi thao tac CSDL");
	}
	
	%>
</body>
</html>