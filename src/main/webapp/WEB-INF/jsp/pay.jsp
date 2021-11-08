<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="basketVO.BasketVO"%>
<%@ page import="java.util.*"%>


    
<%	request.setCharacterEncoding("utf-8");
 //   String name = (String)request.getAttribute("name");
 //   String email = (String)request.getAttribute("email");
 //  String phone = (String)request.getAttribute("phone");
 //  String address = (String)request.getAttribute("address");
  //  int totalPrice = (int)request.getAttribute("totalPrice");
     String name = (String)request.getParameter("name");
     String email = (String)request.getParameter("email");
     String phone = (String)request.getParameter("phone");
     String address = (String)request.getParameter("address");
     String stotalPrice = (String)request.getParameter("totalPrice");
/*      String p_name = (String)request.getParameter("p_name"); */
     int totalPrice = Integer.parseInt(stotalPrice);
     
   
     System.out.println("name: "+name);
     System.out.println("email: "+email);
     System.out.println("phone: "+phone);
     System.out.println("address: "+address);
     System.out.println("stotalPrice: "+stotalPrice);
     System.out.println("totalPrice: "+totalPrice);
     /* System.out.println("p_name: "+p_name); */
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pay</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
    <script>
    $(function(aa){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp12811275'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'html5_inicis',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : "상풍명",
            amount : '<%=totalPrice%>',
            buyer_email : '<%=email%>',
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>',
            buyer_addr : '<%=address%>',
            /* buyer_postcode : '123-456', */
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
            	
            	var msg =  '결제가 완료되었습니다.';
          /*   	msg += '\n고유ID : ' + rsp.imp_uid;
            	msg += '\n상점 거래ID : ' + rsp.merchant_uid; */
            	msg += '\n결제 금액 : ' + rsp.paid_amount;
            	msg += '\n카드 승인번호 : ' + rsp.apply_num;
            	location.href="cart_in.jsp";
            	
            	} else {
            	msg = '결제에 실패하였습니다.';
            	msg += '에러내용 : ' + rsp.error_msg;
            	location.href="cart_in.jsp";
            	}
            	alert(msg);
            	});
            	});
    </script> 
 
</body>
</html>