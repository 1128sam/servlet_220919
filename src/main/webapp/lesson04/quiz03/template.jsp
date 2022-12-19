<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
header {height:140px; background-color: orange;}
nav {height: 50px; background-color: orange;}
.contents {height: min-height: 800px;}
a {text-decoration: none;}
a:hover {text-decoration: none;}
.itemBox {height: 370px;}
.itemBox:hover {background-color: #999;}
.orange {color: orange;}
footer {height:100px}

</style>
</head>
<body>
<%
// DB connect
MysqlService ms = MysqlService.getInstance();
ms.connect();

// DB select query
String selectQuery = "select * from `used_goods`";
ResultSet rs = ms.select(selectQuery);
%>
<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<h1 class="text-light">HONG당무 마켓</h1>
		</header>
		<nav class="d-flex">
			<ul class="nav nav-fill w-100 text-bold">
				<li class="nav-item"><a href="template.jsp"
					class="nav-link text-light font-weight-bold">리스트</a></li>
				<li class="nav-item"><a href="upload.jsp"
					class="nav-link text-light font-weight-bold">물건 올리기</a></li>
				<li class="nav-item"><a href="template.jsp"
					class="nav-link text-light font-weight-bold">마이 페이지</a></li>
			</ul>
		</nav>
	<section class="contents">
		<form method="get" action="/lesson04/quiz03/quiz03_1.jsp?id=">
		<%
				int next = 0;
			while (rs.next()) {
				String pictureUrl = rs.getString("pictureUrl");
				if (pictureUrl == null) {
					pictureUrl = "https://3.bp.blogspot.com/-ZKBbW7TmQD4/U6P_DTbE2MI/AAAAAAAADjg/wdhBRyLv5e8/s1600/noimg.gif";
				}
				if (next == 0) {
					%>
		<div class="d-flex">
					<%
				}
		%>
			<div class="w-100 col-4 p-2"><a href="#">
				<div class="itemBox border border-success">
				<img src="<%=pictureUrl %>" alt="상품 이미지" width="100%" class="p-2"><br>
				<span class="text-dark"><b><%=rs.getString("title") %></b></span><br>
				<span class="text-secondary"><%=rs.getInt("price") %>원</span><br>
				<span class="orange">최준</span>
				</div></a>
			</div>
				
			<%
				// 끊
				next++;
				if (next > 2) {
					%>
					</div>
					<%
					next = 0;
				}
			}
			%>
		</form>
	</section>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</div>
<%
// DB disconnect
ms.disconnect();
%>
</body>
</html>