<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz04_1</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
<% 
	double result = 0;
	double n1 = Double.parseDouble(request.getParameter("num1"));
	double n2 = Double.parseDouble(request.getParameter("num2"));
	String type = request.getParameter("operator");
	switch (type) {
	case "+":
		result = n1 + n2;
		break;
	case "-":
		result = n1 - n2;
		break;
	case "X":
		result = n1 * n2;
		break;
	case "/":
		result = n1 / n2;
		break;
	}
%>
<!-- if (type.equals("+")) {
		result = n1 + n2;
	} else if (type.equals("-")) {
		result = n1 - n2;
	} else if (type.equals("X")) {
		result = n1 * n2;
	} else if (type.equals("/")){
		result = n1 / n2;
	} -->
<div class="container">
	<h1>계산 결과</h1>
	<div class="display-4"><%=(int)n1%> <%=type%> <%=(int)n2%> = <span class="text-primary"><%=result%></span></div>
	</div>
</div>
</body>
</html>