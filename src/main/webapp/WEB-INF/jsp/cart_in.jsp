<%@page import="basketVO.BasketVO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



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
  <link rel="stylesheet" href="./css/cartIn.css"/>
  
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
  
  <script src="js/jquery-3.5.1.js"></script>
  <script>

	function pay(aa){ //총 결제 금액을 가지고 가서 DB에 user_id와 총 결제 금액이 totalPrice 테이블에 저장됨.
		alert("결제창으로 이동하겠습니다.");
		location.href = "totalPrice.do?all_total=" + aa;
    }	
	
	function deleteRow(ths){ //각 제품의 삭제버튼 누르면 행만 삭제됨//데이터까지는 삭제 x
	    var ths = $(ths);
	    ths.parents("tr").remove();
	    
	  /*   var total_sum =document.getElementId("total_sum"); */
	 /*    location.href="oneDelete.do?cart_id=" + cart_id; */
	    
	}
		
	function goHome(){ //제품 선택 페이지로 돌아가기
		location.href="index.jsp" ;
	}

	function delAllitem(){ //장바구니 모두 비우기 
		location.href = "cartClear.do";
	}
	 
  </script>	
  
  
  
</head>
<body>

  
  <!-- 헤더 -->
 
  <jsp:include page ="header.jsp" flush="true"/>
  
  
  <!--서브 타이틀 -->
  
  <div class="sub_tit_wrap">
                <div class="sub_tit_inner">
                    <h2>장바구니</h2>
                    <ul class="smap">
                        <li><a href="index.jsp"><img src="./images/home.png" alt="홈으로"></a></li>
                        <li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
                        <li class="en">MY CART</li>
                        <li><img class="arrow" src="./images/next9_11.png" alt="하위메뉴"></li>
                        <li><a href="./cart1.jsp" class="this">장바구니</a></li>
                    </ul>
                </div>
            </div>
  
  <!-- 서브타이틀 끝 -->
  
  
  
  <!-- 장바구니 -->
  <div id="container">
	                    
    <div class="cart_wrap">
    
    <table class="cart_tb" border="0" align="center" style="margin-top:50px;"> 
	
	<tr><td id="title" colspan="8" align="left">구매상품</td>
<tr><td colspan="8" align="left"><input type="checkbox" name="goods" style="font-weight:700;" checked>일반상품(${fn:length(cartlist)})</td> 
	<tr align="center" id="title" class="menu"><td width=5%></td>
	<!-- 	<td>번호</td> -->
		<td width=20% >이미지</td>
		<td width=30%>상품명</td>
		<td width=20%>가격</td>
		<td width=10%>수량</td>
		<td width=20%>합계</td>
		<td width=30% colspan="2">선택</td>
		
<c:choose>
<c:when test="${cartlist == null}">
		<tr><td colspan="7" align="center">장바구니가 비어있습니다</td></tr>
</c:when>
<c:otherwise>
	 	<c:forEach var="cart" items="${sessionScope.cartlist}" >
	 	<tr align="center" id='table'><%-- <td id="count">${status.count}</td> --%>
	 	<td class="cart_cont"><input type="checkbox" name="select1" checked ></td>
		<td width="20"><img src=${cart.p_image}  width='90'></td>
	 	<td width="30" name="p_name" class="cart_cont">${cart.p_name}</td>
	
	    <%-- <td width="20" name="price"><fmt:formatNumber value="${cart.price}" pattern="#,###"/> </td> --%>
	    <td width="20" name="price" class="cart_cont"><input name="price" value="${cart.price}"></td>
	 	<td width=10% class="cart_cont"><input type="number" name="cnt" id="amount" min="1" max="20" value="${cart.cnt}" width="5" onclick="add(this)"> </td>
	 	
	 	<c:set var="one_total" value="${cart.price * cart.cnt}"/>
	 	<td width=20% name="one_total" class="cart_cont"><%-- <fmt:formatNumber value="${one_total}" pattern="#,###"/></td> --%>
	 	<input name="price" value="${one_total}"></td>
	 	
   	<%-- 	<input type="hidden" value="<%= cv.getUser_id() %>">
				<input type="hidden" value="number"> --%>
		
		<td width="10" class="cart_cont"><input type="button" value="수정" onclick="oneUpdate()" ></td>
		<td width="10" class="cart_cont"><input type="button" value="삭제" onclick= "deleteRow(this);"></td>
		</tr>
		</c:forEach>
</c:otherwise>
</c:choose>	
</table>	

		<c:set var="all_total" value="0"/>
    <c:forEach var="result" items="${sessionScope.cartlist}">   
    	<c:set var="all_total" value="${all_total + (result.price * result.cnt)}"/> 
 	</c:forEach> 

	<table class="cart_tb" border="0" align="center">
	<tr><td align="right" id="title">상품구매금액  <fmt:formatNumber value="${all_total}" pattern="#,###"/> + 무료배송 = 결제 총 금액 : <fmt:formatNumber value="${all_total}" pattern="#,###"/> 원</td><!-- 전체 상품 가격 나오게 --></tr>
	<tr><td align="right"><input type="button" value="선택상품삭제" >
	
	<input type="button" value="장바구니 비우기" onclick="delAllitem()"></td></tr>
	<%-- <tr><td align="left"><input type="button" value="홈으로 가기" onclick="goHome()"></td></tr> --%>
	<%-- <tr><td align="center"><input type="button" value="선택한 상품 주문" onclick="pay(${all_total});"></td></tr> --%>
</table>	
	<form name="p1" action="pay.jsp" method="post">
	<table class="cart_tb" border="0" align="center">
	<!-- 값 가져오기 -->
	<tr><td align="center" id="title"><h1>주문 / 결제</h1></td></tr>
		<p>
		<tr><td align="center"><span>이름</span> <input name="name" required/>
		</p>
		<p>
		<span>이메일</span> <input name="email" required/>
		</p>
		<p>
		<span>전화번호</span><input type="text" name="phone" required/>
		</p>
		<p>
		<span>주소</span><input name="address" required/>
		</p>
		<p>
		<span>총 금액:${all_total}</span><input type="hidden" value="${all_total}" name="totalPrice"><%-- <input type="hidden" value="${param.p_name}" name="p_name"> --%>
		</p>
		
		<input type="submit" value="결제하기"> <input type="reset" value="취소하기"> <input type="button" value="홈으로 가기" onclick="goHome()"></td></tr>
		
	</table>
	</form>
      
      
      
    </div>
                
  </div> <!-- container 끝 --><!-- 공지사항 end -->
  
  
  
  

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