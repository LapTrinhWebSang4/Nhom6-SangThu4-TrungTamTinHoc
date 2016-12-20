<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="1234"/>
         <c:if test="${param.bang == 1}" >                  
		        <sql:update dataSource="${dbsource}" var="count" >
		            DELETE FROM taikhoan
		            WHERE Taikhoan='${param.Taikhoan}'
		        </sql:update>
		        <c:if test="${count>=1}">
		        	
		            <c:redirect url="QuanTriVien.jsp" ></c:redirect>          
		        </c:if>

		       
        </c:if>
        <c:if test="${param.bang == 2}" >                  
		        <sql:update dataSource="${dbsource}" var="count" >
		            DELETE FROM thongbao
		            WHERE MaThongBao='${param.MaTB}'
		        </sql:update>
		        <c:if test="${count>=1}">
		        	
		            <c:redirect url="QTNDThongBao.jsp" ></c:redirect>          
		        </c:if>

		       
        </c:if>
        
</body>
</html>