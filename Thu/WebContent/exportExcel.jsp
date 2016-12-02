<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Model.HocVien" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Export to Excel Example</title>
</head>
<body>
<h3>Export to Excel Example</h3>
<table cellpadding="1" cellspacing="1" border="1" bordercolor="gray">
        <tr>
                <td>Name</td>
                <td>Department</td>
                <td>Age</td>
        </tr>
        <%
        List<HocVien> students = (List<HocVien>) request.getAttribute("hocvien");
                if (students != null) {
                        response.setContentType("application/vnd.ms-excel");
                        response.setHeader("Content-Disposition", "inline; filename="
                                        + "StudentReport.xls");
                }
                for (HocVien hv : students) {
        %>
        <tr>
                <td><%=hv.getMaHocVien()%></td>
                <td><%=hv.getTen()%></td>
                <td><%=hv.getEmail()%></td>
                <td><%=hv.getLophoc()%></td>
                <td><%=hv.getNoHocPhi()%></td>
                <td><%=hv.getDiem()%></td>
        </tr>
        <%
                }
        %>
</table>
</body>
</html>