<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <% request.setCharacterEncoding("UTF-8"); %>
<html>
    <head>
        <title>JINSERT Operation</title>
    </head>
    <body>
   <%
   Calendar calendar = new GregorianCalendar();
   
   int day = calendar.get(Calendar.DATE);
   int month = calendar.get(Calendar.MONTH)+1;
   int year = calendar.get(Calendar.YEAR);
   
   String time =year+"/"+month+"/"+day;
   %>
        <c:if test="${ empty param.pname or empty param.qty}">
            
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="1234"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO cauhoi(Ngay,NoiDung,TinhTrang,LinhVuc,TenNguoiHoi, EmailNguoiHoi, TieuDe) 
            VALUES (?,?,0,?,?,?,?);
            <sql:param value="<%= time %>" />
            <sql:param value="${param.txtara}" />
            <sql:param value="${param.linhvuc}" />
            <sql:param value="${param.user}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.lable}" />
        </sql:update>
        
 <c:redirect url="tuvan-send.jsp" ></c:redirect>
 
    </body>
</html>