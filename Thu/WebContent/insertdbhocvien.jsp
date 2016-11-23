<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <% request.setCharacterEncoding("UTF-8"); %>
<html>
    <head>
        <title>JINSERT Operation</title>
    </head>
    <body>
    
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="1234"/>
			
   <%
   Calendar calendar = new GregorianCalendar();
   
   int day = calendar.get(Calendar.DATE);
   int month = calendar.get(Calendar.MONTH)+1;
   int year = calendar.get(Calendar.YEAR);
   int gio = calendar.get(Calendar.HOUR_OF_DAY);
   int phut = calendar.get(Calendar.MINUTE);
   int giay = calendar.get(Calendar.SECOND);
   year=year-2000;
   String dngay="";
   String dthang="";
   String dgio="";
   String dphut="";
   String dgiay="";
   if(day<10) dngay="0";
   if(month<10) dngay="0";
   if(gio<10) dgio="0";
   if(phut<10) dphut="0";
   if(giay<10) dgiay="0";
   
   String time =""+dthang+month+dngay+day+dgio+gio+dphut+phut+dgiay+giay;
   
   %>
        <c:if test="${ empty param.pname or empty param.qty}">
            
 
        </c:if>
                          
                           
                           
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO hocvien(MaHocVien, MaLop, Ten, Email, Sodt, NoHocPhi, DiaChi, MaMienGiam) 
            VALUES (?,?,?,?,?,?,?,?);
            <sql:param value="<%=time %>" />
            <sql:param value="${param.listlop}" />
            <sql:param value="${param.user}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.phone}" />
            <sql:param value="${param.hocphi}" />
            <sql:param value="${param.adress}" />
            <sql:param value="${param.doituong}" />
        </sql:update>
        
 <c:redirect url="list-mon-windows.jsp" ></c:redirect>
 
    </body>
</html>