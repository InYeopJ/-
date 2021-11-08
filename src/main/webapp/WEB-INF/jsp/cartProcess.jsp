<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="cart_in.do" method="get">
<input type="hidden" name="p_image" value="'${param.p_image}'">
<input type="hidden" name="p_name" value="'${param.p_name}'">
<input type="hidden" name="price" value="${param.price}">
<input type="hidden" name="cnt" value="${param.cnt}">
<input type="submit" value="장바구니 가기">
</form>
</body>
</html>