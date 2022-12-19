<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
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
.upload {height: 200px;}
.orange {color: orange;}
footer {height:100px}
</style>
</head>
<body>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select * from `seller`";
ResultSet rs = ms.select(selectQuery);
%>
<div class="container">
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
		<span class="upload display-4 col-6 d-flex justify-content-center align-items-center">물건 올리기</span>
		<form method="post" action="/lesson04/quiz03_Upload">
		<div class="d-flex justify-content-center">
			<div class="col-2">
				<div class="w-100 h-100 d-flex align-items-center">
					<select name="nickname">
		            <option selected>-아이디 선택-</option>
					<% 
						while (rs.next()) {			
					%>
		            <option><%= rs.getString("nickname") %></option>
		    		<%
						}
		    		%>
		         </select>
	         </div>
			</div>
			<div class="col-6">
				<input type="text" name="title" placeholder="제목" class="w-100 p-2 form-control">
			</div>
			<div class="col-2">
				<input type="text" name="price" placeholder="가격" class="align-items-center justify-content-center form-control">
			</div>
		</div>
		<div class="mt-3 mb-3">
			<textarea name="introduce" rows="5" cols="25" class="w-100 form-control"></textarea>
		</div>
		<div class="mt-3 mb-3">
			<input type="text" name="pictureUrl" class="w-100 form-control">
		</div>
		<input type="submit" value="저장" class="btn btn-secondary w-100">
		</form>
		<footer><jsp:include page="footer.jsp" />
		</footer>
</div>
<%
ms.disconnect();
%>
</body>
</html>