<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>MatKiT</title>
<link rel="icon" href="./images/favicon.png"> <!-- title 탭에  파비콘(로고이미지) 띄우기 -->

<!--브라우저 스타일 초기화-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" >

<!-- google font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap"
	rel="stylesheet">
<!-- google icon -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">


<!-- css파일 link 연결 -->
<link rel="stylesheet" href="./css/main.css" >
<link rel="stylesheet" href="./css/header.css" >
<link rel="stylesheet" href="./css/footer.css" >

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
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" >
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!--ScrollMagic-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>

<!--Lodash-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
	integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="
	crossorigin="anonymous">
	</script>

<!-- js 파일  -->
<!-- <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script> -->
<script defer src="./js/main.js"></script>

</head>
<body>


	<!--VISUAL-->
	<section class="visual">
		<div class="inner">

			<div class="visual__pic">
				<img src="./images/visual003.jpg" />
			</div>

		</div>
	</section>


	<!--NOTICE-->
	<!-- 공지사항 스와이퍼  -->
	<section class="notice">

		<!--NOTICE LINE-->
		<div class="notice-line">
			<div class="bg-left"></div>
			<div class="bg-right"></div>
			<div class="inner">

				<div class="inner__left">
					<h2>공지사항</h2>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="javascript:void(0)">당일 출고 시간 변경 사항 안내</a>
							</div>
							<div class="swiper-slide">
								<a href="javascript:void(0)">배송 관련 변경 사항 안내</a>
							</div>
							<div class="swiper-slide">
								<a href="javascript:void(0)">시스템 점검 및 업데이트 안내</a>
							</div>
							<div class="swiper-slide">
								<a href="javascript:void(0)">택배지역 금요일 주문불가 안내</a>
							</div>
						</div>
					</div>
					<a href="/communi_notice" class="notice-line__more">
					<span class="material-icons">add_circle</span>
					</a>
				</div>

				<div class="inner__right">
					<h2>BEST</h2>
					<div class="toggle-promotion open">
						<div class="material-icons">upload</div>
					</div>
				</div>

			</div>
		</div>

		<!--PROMOTION-->
		<!-- BEST 상품 스와이퍼로 보여주기 (5개, 가운데만 투명, 사이드 불투명하게 하기, 화살표로 넘기기,  -->
		<div class="promotion">


			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="./images/pizza_b.jpg" alt="피자" > 
						<a href="/view_pizza" class="btn">자세히 보기</a>
					</div>
					<div class="swiper-slide">
						<img src="./images/tomato_pasta_b.jpg" alt="토마토파스타" > 
						<a href="/view_tomatopasta" class="btn">자세히 보기</a>
					</div>
					<div class="swiper-slide">
						<img src="./images/china_tang_b.jpg" alt="탕수육" > 
						<a href="/view_tang" class="btn">자세히 보기</a>
					</div>
					<div class="swiper-slide">
						<img src="./images/kor_bibimbab_b.jpg" alt="비빔밥" > 
						<a href="/view_bibimbab" class="btn">자세히 보기</a>
					</div>
					<div class="swiper-slide">
						<img src="./images/kor_fish-cakes_b.jpg" alt="어묵탕" > 
						<a href="/view_fishcakes" class="btn">자세히 보기</a>
					</div>
				</div>
			</div>

			<div class="swiper-pagination"></div>

			<div class="swiper-prev">
				<span class="material-icons">arrow_back</span>
			</div>
			<div class="swiper-next">
				<span class="material-icons">arrow_forward</span>
			</div>

		</div>
	</section>

	<!--special-->
	<section class="special_kit">
		<div class="bg"></div>
		<div class="inner">
			<div class="special__pic">
				<img src="./images/special.jpg" />
			</div>

		</div>
	</section>



	<!--login_join_sub-->
	<section class="login_join_sub">
		<div class="bg-left"></div>
		<div class="bg-right"></div>
		<div class="inner">

			<div class="btn-group">
				<a href="/join" class="btn btn--reverse">회원가입</a> <a
					href="/login" class="btn btn--reverse">로그인</a>
			</div>

		</div>
	</section>



	<!--AWARDS-->
	<section class="awards">
		<div class="inner">

			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="./images/awards_slide1.jpg" alt="대통령 표창" >
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide2.jpg" alt="우수사업주 인증" >
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide3.jpg" alt="대한상의회장상" >
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide4.jpg" alt="기업사회공헌 활동 부문" >
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide5.jpg" alt="KSI 1위 (5년 연속)" >
					</div>
					<div class="swiper-slide">
						<img src="./images/awards_slide6.jpg" alt="KS-SQI 1위 (5년 연속)" >
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
	

	<%@ include file="footer.jsp"%>
	

	
</body>
</html>