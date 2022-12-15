<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02 - 종합문제(세부사항)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	.logo {color: green;}
	a:hover {color: blue;};
	header {height: 80px;}
	nav {height:50px;}
	.contents {height: 200px;}
	.contents2 {min-height: 300px;}
	footer {height: 30px;}
</style>
</head>
<body>
<% 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

String search = request.getParameter("search");
String click = request.getParameter("click");
String searchTitle = "";
String singer = "";
String album = "";
int time = 0;
String composer = "";
String lyricist = "";
String thumbnail = "";
int id = 0;
if (click == null && search != null) {
	searchTitle = search;
} else if (click != null && search == null) {
	searchTitle = click;
} else {
	out.print("wrong input");
}

for (Map<String, Object> item : musicList) {
	if (searchTitle.equals(item.get("title"))) {
		singer = item.get("singer").toString();
		album = item.get("album").toString();
		time = Integer.parseInt(item.get("time").toString());
		composer = item.get("composer").toString();
		lyricist = item.get("lyricist").toString();
		thumbnail = item.get("thumbnail").toString();
		id = Integer.parseInt(item.get("id").toString());
	}
}
%>
<div id="wrap" class="container">
	<form method="get" action="/lesson03/quiz02/main_1.jsp">
	<header class="d-flex">
		<jsp:include page="header.jsp" />
	</header>
	<nav class="mt-4 col-6 d-flex justify-content-center align-items-center">
		<jsp:include page="menu.jsp" />
	</nav>
	
	<div class="border border-success d-flex p-3">
		<div class="mr-4">
			<img src="<%=thumbnail %>" alt="<%=searchTitle %>" width="250">
		</div>
		<div>
			<div class="display-4"><%=searchTitle %></div><br>
			<div class="text-success text-bold"><%=singer %></div><br>
			<div class="text-secondary mt-3">
			<%
			String displayTime = (time / 60) + ":" + (time - ((time / 60) * 60));
			%>
<small class="text-secondary"><pre>
앨범 	<%=album %>
재생시간 <%=displayTime %>
작곡가   <%=composer %>
작사가   <%=lyricist %>
</pre></small>
			</div>
		</div>
	</div>
	
	<div class="mt-5">
		<h3>가사</h3>
		<hr>
		<p>가사 정보 없음</p>
	</div>
	
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</form>
</div>
</body>
</html>