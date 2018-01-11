<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@page import="domain.Basket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.User"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/master_basket.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="./js/jquery.innerfade_basket.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<script src="./js/innerfade1.js"></script>
<%-- <% ArrayList<Basket> baskets = (ArrayList<Basket>) request.getAttribute("baskets");%>
    <% User user = (User) request.getAttribute("user");%>
    <% session.setAttribute("user", user);%> --%>
</head>
<body>
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <select id="choice">
    <option selected>Outer</option>
    <option >Top</option>
    <option >Bottom</option>
  </select><br>
  <form action="#" id="fitple-form">
  </form>
</div>

<div id="header">
  <center><div id="logo">
    <a href="index.html"><img src="./img/logo_.jpg"/></a>
  </div></center>
   
   
</div>
<div id="navbar">
  <center>
    <div id="outer" class="menu">
          <b>Outer</b><br>---<br>Coat&amp;Jackek
    </div>
    <div id="top" class="menu">
       <b>Top</b><br>---<br>Shirt&amp;Hoodie
    </div>
    <div id="bottom" class="menu">
       <b>Bottom</b><br>---<br>Jean&amp;Slacks
    </div>
    <div id="shoes" class="menu">
        <b>Shoes</b><br>---<br>Dress&amp;Running
    </div>
</center>
</div>
<br><br>

<%-- <!--
<h2>안녕하세요, <%= user.getUsername()%> 님 ^^</h2>
    <table border="0px">
        <tr>
            <th width="200">장바구니 ID</th>
            <th width="200">회원이름</th>
            <th width="200">상품 ID</th>
            <th width="200">갯수</th>
        </tr>
        <%
            for (int i = 0; i < baskets.size(); i++) {
                Basket basket = baskets.get(i);
        %> 
        <tr>
            <td align="center"><%=basket.getBasketid()%></td>
            <td align="center"><%=user.getUsername()%></td>
            <td align="center"><%=basket.getProductid()%></td>
            <td align="center"><%=basket.getNumbers()%></td>
            <td align="center">
            <form action="delete" method="post">
                    <input type="hidden" name="basketid" value="<%=basket.getBasketid()%>">
                    <input type="hidden" name="userid" value="<%=user.getUserid()%>">
                    <input type="submit" value="취소">
                </form></td>
        </tr>
        <% }%>
    </table>
--> --%>
    <a href="orderForm.jsp">주문하기</a>

    <h1>장바구니_JSP구현</h1>
	
    <div id=footer>
    <div id=fotterMenu>
        <div id=ft01>
                <p id=cc>CUSTOMER CENTER</p>
                <p id=no>02 - 2231 - 2774</p>
                <p class=time>open hour / mon - fri <b>pm1:00 - pm5:00</b></p>
                <p class=time>closed / sat . sun . red day off</p>

        </div>
        <div id=ft02>

                <h6 id=bank>BANK ACCOUNT</h6>
                <p>농협 301-0146-7487-51</p>
                <p>국민 409101-01-247389</p>
                <p>우리 1005-302-511811</p>
                <p>예금주 : 발품(이효림)</p>

        </div>
        <div id=ft03>
            <h6 id=sns>SNS</h6>
            <p>페이스북, 인스타그램, 네이버 블로그,  </p>
            <p>네이버 모두에서 발품의 다양한 상품을 </p>
            <p>확인해보세요. 아이콘을 누르시면 바로 </p>
            <p>이동할 수 있어요!</p>

        </div>
        <div id=ft04>


        <p id=notice>NOTICE</p>
        <p>새로운 상품의 출시를 알려드립니다.</p>
        <p>새로운 상품의 출시를 알려드립니다.</p>
        <p>새로운 상품의 출시를 알려드립니다.</p>
        <p>새로운 상품의 출시를 알려드립니다.</p>
        <p>새로운 상품의 출시를 알려드립니다.</p>
        <p>새로운 상품의 출시를 알려드립니다.</p>
        
        </div>
        <div id=ft05>
        <pre>
            상호명: 발품 (BalPoom) | 대표: 이효림 | 개인정보관리책임자: 이효림 | 전화: 02-123-1234 | 이메일: balpoom@balpoom.co.kr

            주소: 서울특별시 마포구 신촌로 176 (대흥동) | 사업자등록번호: 743-19-00394 | 통신판매: 제2017-서울마포-0687호

                            ⓒ 2017. balpoom all rights reserved.
        </pre>
    </div>
    </div>
</div>

<!--<script src="./js/sticky1.js"></script>-->
<script src="./js/bestProd_basket.js"></script>
</body>
</html>