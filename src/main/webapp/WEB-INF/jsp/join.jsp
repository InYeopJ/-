<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


</head>
<body>


	<!-- 헤더 -->

	<jsp:include page="header.jsp" flush="true" />


	<!--서브 타이틀 -->

	<div class="sub_tit_wrap">
		<div class="sub_tit_inner">

			<ul class="smap">
				<li><a href="/"><img src="./images/home.png" alt="홈으로"></a></li>
				<li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
				<li><a href="/join" class="this">JOIN</a></li>
			</ul>
		</div>
	</div>

	<!-- 서브타이틀 끝 -->


	<div id="container" class="joinArea">

		<form action="/join" method="POST">
			<h5 class="page_title1">JOIN</h5>
			<label for="id">아이디</label>
			<div id="idBox" class="box">
				<input type="text" id="id" name="id" class="input">
			</div>



			<label for="pwd">비밀번호</label>
			<div id="pwdBox" class="box">
				<input type="password" id="passwd" name="passwd" class="input">
			</div>
			
			<label for="pwdch">비밀번호확인</label>
			<div id="pwdchBox" class="box">
				<input type="password" id="passwdch" name="passwdch" class="input">
			</div>


			<label for="name">이름</label>
			<div id="nameBox" class="box">
				<input type="text" id="name" name="name" class="input">
			</div>

			<label for="birthday">생년월일</label>
			<div id="birthday" class="box">
				<input type="text" name="birthday" placeholder="19900814	"
				class="input">
			</div>

			<label for="email">본인 확인 이메일</label>
			<div id="email" class="box">
				<input type="text" name="email" placeholder="example@gmail.com"
					class="input">
			</div>


			<label for="address">주소</label>
			<div id="address" class="box">
				<input type="text" name="address" placeholder="주소 입력" class="input">
			</div>


			<label for="phone">전화번호</label>
			<div id="phoneBox" class="box">
				<input type="text" id="hp" name="hp" class="input"
					placeholder="'-' 없이 숫자만 입력">
			</div>

			<input type="submit" id="signin" value="가입하기">
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




	<!-- footer  -->
	<jsp:include page="footer.jsp" flush="true" />

	<!--TO TOP BUTTON-->
	<div id="to-top">
		<div class="material-icons">arrow_upward</div>
	</div>


</body>
</html>