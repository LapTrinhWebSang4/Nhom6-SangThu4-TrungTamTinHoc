<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="123456"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO taikhoan(TaiKhoan,MatKhau,TenThanhVien,Sodt,Email,NgaySinh,NgayDangNhapGanNhat,DiaChi,SoCMND,Quyen,GioiThieu)
             VALUES (?,?,?,?,?,?,?,?,?,?,?);
            <sql:param value="${param.id}" />
            <sql:param value="${param.matkhau}" />
            <sql:param value="${param.name}" />
            <sql:param value= "${nullValue}" />
            <sql:param value="${nullValue}" />
            <sql:param value="${nullValue}" />
            <sql:param value="${nullValue}" />
            <sql:param value="${nullValue}" />
            <sql:param value="${nullValue}"/>
            <sql:param value="${param.quyen}" />
            <sql:param value="${nullValue}"/>
        </sql:update>
        <c:if test="${result>=1}">
            <c:redirect url="QuanTriVien.jsp" ></c:redirect>           
        </c:if>   
</body>
</html>