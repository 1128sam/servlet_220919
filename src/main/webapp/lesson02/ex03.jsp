<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex03 - POST METHOD form 태그</title>
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
	<form method="post" action="/lesson02/ex03_1.jsp">
		1. 별명은 무엇입니까?
		<input type="text" name="nickname" id="nickname"><br><br>
		2. 취미는 무엇입니까?
		<input type="text" name="hobby"><br><br>
		3. 강아지 or 고양이?
		<label for="dog">강아지</label>
		<input type="radio" id="dog" name="animal" value="dog" checked>
		<label for="cat">고양이</label>
		<input type="radio" id="cat" name="animal" value="cat"><br><br>
		4. 다음 중 선호하는 것을 모두 고르세요.<br>
		<label>민트초코 <input type="checkbox" name="food" value="민트초코"></label>
		<label>하와이안 피자 <input type="checkbox" name="food" value="하와이안 피자"></label>
		<label>번데기 <input type="checkbox" name="food" value="번데기"></label><br><br>
		5. 좋아하는 과일을 선택하세요.<br>
		<select name="fruit"> <!-- option명으로 넘어감 -->
			<option>사과</option>
			<option>바나나</option>
			<option>복숭아</option>
			<option>딸기</option>
			<option>포도</option>
		</select><br><br>
		
		<button type="submit" class="btn btn-success">제출</button>
	</form>
</body>
</html>