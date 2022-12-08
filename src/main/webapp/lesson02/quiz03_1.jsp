<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03_1</title>
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
	double height = Double.parseDouble(request.getParameter("userHeight"));
	double weight = Double.parseDouble(request.getParameter("userWeight"));
	
	double bmi = weight / ((height / 100.0) * (height / 100.0));
	String result = null;
	if (bmi <= 20) {
		result = "저체중";
	} else if (bmi > 20 && bmi <= 25) {
		result = "정상";
	} else if (bmi > 25 && bmi <= 30) {
		result = "과체중";
	} else if (bmi > 30) {
		result = "비만";
	}
	%>
<div class="container">
	<h1>BMI 측정 결과</h1>
	<div class="d-flex">
		<div class="display-4 mr-3">당신은</div>
		<div class="display-4 text-info"><%= result %></div>
		<div class="display-4 mb-4">입니다.</div>
	</div>
	<div>BMI 수치 : <%= bmi %></div>
</div>
</body>
</html>