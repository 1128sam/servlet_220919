<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05 - Calendar</title>
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
	// Date now = new Date();
	Calendar today = Calendar.getInstance();
	out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.println(sdf.format(today.getTime()) + "<br>"); // Calendar -> Date 변환 후 포맷 적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	Calendar yesterday = Calendar.getInstance();
	// yesterday.add(Calendar.DATE, -1); // 하루 전
	// out.println("어제 날짜: " + sdf2.format(yesterday.getTime()) + "<br>");
	// yesterday.add(Calendar.MONTH, -1);
	// out.println("한달 전: " + sdf2.format(yesterday.getTime()) + "<br>");
	yesterday.add(Calendar.YEAR, -1);
	out.println("일년 전: " + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교: compareTo
	// 1 0 -1
	// 기준값(앞) 크면 1, 같으면 0, 기준값이 작으면 -1
	int result = today.compareTo(yesterday);
	if (result > 0) {
		out.println("today가 더 크다(today가 최근)");
	} else if (result == 0) {
		out.println("두 날짜가 같다(같은 날)");
	} else {
		out.println("today가 더 작다(더 오래 전)");
	}
%>
</body>
</html>