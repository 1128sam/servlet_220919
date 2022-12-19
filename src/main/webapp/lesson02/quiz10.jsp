<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz10: Calendar 활용 - 이번달 출력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	today.set(Calendar.DATE, 1);
	int maxInt = today.getActualMaximum(Calendar.DATE);
	
	String day = new SimpleDateFormat("E").format(today.getTime()).toString();
	String[] dayOfWeek = {"일", "월", "화", "수", "목", "금", "토"};
%>
<div class="container text-center">
<h2 class="mb-3"><%= sdf.format(today.getTime()) %></h2>
	<table class="table">
		<thead>
			<tr>
				<th class="text-danger">일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th>토</th>
			</tr>
		</thead>
		<tbody class="display-4">
			<tr>
				<%
				int next = 0;
					for (int i = 0; i < dayOfWeek.length; i++) {
						if (day.equals(dayOfWeek[i])) {
				%>
				<%
				for (int j = 1; j <= dayOfWeek.length - i; j++) {
					%>
					<td><%=j %></td>
					<%
					next = j + 1;
				}
				break;
						}
						else {
				 %>
				 <td></td>
				<%
						}
					}
				 %>
			</tr>
			<% 
				while (true) {
			%>
			<tr>
			<% 
				for (int i = 0; i < 7; i++, next++) {
			%>
				<td><%=next %></td>
			<% 
			if (next == maxInt) {
				break;
			}
				}
			%>
			</tr>
			<%
			if (next == maxInt) {
				break;
			}
				}
			%>
		</tbody>
	</table>
</div>
</body>
</html>