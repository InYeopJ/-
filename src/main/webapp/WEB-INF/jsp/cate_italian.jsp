<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>MatKiT</title>
<link rel="icon" href="./favicon.png"> <!-- title 탭에  파비콘(로고이미지) 띄우기 -->

	<!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
  
  <!-- google font -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
  
  <!-- google icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


	<!-- css파일 link 연결 -->
  <link rel="stylesheet" href="./css/main.css"/>
  <link rel="stylesheet" href="./css/header.css" />
  <link rel="stylesheet" href="./css/footer.css" />


  <!--GSAP & ScrollToPlugin-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous"></script>
  
  <!--Swiper-->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
 
  <!--ScrollMagic-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
  
  <!--Lodash-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js" integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww==" crossorigin="anonymous"></script>

	<!-- js 파일  -->
  <script defer src="./js/main.js"></script>
  
  
  
</head>
<body>

  <!-- 헤더 -->
 
  <jsp:include page ="header.jsp" flush="true"/>
 
  
  <!-- 	banner -->

	<section class="banner">
	<div class="bg"></div>
    <div class="inner">

       <div class="ital_top_banner"><img src="./images/ital_banner.jpg"/> </div>

    </div>
  </section>
  
  
  
  
  <!-- italian list -->
  <section class="ital_list">
      <div class="bg"></div>
      <div class="inner">
        <div class="ital_kit"><img src="./images/italian_list01.jpg"/></div>
      <div class="go1">
        <span class="material-icons" style="font-size: 30px;"><a href="/view_pizza">arrow_forward</a></span>
      </div>
      <div class="go2">
	    <span class="material-icons" style="font-size: 30px;"><a href="/view_tomatopasta">arrow_forward</a></span>
	  </div>
	  <div class="go3"> 
	    <span class="material-icons" style="font-size: 30px;"><a href="/view_oilpasta">arrow_forward</a></span>
	  </div>
	    <div class="go4"> 
	    <span class="material-icons" style="font-size: 30px;"><a href="/view_risotto">arrow_forward</a></span>
	  </div>
	  </div>
    </section>
    
    

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
  <jsp:include page ="footer.jsp" flush="true"/>


  <!--TO TOP BUTTON-->
  <div id="to-top">
    <div class="material-icons">arrow_upward</div>
  </div>

</body>
</html>		
