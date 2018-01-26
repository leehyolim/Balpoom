<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>판매자센터</title>
    <link rel="stylesheet" href="./css/sellerIndex1.css?ver=17">
    <link rel="stylesheet" href="./css/master_footer.css?ver=5">

</head>

<body>
    <div class="sellerIndex_wrapper" >
        <div class="sellerIndex_header">
            <img class="sellerheaderimg" src="./img/sellerpageLogo1.png"><p class="headerTitle1">판매자센터</p>
            
            <c:if test="${! empty authSeller }">
            <a href="logout.do"><p class="seller_logoutBtn">로그아웃</p></a>
            <p class="seller_headerText1">${authSeller.s_name }님 환영합니다</p>
            </c:if>
        </div>
        <div class="tab">
                <p class="tablinks" onclick="openPage(event, 'Home')" id="defaultOpen" style="border-top-left-radius: 4px;">판매자센터 홈</p>
                <p class="tablinks" onclick="openPage(event, 'Product')">상품등록</p>
                <p class="tablinks" onclick="openPage(event, 'Order')" >주문관리</p>
                <p class="tablinks" onclick="openPage(event, 'Inquiry')" style="border-top-right-radius: 4px;">문의관리</p>
            </div>
            <div id="Home" class="tabcontent">
                    
                    <p>홈 화면입니다.</p>
                    
                  </div>
                  
                  <div id="Product" class="tabcontent">
                    
                    <p>상품등록화면 입니다.</p> 
                  </div>
                  
                  <div id="Order" class="tabcontent">
                    
                    <p>주문관리화면 입니다.</p>
                  </div>
                  <div id="Inquiry" class="tabcontent">
                        
                     <p>문의관리화면입니다.</p>
                  </div>
                 <div id=footer_footer style="padding-top: 28px;">
		<div id=footer_fotterMenu>
			<div id=footer_ft01>
				<p class=footer_title>CUSTOMER CENTER</p>
				<p id=footer_no>02 - 2231 - 2774</p>
				<p class=footer_time>
					open hour / mon - fri <b>pm1:00 - pm5:00</b>
				</p>
				<p class=footer_time>closed / sat . sun . red day off</p>

			</div>
			<div id=footer_ft02>

				<p class=footer_title>BANK ACCOUNT</p>
				<p>농협 301-0146-7487-51</p>
				<p>국민 409101-01-247389</p>
				<p>우리 1005-302-511811</p>
				<p>예금주 : 발품(이효림)</p>

			</div>
			<div id=footer_ft03>
				<p class=footer_title>SNS</p>
				<p>페이스북, 인스타그램, 네이버 블로그,</p>
				<p>네이버 모두에서 발품의 다양한 상품을</p>
				<p>확인해보세요. 아이콘을 누르시면 바로</p>
				<p>이동할 수 있어요!</p>

			</div>
			<div id=footer_ft04>
				<p class=footer_title>NOTICE</p>
				<p>새로운 상품의 출시를 알려드립니다.</p>
				<p>새로운 상품의 출시를 알려드립니다.</p>
				<p>새로운 상품의 출시를 알려드립니다.</p>
				<p>새로운 상품의 출시를 알려드립니다.</p>
				<p>새로운 상품의 출시를 알려드립니다.</p>
				<p>새로운 상품의 출시를 알려드립니다.</p>

			</div>
			<div id=footer_ft05>
				<pre>
상호명: 발품 (BalPoom) | 대표: 이효림 | 개인정보관리책임자: 이효림 | 전화: 02-123-1234 | 이메일: balpoom@balpoom.co.kr

주소: 서울특별시 마포구 신촌로 176 (대흥동) | 사업자등록번호: 743-19-00394 | 통신판매: 제2017-서울마포-0687호

ⓒ 2017. balpoom all rights reserved.
            </pre>
			</div>
		</div>
	</div>
        </div>
        

<script>
function openPage(evt, pageName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(pageName).style.display = "block";
    evt.currentTarget.className += " active";
}

document.getElementById("defaultOpen").click();
</script>    
    
</body>
</html>