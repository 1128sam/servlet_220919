<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
	// DB connect
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select query
	String selectQuery = "select * from `bookmark` order by `id` desc";
	ResultSet rs = ms.select(selectQuery);
%>

	<table class="table text-center">
		<thead>
			<tr class="text-bold">
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		<tbody>
		<%
			while (rs.next()) {
		%>
			<tr>
				<td><%=rs.getString("name")%></td>
				<td><a href="<%=rs.getString("address")%>"><%=rs.getString("address")%></a></td>
				<td><a href="/lesson04/quiz02_delete?id=<%=rs.getInt("id")%>">삭제</a></td>
			</tr>
		</tbody>
		<%}%>
	</table><br>
	<button class="btn btn-success"><a href="/lesson04/quiz02/quiz02_1.jsp" class="text-light">추가하기</a></button>
<%
	// DB disconnect
	ms.disconnect();
%>
</body>
</html>