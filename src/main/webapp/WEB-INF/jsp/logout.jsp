<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MatKiT</title>
<link rel="icon" href="./favicon.png"> <!-- title 탭에  파비콘(로고이미지) 띄우기 -->
</head>
<body>


<%
	session.removeAttribute("login");
%>

<script>
	alert('로그아웃 되었습니다.');
	location.href='/';
</script>
</body>
</html>