<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03_1</title>
</head>
<body>
<%
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	out.print(height + weight);
%>
</body>
</html>