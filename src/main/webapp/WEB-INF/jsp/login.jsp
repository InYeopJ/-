<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file = "header.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MatKiT</title>
<!-- 파비콘  -->
<link rel="icon" href="./favicon.png">
<!-- title 탭에  파비콘(로고이미지) 띄우기 -->

<!--브라우저 스타일 초기화-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<!-- google font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap"
	rel="stylesheet">

<!-- google icon -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- fontawesaom icon : 수량 아이콘 -,+ 아이콘   -->
<script src="https://kit.fontawesome.com/8702da1fc5.js"
	crossorigin="anonymous"></script>

<!-- css파일 link 연결 -->
<link rel="stylesheet" href="./css/main.css" />
<link rel="stylesheet" href="./css/footer.css" />
<link rel="stylesheet" href="./css/header.css" />
<link rel="stylesheet" href="./css/login_join.css" />

<!--GSAP & ScrollToPlugin-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"
	integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"
	integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="
	crossorigin="anonymous"></script>

<!--Swiper-->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!--ScrollMagic-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>

<!--Lodash-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
	integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="
	crossorigin="anonymous"></script>

<!-- js 파일  -->
<script defer src="./js/main.js"></script>

<!-- <script type="text/javascript">
	function loginCheck() {
		if (f.id.value == "") {
			alert("아이디를 입력하세요!");
			f.id.focus();
			return;
		}
		if (f.passwd.value == "") {
			alert("비밀번호를 입력하세요!");
			f.passwd.focus();
			return;
		}
		document.f.submit();
	}
</script> -->
</head>
<body>


	<%
		if (login != null) {
			response.sendRedirect("index.jsp");
		}

		Cookie[] cs = request.getCookies();
		String id = "";
		String pw = "";

		if (cs != null) {

			for (Cookie c : cs) {
				if ("id".equals(c.getName())) {
					id = c.getValue();
				}
				if ("pw".equals(c.getName())) {
					pw = c.getValue();
				}
			}
		}
		
	%>

	<!--서브 타이틀 -->

	<div class="sub_tit_wrap">
		<div class="sub_tit_inner">

			<ul class="smap">
				<li><a href="/"><img src="./images/home.png"
						alt="홈으로"></a></li>
				<li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
				<li><a href="/login" class="this">LOGIN</a></li>
			</ul>
		</div>
	</div>

	<!-- 서브타이틀 끝 -->


	<div id="container" class="loginArea">
		<form action="/login" method="post" class="loginForm">
			<h5 class="page_title">LOGIN</h5>
			<input type="email" name="id" class="id_class" id="id" placeholder="이메일" required value="<%=id%>"> 
			<input type="password" name="passwd" class="pw_class" id="passwd" placeholder="비밀번호" required value="<%=pw%>">

			<!-- 자동완성 -->
<!-- 			<div align=center>
				<input name="auto" type="checkbox" value="yes" /> 로그인저장
			</div>
 -->
			<input type="submit" class="loginBtn" id="login-btn" value="로그인">

<!-- 			<div class="find_idpw">
				<a href="javascript:void(0)" class="find_id">아이디 찾기</a> 
				<a href="javascript:void(0)" class="find_pw">비밀번호 찾기</a>
			</div> -->
			<a href="/join" class="joinBtn" id="join-btn">회원가입</a>

		</form>
	</div>









	<!--AWARDS-->
	<section class="awards">
		<div class="inner">

			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="./images/awards_slide1.jpg" alt="대통령 표창" />
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide2.jpg" alt="우수사업주 인증" />
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide3.jpg" alt="대한상의회장상" />
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide4.jpg" alt="기업사회공헌 활동 부문" />
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide5.jpg" alt="KSI 1위 (5년 연속)" />
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide6.jpg" alt="KS-SQI 1위 (5년 연속)" />
					</div>


				</div>
			</div>

			<div class="swiper-prev">
				<span class="material-icons">arrow_back</span>
			</div>
			<div class="swiper-next">
				<span class="material-icons">arrow_forward</span>
			</div>

		</div>
	</section>



	<!--TO TOP BUTTON-->
	<div id="to-top">
		<div class="material-icons">arrow_upward</div>
	</div>

<%@ include file="footer.jsp" %>
