<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MatKiT</title>
	<!-- 파비콘  -->
  <link rel="icon" href="./favicon.png"> <!-- title 탭에  파비콘(로고이미지) 띄우기 -->

	<!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
  
  <!-- google font -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
  
  <!-- google icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

 <!-- fontawesaom icon : 수량 아이콘 -,+ 아이콘   -->
  <script src="https://kit.fontawesome.com/8702da1fc5.js" crossorigin="anonymous"></script>
  
	<!-- css파일 link 연결 -->
  <link rel="stylesheet" href="./css/main.css"/>
  <link rel="stylesheet" href="./css/footer.css"/>
  <link rel="stylesheet" href="./css/header.css"/>
  <link rel="stylesheet" href="./css/comunication.css"/>
  
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
  
  <!--서브 타이틀 -->
  
  <div class="sub_tit_wrap">
                <div class="sub_tit_inner">
                    <h2>자주하는 질문</h2>
                    <ul class="smap">
                        <li><a href="/"><img src="./images/home.png" alt="홈으로"></a></li>
                        <li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
                        <li class="en">FAQ</li>
                        <li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
                        <li><a href="/communi_FAQ" class="this">자주하는질문</a></li>
                    </ul>
                </div>
            </div>
  
  
  
 <!-- 자주하는 질문 -->
  
  
  <div id="container">
	                    
    <div class="review_wrap">
      <div class="news_wri_wrap">
	    <p class="txt">고객님의 궁금증과 문제점을 신속하고 정확하게 해결하기 위해 최선을 다하겠습니다.</p></div>
    
    
      <table summary="리뷰" class="review_tb">
        
        <thead>
          
        </thead>
       <tbody id="review">
         
         
         <tr><td class="left">
           <details>
  		     <summary class=><img src="./images/q16.png" height="16" width="16" style="float:left; margin-top:5px;">
  			 <span style="margin-left:10px;">주문한 상품은 언제 만든건가요?</span></summary><hr>
 			 <p>토요일,일요일을 제외한 AM 10:00에 주문이 마감되면 고객님의 모든 주문건을 집계하여 전달된 당일 주문량만 제조 후 포장합니다.<br>
				(이와 같은 시스템으로 운영되기에 오전 10시 이후의 주문건은 다음 날 제조되어 배송됩니다.)<br>
		   </details>
		 </td></tr>
         
         <tr><td class="left">
           <details>
  		     <summary class=><img src="./images/q16.png" height="16" width="16" style="float:left; margin-top:5px;">
  			 <span style="margin-left:10px;">내가 주문한 내역은 어떻게 확인하나요?</span></summary><hr>
 			 <p>묶음 배송은 동일한 ID, 동일한 결제방식으로 주문했을 경우 가능합니다.<br>
				주소는 달라도 상관없지만, 다를 경우에는 어느 주소로 배송을 원하시는지 남겨주셔야 합니다.<br>
				묶음 배송을 원하시면 MatKit 고객센터에 문의해주세요.<br>
				신속히 처리해 드리겠습니다.<br>
		   </details>
		 </td></tr>
         
         <tr><td class="left">
           <details>
  		     <summary class=><img src="./images/q16.png" height="16" width="16" style="float:left; margin-top:5px;">
  			 <span style="margin-left:10px;">내가 주문한 내역은 어떻게 확인하나요?</span></summary><hr>
 			 <p>MatKit 회원이신 경우 로그인 후, 홈페이지 상단  MY PAGE > 주문내역 에서 확인 가능합니다.<br>
		   </details>
		 </td></tr>
       
         <tr><td class="left">
           <details>
  		     <summary class=><img src="./images/q16.png" height="16" width="16" style="float:left; margin-top:5px;">
  			 <span style="margin-left:10px;">교환 또는 반품신청 시에 사진을 첨부해야 하나요?</span></summary><hr>
 			 <p>상품의 하자 등의 사유로 교환 또는 반품을 신청하시는 경우, 고객센터의 안내에 따라 해당 사항을 확인할 수 있는 사진 첨부를 부탁드립니다.<br>
				구매하신 상품의 문제 상황을 확인할 수 있는 당시의 상세한 사진일 수록, 보다 신속하고 정확한 안내를 받으실수 있습니다.<br>
				고객님의 소중한 말씀과 사진은 해당 담당부서로 공유되며, 이를 바탕으로 더 나은 품질의 상품으로 제공드리도록 하겠습니다.<br>
		   </details>
		 </td></tr>
       
         <tr><td class="left">
           <details>
  		     <summary class=><img src="./images/q16.png" height="16" width="16" style="float:left; margin-top:5px;">
  			 <span style="margin-left:10px;">교환/반품 기준이 어떻게 되나요?</span></summary><hr>
 			 <p>[상품에 문제가 있는 경우]<br>
 				1. 신선식품: 상품을 받은 날로부터 2일이내에 사진과 함께 고객센터로 접수해주세요.<br>
				2. 그외의 상품: 상품을 받은 날로부터 3개월 이내, 또는 문제가 있다는 사실을 알았거나 알 수 있었던 날로부터 30일 이내에, 
				사진과 함께 고객센터로 접수해주세요.
							[단순변심 / 주문 오류의 경우]<br>
				1. 신선식품: 재판매가 불가한 상품의 특성상 단순변심, 주문 실수, 개인 기호에 따른 교환 및 반품은 어렵습니다.<br>
				2. 그외의 상품: 상품을 받은 날로부터 7일이내에 교환 또는 환불 신청할 수 있습니다.<br>
				(참고)<br>
				단순변심인 경우 배송비는 고객님 부담입니다.<br>
				상품에 문제가 있는 것이 확인될 경우 배송비는 MatKit에서 부담합니다.</p>
		   </details>
		 </td></tr>
        
        <tr><td class="left">
           <details>
  		     <summary class=><img src="./images/q16.png" height="16" width="16" style="float:left; margin-top:5px;">
  			 <span style="margin-left:10px;">배송받는날을 선택할 수 있나요?</span></summary><hr>
 			 <p>원하시는 수령 날짜가 있으실 경우 주문시 요청사항란에 수령 원하시는 날짜 기재해주시면 해당 날짜에 맞춰 발송해드리고 있습니다.<br>
				수령 가능한 요일은 월요일~토요일이며, 공휴일 및 일요일은 택배사 휴무로 수령이 불가능하오니 주문시 참고부탁드립니다.<br>
				또한  택배사를 통하여 물건을 배송하기때문에 정확한 수령시간은 지정하기 어려운점 양해부탁드립니다.<br>
				특별한 날, 행사 등 중요한 날에 드시는거라면 해당일 하루 전날 수령으로 주문해주시길 권장드립니다.<br>
		   </details>
		 </td></tr>
       
         
       
         <tr>      
         </tr>
      </tbody>
    </table>
                    
    <div class="news_pagination">
      <ul class="pager">
        <li class=" active"><a href="javascript:void(0)">1</a></li>
      </ul>
    </div>
  </div>
                
</div> <!-- container 끝 --><!-- 리뷰 end -->
  
  
  
 
  
  

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