<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz05_1 - 길이 변환</title>
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
	double cm = Double.parseDouble(request.getParameter("length"));
	String[] types = request.getParameterValues("type");
	for (int i = 0; i < types.length; i++) {
		if (types[i].equals("in")) {
			double in = cm / 2.54;
		} else if (types[i].equals("yd")) {
			double yd = cm * 0.0109361;
		} else if (types[i].equals("ft")) {
			double ft = cm * 0.0328084;
		} else if (types[i].equals("m")) {
			double m = cm / 100;
		}
	}
%>
<div class="container">
	<h1>길이 변환 결과</h1>
	<h3><%=cm%>cm</h3><hr>
	<h3><%
			if (types != null) {
				for (String type : types) {
					if (type.equals("inch")) {
						double in = cm * 0.393701;
						out.print(in + " in<br>");
					} else if (type.equals("yard")) {
						double yd = cm * 0.0109361;
						out.print(yd + " yd<br>");
					} else if (type.equals("feet")) {
						double ft = cm * 0.0328084;
						out.print(ft + " ft<br>");
					} else if (type.equals("meter")) {
						double m = cm / 100;
						out.print(m + " m");
					}
				}
			}
	%></h3>
</div>
</body>
</html>