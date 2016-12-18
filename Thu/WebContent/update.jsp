<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="123456"/>
        <c:if test="${param.bang == 1}" >    
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE taikhoan SET Tenthanhvien = ?, Sodt=? , Email=? ,Ngaysinh=? , SoCMND=? ,DiaChi=?
            WHERE Taikhoan='${param.id}'
            <sql:param value="${param.name}" />
            <sql:param value="${param.sodt}" />
             <sql:param value="${param.email}" />
            <sql:param value="${param.ngaysinh}" />
            <sql:param value="${param.cmnd}" />
            <sql:param value="${param.diachi}" />
        </sql:update>
        <c:if test="${count>=1}">
            <c:redirect url="QTNDCaNhan.jsp" ></c:redirect>           
        </c:if>
      </c:if> 
      <c:if test="${param.bang == 2}" >    
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE taikhoan SET Matkhau = ?
            WHERE Taikhoan='${param.id}'
            <sql:param value="${param.matkhau}" />
            
        </sql:update>
        <c:if test="${count>=1}">
            <c:redirect url="QTNDCaNhan.jsp" ></c:redirect>           
        </c:if>
      </c:if> 
      <c:if test="${param.bang == 3}" >  
       '${param.id}'
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE taikhoan SET TenThanhVien = ?, MatKhau=? , Quyen=? 
            WHERE Taikhoan='${param.id}'
            <sql:param value="${param.name}" />
            <sql:param value="${param.matkhau}" />
             <sql:param value="${param.quyen}" />
            
        </sql:update>
         
        <c:if test="${count>=1}">
            <c:redirect url="QuanTriVien.jsp" ></c:redirect>           
        </c:if>   
        </c:if>   
    </body>
</html>