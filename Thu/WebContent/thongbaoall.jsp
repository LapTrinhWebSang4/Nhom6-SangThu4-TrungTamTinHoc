<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Trung Tam tin hoc</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="css/cssfornav2.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/ttth"
     user="root"  password="1234"/>


<style type="text/css">
	body {
	background-color: lightblue;
}
	#custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(255, 255, 255, 1);
}
#custom-bootstrap-menu.navbar-default {
    font-size: 14px;
    background-color: rgba(0, 130, 200, 1);
    border-width: 1px;
    border-radius: 0px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(0, 130, 200, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: white;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar
 {
    background-color: #0082c8;
}
@media only screen and (min-width:200px)and (max-width:700px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
	color:white;
	}
	
}


.footer-nav {
	text-align: right;
	list-style: none;
}

.footer-nav li {
	display: inline;
}

.footer-nav li:before {
	contain: '|';
	padding: 0px 10px;
}
.navbar.navbar-default{
	padding-top:0px;
}


#header-img{
	height:120px;	
	z-index:3;
}



#login-form{
	padding-bottom:200px;
}
.footer-nav>li>a{
	color:white;
}
a>.glyphicon{
	padding-right:10px;
}
#head-text{
	color:#0082c8;
	 text-shadow: 1px 1px 2px white, 0 0 25px white, 0 0 5px black;
}
</style>
<link rel="stylesheet" href="css/w3.css">

</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
	<div id="list-q"">
			<div class="col-md-12" style="padding-top: 10px; padding-left: 1px">

				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Câu hỏi</h3>
					</div>
					<div class="panel-body">

						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<sql:query dataSource="${snapshot}" var="result">
SELECT * from thongbao where LoaiThongBao != "slide"
ORDER by Ngay DESC;
</sql:query>

							<%
								int c1 = 0;
							%>
							<c:forEach var="row" items="${result.rows}">
								<%
									c1++;
								%>
							</c:forEach>
							<c:set var="letters" scope="session" value="${result.rows}" />
							<c:set var="totalCount1" scope="session" value="<%=c1%>" />
							<c:set var="perPage1" scope="session" value="${15}" />
							<c:set var="pageStart1" value="${param.start1}" />
							<c:if test="${empty pageStart1 or pageStart1 < 0}">
								<c:set var="pageStart1" value="0" />
								
							</c:if>
							<c:if test="${totalCount1 < pageStart1}">
								<c:set var="pageStart1" value="${pageStart1 - perPage1}" />
							</c:if>

							<c:forEach var="row" items="${result.rows}" begin="${pageStart1}" end="${pageStart1 + perPage1 - 1}">
								<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#<c:out value="${row.MaThongBao}"/>"
											aria-expanded="false" aria-controls="<c:out value="${row.MaThongBao}"/>">
											
											<h3><img alt="" src="element/${row.LoaiThongBao}.gif" style="width: 10%; height: 10%;">
											
											
											
											<c:out value="${row.TieuDe}"/></h3> Ngày: [<c:out value="${row.Ngay}"/>]</a>
									</h4>
								</div>
								<div id="<c:out value="${row.MaThongBao}"/>" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body"><c:out value="${row.NoiDung}"/></div>
								</div>
							</div>
							</c:forEach>


						</div>
					</div>

					<nav aria-label="...">
					<ul class="pager">
						<li class="previous"><a
							href="?start1=${pageStart1 - perPage1}"><span
								aria-hidden="true">&larr;</span>Mới hơn</a></li>
						<li class="next"><a
							href="?start1=${pageStart1 + perPage1}">Cũ
								hơn<span aria-hidden="true">&rarr;</span>
						</a></li>
					</ul>
					</nav>



				</div>



			</div>

		</div></div>
		<footer
		style="background-color: #0082c8; color: white; padding-top: 25px;">
	<div class="container">

		<div class="bottom-footer"
			style="border-top: 1px solid #b2b2b2; margin-top: 10px; padding-top: 10px; corlor: red;">
			<div class="col-md-5">
				<p>developed by G6</p>
				<span class="glyphicon glyphicon-home"></span> Cơ sở chính: XX/XX,
				đường ss, Q.qq, TH. HCM <br> <span
					class="glyphicon glyphicon-phone-alt"></span> Đt: xx50 43x 8xx
			</div>
			<div class="col-md-7">
				<ul class="footer-nav">
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="giangvien.jsp">Contract</a></li>
					<li><a href="thungo.jsp">About us</a></li>
				</ul>
			</div>

		</div>

	</div>
	</footer>
<script type="text/javascript" src="js/jsfornav2.js"></script>


<script type="text/javascript" src="js/jsfornav2-1.js"></script>
</body>
</html>
