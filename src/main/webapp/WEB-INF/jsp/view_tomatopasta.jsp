<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<title>MatKiT</title>
	<!-- 파비콘  -->
  <link rel="icon" href="../favicon.png"> <!-- title 탭에  파비콘(로고이미지) 띄우기 -->

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
  <link rel="stylesheet" href="../css/main.css"/>
  <link rel="stylesheet" href="../css/prod_detail.css"/> 
  <link rel="stylesheet" href="../css/header.css"/>
  <link rel="stylesheet" href="../css/footer.css"/>
  
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
  <script defer src="../js/main.js"></script>
  
  
  
</head>
<body>
  <!-- 헤더 -->
 
  <jsp:include page ="header2.jsp" flush="true"/>
  
  <!-- 	banner -->

	<section class="banner">
	<div class="bg"></div>
    <div class="inner">

       <div class="salad_top_banner"><img src="../images/ital_banner.jpg"/> </div>

    </div>
  </section>
  
  
  
  
  <section class="detailView_info">
    <div class="detatil_View">
      <div class="bg-left"></div>
      <div class="bg-right"></div>
      <div class="inner">

        <div class="inner__left">
            <div class="photo_left">
              	<img src="../images/italian/italian_tomato_pasta530.jpg" id="pho_detail" class="pho_detail" alt="토마토 파스타 630g ">
            </div>
        </div>
          
        <div class="inner__right">
            <div class="detail_right">
            	<span class="sub_name">진하고 깊은 풍미의 토마토소스로 만든</span><br>
            	<span class="item_name" id="item_name">토마토 파스타 630g</span><br>
            	<span class="howmuch" id="howmuch">9900원</span>
            </div>
			<br>
			<!-- 무료배송 알림 -->
            <div class="freeDelivery">이벤트 &nbsp;| &nbsp; 맛키트 회원이라면, <span class="green-color">무료배송!</span></div>
		
		
			<div class="delivery_tip">
				<span class="delv_tit"><span style="font-size: 12px; color: #555555; padding: 0 50px 0 0;">배송비</span></span>
				<span class="delv_cost"><span style="font-size: 12px; color: #555555;">
				<span class="delv_price_"><span class="green-color">무료배송</span></span></span></span>
			</div>
			<div class="madein_prod">
				<span class="title"><span>원재료</span></span> <span class="con">
				<span style="font-size: 12px; color: #555555;">상품페이지 하단참조</span></span>
			</div>


                
           <!-- 구매옵션 -->
            <div class="optionList">
                <!-- 수량 선택 옵션 -->
                <div class="countOption">
                    <div class="wantCount">수량</div>
                    <div class="countSelect count ">
                        <input type='button' onclick='count("minus")' value='-'/>
                      	<span id='result' class="quantity" >1</span>
                        <input type='button' onclick='count("plus")' value='+'/>
                    </div>
                </div>
				
				<script>
				function count(type)  {
					  // 결과를 표시할 element
					  var resultElement1 = document.getElementById('result');
					  var resultElement2 = document.getElementById('price');
					  var resultElement3 = document.getElementById('totalPrice');
					  
					  
					  // 현재 화면에 표시된 값
					  var number1 = resultElement1.innerText;
					  var number2 = resultElement2.innerText;
					  var number3 = resultElement3.innerText;
					  
					  // 더하기/빼기
					  if(type === 'plus') {
					    number1 = parseInt(number1) + 1;
					    number2 = parseInt(number2) + 9900;
					    number3 = parseInt(number3) + 9900;
					  }else if(type === 'minus')  {
					    number1 = parseInt(number1) - 1;
					    number2 = parseInt(number2) - 9900;
					    number3 = parseInt(number3) - 9900;
					  }
					  
					  // 결과 출력
					  resultElement1.innerText = number1;
					  resultElement2.innerText = number2;
					  resultElement3.innerText = number3;
					}
				
				function goCart(){
					
					 Swal.fire({	
						  position: 'center',
						  icon: 'success',
						  title: '장바구니에 상품이 \n 정상적으로 담겼습니다',
						  showConfirmButton: false,
						  timer: 3000
						}).then((result) => {
					
					var p_image1 = document.getElementById('pho_detail');
					var p_image = p_image1.getAttribute("src").substring(1);
					var p_name=  document.getElementById('item_name').innerText;
					var price = document.getElementById('howmuch').innerText.split("원",1);
					var cnt = document.getElementById('result').innerText;
					
					location.href="../cartProcess.jsp?p_image=" + p_image + "&p_name=" + p_name + "&price=" + price + "&cnt=" + cnt;
					
					})	
			}
				
				</script>


            </div> <!-- 구매옵션 닫기 -->

					<!-- price box 그룹 -->
					<div class="price_box_wrap">
						<!-- 상품가격 price box -->
						<div class="price_box">
							<span class="product_price">상품가격</span>
							 <span id="price" class="product_price1 "> 9900</span><span>원</span>
						</div>


						<!-- 총 주문금액 -->
						<div class="tot_price">
							<span class="tot_price1">총 주문금액</span> 
							<span id="totalPrice" class="tot_price2">9900</span><span>원</span>
						</div>

						<!-- 장바구니/바로구매 버튼 -->
						<div class="cart_pur" style="margin: 40px;">

							<button type="button" class="cart_btn" onClick="goCart()">장바구니</button>
							<button type="button" class="pur_btn" onClick="loaction.href=''">바로구매</button>




						</div>

					</div>
					<!-- price-box-wrap 닫기 -->


				</div>
				<!-- 주문 정보 닫기 -->
      </div>
    </div>
  </section>
 
 <!-- 상품안내&리뷰&배송안내 tab -->
 <div class="infoTab">
        <label class="prod_info">
            <input type="radio" name="showType" class="prod_info1" id="showTypeContent" checked="">
            <span class="prod_info2 btn-show" onclick="animateScroll('#detail-area')">상품설명</span>
        </label>
        <label class="prod_review">
            <input type="radio" name="showType" class="prod_review1">
            <span class="prod_review2 btn-show" onclick="animateScroll('#review-area')">리뷰</span>
        </label>
        <label class="delv_info">
            <input type="radio" name="showType" class="delv_info1">
            <span class="delv_info2 btn-show" onclick="animateScroll('#delivery-area')">배송안내</span>
        </label>
    </div>
 
 
 <!-- 상품 상세 설명 tab -->
	<div id="detail-area" class="info_area" style="text-align:center; font-size:36px; font-weight:800px; ">
      <div class="info_area1">
    
        <br>
        <figure class="info_area_image">
          <img src="../images/detailView/detail_tomatopasta_conf.jpg">
        </figure>   
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
    </div>
 
 
 
  <!-- 배송안내 tab -->
	<div id="delivery-area" class="delv_area" style="text-align: left">
		<div class="delv_area1">배송안내</div>
		<div class="delv_area2">
			<hr>
			<div class="delv_area3">
				1. 배송 정보<br>1-1. 배송비 정책
			</div>
			<p>
				[공통] 맛키트 회원 모두 무료배송입니다<br> 
				[유의사항] 교환 및 환불의 경우, 택배비가 발생할 수 있습니다.
			</p>

			<span class="delv_area4">1-2. 일반배송 (택배배송)</span>
			<p>
				[배송일] 오전10시까지 결제가 완료된 상품은 당일발송을 원칙으로 합니다.<br> 
				[배송방법] 우체국 택배를 통해서 배송되며, 송장 번호는 주문내역에서 개별적으로 확인 가능합니다.<br> 
				[배송지역] 전국 모든 지역 배송 가능합니다. (제주도 및 도서 산간 지역은 1~2일 늦어질 수 있습니다.)<br> 
				[배송시간] 택배로 배송	당일 정확한 배송 시간 안내는 어려운 점 양해 부탁드립니다.<br> 
				
			</p>

			<span class="delv_area5">2. 교환 및 환불 정책</span>
			<p>
				[결제 완료] 상태라면 언제든지 홈페이지 및 고객센터를 통해 해지 가능합니다. (MY PAGE &gt; 주문내역)<br>
				[발송 준비] 단계에서는 주문 내역 변경 및 주문 취소가 불가합니다.<br> 
				[배송 완료] 배송 이후에는 상황에 따라 교환 및 환불이 불가할 수 있습니다.<br> 
				[기타] 무통장 결제의 환불은 주문취소요청이 확인된 날짜 기준으로 다음날(휴일 제외)에 일괄적으로 이루어집니다.
			</p>
		</div>
	</div>


  <!--AWARDS-->
  <section class="awards">
    <div class="inner">

      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="../images/awards_slide1.jpg" alt="대통령 표창" />
          </div>
          <div class="swiper-slide">
            <img src="../images/awards_slide2.jpg" alt="우수사업주 인증" />
          </div>
          <div class="swiper-slide">
            <img src="../images/awards_slide3.jpg" alt="대한상의회장상" />
          </div>
          <div class="swiper-slide">
            <img src="../images/awards_slide4.jpg" alt="기업사회공헌 활동 부문" />
          </div>
          <div class="swiper-slide">
            <img src="../images/awards_slide5.jpg" alt="KSI 1위 (5년 연속)" />
          </div>
          <div class="swiper-slide">
            <img src="../images/awards_slide6.jpg" alt="KS-SQI 1위 (5년 연속)" />
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
  <jsp:include page ="footer2.jsp" flush="true"/>


  <!--TO TOP BUTTON-->
  <div id="to-top">
    <div class="material-icons">arrow_upward</div>
  </div>

</body>
</html>		