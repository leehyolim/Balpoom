<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>
    <link rel="stylesheet" href="./css/mypage.css?ver=6">
</head>
<body>

    <div id="mypage">
    <jsp:include page="header.jsp"></jsp:include>
   
 
        <img id="mpTitle" src="./img/mypage_title.png">
        
        <div id="mpInfo">
            <div id="mpTextbox">

<div id="mpText">
<font id="mpHello">${authMember.m_name }님 안녕하세요.</font>
<font size="2" color="#848484">저희 쇼핑몰을 이용해 주셔서 감사합니다:D
${authMember.m_name }님의 회원등급은 <font color="#848484"><b>새내기</b></font> 입니다.
구매시 기본적립 외 <font color="#848484"><b>0%</b></font>를 추가 적립해 드립니다.</font> 
</div>
            </div>
            <div id="mpCheck">
                <p class="mpCheckTitle">적립금</p><p class="mpCheckFont">150원</p><img class="mpCheckbtn" src="./img/btn_result.png">
                <p class="mpCheckTitle">쿠폰</p><p class="mpCheckFont">0개</p><img class="mpCheckbtn" src="./img/btn_result.png">
            </div>
        </div>
        <div id="mpBoxes">
            <div class="mpBox" onMouseOver="this.style.backgroundColor='#FAFAFA'; "onMouseOut="this.style.backgroundColor='#FFFFFF'" style=" cursor: pointer;">
                <p class="mpBoxTitle">ORDER</p>
                <p class="mpBoxText">주문 내역 / 배송 현황</p>
            </div>
            <a href="getBasketList.do">
            <div class="mpBox" onMouseOver="this.style.backgroundColor='#FAFAFA'; "onMouseOut="this.style.backgroundColor='#FFFFFF'" style=" cursor: pointer;">
                <p class="mpBoxTitle">CART</p>
                <p class="mpBoxText">장바구니 상품 조회</p>
            </div>
            </a>
            <div class="mpBox" onMouseOver="this.style.backgroundColor='#FAFAFA'; "onMouseOut="this.style.backgroundColor='#FFFFFF'" style=" cursor: pointer;">
                <p class="mpBoxTitle">MY BOARD</p>
                <p class="mpBoxText">게시물 관리</p>
            </div>
            <a href="mypage_update.jsp">
            <div class="mpBox" onMouseOver="this.style.backgroundColor='#FAFAFA'; "onMouseOut="this.style.backgroundColor='#FFFFFF'" style=" cursor: pointer;">
                <p class="mpBoxTitle">MY INFO</p>
                <p class="mpBoxText">회원 정보 조회 / 수정</p>
            </div>
            </a>

        </div>
         <jsp:include page="footer.jsp"></jsp:include>
    </div>
   
</body>
</html>