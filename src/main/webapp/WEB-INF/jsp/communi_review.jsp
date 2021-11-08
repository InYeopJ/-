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
                    <h2>REVIEW</h2>
                    <ul class="smap">
                        <li><a href="/"><img src="./images/home.png" alt="홈으로"></a></li>
                        <li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
                        <li class="en">REVIEW</li>
                        <li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
                        <li><a href="/communi_review" class="this">상품후기</a></li>
                    </ul>
                </div>
            </div>
  
  <!-- 서브타이틀 끝 -->
  
  
  
  <!-- 리뷰 -->
  <div id="container">
	                    
    <div class="review_wrap">
      <div class="news_wri_wrap">
	    <p class="txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</p>
	    <p><a href="javascript:void(0)" class="newBoardWriteBtn">후기쓰기</a></p></div>
    
    
      <table summary="리뷰" class="review_tb">
        <caption class="hid">리뷰 번호, 제목, 날짜, 조회수 테이블</caption>
        <colgroup>
          <col width="5.45454%">
          <col width="74.5454%">
          <col width="10.90909%">
          <col width="*">
        </colgroup>
        <thead>
          <tr>
            <th scope="col">NO</th>
            <th scope="col">제목</th>
            <th scope="col">날짜</th>
            <th scope="col">조회수</th>
          </tr>
        </thead>
       <tbody id="review">
         <tr>     <td>11</td>     <td class="left"><a href="javascript:void(0)">굿굿</a></td>     <td>2021-05-04</td>     <td>145</td> </tr>
         <tr>     <td>10</td>     <td class="left"><a href="javascript:void(0)">역시 밀키트는 이곳이 진리</a></td>     <td>2021-04-22</td>     <td>365</td> </tr>
         <tr>     <td>9</td>     <td class="left"><a href="javascript:void(0)">진짜진짜 맛있어요!</a></td>     <td>2021-04-17</td>     <td>236</td> </tr>
         <tr>     <td>8</td>     <td class="left"><a href="javascript:void(0)">잘받았습니당ㅎㅎ </a></td>     <td>2021-04-07</td>     <td>147</td> </tr>
         <tr>     <td>7</td>     <td class="left"><a href="javascript:void(0)">맛키트제품으로 가족들과 좋은 시간 보냈습니다 </a></td>     <td>2021-03-22</td>     <td>331</td> </tr>
         <tr>     <td>6</td>     <td class="left"><a href="javascript:void(0)">빠른 배송으로 맛있게 먹었어요 </a></td>     <td>2021-03-14</td>     <td>164</td> </tr>
		 <tr>     <td>5</td>     <td class="left"><a href="javascript:void(0)">맛있어요~ </a></td>     <td>2021-03-10</td>     <td>112</td> </tr>	       
         <tr>     <td>4</td>     <td class="left"><a href="javascript:void(0)">빠른 배송 감사합니다 </a></td>     <td>2021-03-04</td>     <td>132</td> </tr>
         <tr>     <td>3</td>     <td class="left"><a href="javascript:void(0)">맛도 배송도 굿굿</a></td>     <td>2021-03-03</td>     <td>260</td> </tr>
         <tr>     <td>2</td>     <td class="left"><a href="javascript:void(0)">항상 잘 애용하고 있습니다!!!! </a></td>     <td>2021-02-27</td>     <td>190</td> </tr>
         <tr>     <td>1</td>     <td class="left"><a href="javascript:void(0)">밀키트는 역시 맛키트!!!</a></td>     <td>2021-02-12</td>     <td>286</td> </tr>
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