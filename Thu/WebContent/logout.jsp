<%@ page language="java" contentType="text/html"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("TenThanhVien",null);
	session.setAttribute("Email",null);
	session.invalidate();
	response.sendRedirect("login.jsp");
%>
</body>
</html>