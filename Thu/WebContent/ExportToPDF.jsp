<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Model.HocVien" %>
    <%@page import="java.util.List" %>
    <%@page import="DAO.TVVDAO" %>
    <%@page import="java.util.List" %>
    <%@page import="java.util.Iterator;" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
String lophoc = request.getParameter("lophoc");
response.setContentType("application/pdf");   
response.setHeader("content-disposition","attachment; filename="+lophoc+".pdf");  
List<HocVien> lst = TVVDAO.GethocvienToExport(lophoc);
%>
<table border="1">
	<thead>
		<tr>
			<td>Mã học viên</td>
			<td>Lớp</td>
			<td>Ten</td>
			<td>Email</td>
			<td>Sodt</td>
			<td>NoHocPhi</td>
			<td>DiaChi</td>
			<td>MaMienGiam</td>
			<td>Diem</td>
		</tr>
	</thead>
	<tbody>
		<%
			for(HocVien hv :lst)
			{%>
				<tr>
					<td><%=hv.getMaHocVien() %></td>
					<td><%=hv.getLophoc() %></td>
					<td><%=hv.getTen() %></td>
					<td><%=hv.getEmail() %></td>
					<td><%=hv.getSodt() %></td>
					<td><%=hv.getNoHocPhi() %></td>
					<td><%=hv.getDiaChi() %></td>
					<td><%=hv.getDiem() %></td>
				</tr>
			<% }
		Iterator iter = (Iterator) lst.iterator();
        while (iter.hasNext()){
            String outputString = (String) iter.next();
            response.getOutputStream().print(outputString);
        }

        response.getOutputStream().flush();
		%>
			
	</tbody>
</table>
</body>
</html>