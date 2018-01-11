<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master.css">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="./js/jquery.innerfade.js"></script>
    <title>BalPoom</title>
    <script src="./js/innerfade.js"></script>
    <script type="text/javascript" src="./js/fitple.js"></script>
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

    <span id="fitple" style="cursor:pointer" onclick="openNav()"><img src="./img/fitple.png"/></span>




    <div id="header">
      <center><div id="logo">
        <a href="main.jsp"><img src="./img/logo_.jpg"/></a>
      </div></center>
        <div id="header-my">
          <a href="login.jsp" class="member">로그인</a>
        </div>
        <div id="header-my2">
          <a href="agreePage.jsp" class="member">회원가입</a>
        </div>
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
    <br>
    <div id="mainslide">
      <ul id="inner-fade">
    <li><img src="./img/slide1.jpg"  /></li>
    <li><img src="./img/slide2.jpg" /></li>
    <li><img src="./img/slide3.jpg" /></li>
    <li><img src="./img/slide4.jpg" /></li>
    </ul>

    </div>
    <br>





  <div class="wrapper">
    <div id="left">
      <img src="./img/leftfoot.png"/>
    </div>
    <div id="right">
      <img src="./img/rightfoot.png"/>
    </div>
  <div id="second">
    <div id="frame1">
      <div id="title1">
            <p id="boTitle">OUTER BEST</p>
<div class="line1">
        <div id="bestOuter">
            <div id=divImg onmouseover="imgTran()" onmouseout="imgTran2()">
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName"><a href="detail_page.jsp">베이직 더플코트(네이비)</a></p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter" onmouseover="imgTran()" onmouseout="imgTran2()">
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
 </div>
 <div class="line2">
        <div id="bestOuter">
            <div id=divImg onmouseover="imgTran()" onmouseout="imgTran2()">
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName"><a href="detail_page.jsp">베이직 더플코트(네이비)</a></p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter" onmouseover="imgTran()" onmouseout="imgTran2()">
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
 </div>

    </div>
    </div>
    <div id="frame2">
      <div id="title1">
            <p id="boTitle">OUTER BEST</p>
<div class="line1">
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter" >
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
</div>
<div class="line2">
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter" >
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
</div>
    </div>
    </div>
    <div id="frame3">
      <div id="title1">
            <p id="boTitle">OUTER BEST</p>
<div class="line1">
        <div id="bestOuter">
            <div id=divImg >
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
</div>
<div class="line2">
        <div id="bestOuter">
            <div id=divImg >
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
</div>
    </div>
    </div>
        <div id="frame4">
      <div id="title1">
            <p id="boTitle">OUTER BEST</p>
<div class="line1">
        <div id="bestOuter">
            <div id=divImg >
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
</div>
<div class="line2">
        <div id="bestOuter">
            <div id=divImg >
                <img class="img1" src="./img/outer1.PNG" >
                <img class="img2" src="./img/outer1_1.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer2.PNG" >
                <img class="img2" src="./img/outer2_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
        <div id="bestOuter">
            <div id=divImg>
                <img class="img1" src="./img/outer3_1.PNG" >
                <img class="img2" src="./img/outer3_2.PNG" >
            </div>
            <div id=divText>
                <p id="storeName">상호명</p>
                <p id="productName">베이직 더플코트(네이비)</p>
                <p id="price">99,000원</p>
            </div>
        </div>
</div>
    </div>
    </div>
  <div id="btn_group"><button id="btn_move1" class="button_move" onclick="fnMove('1')"></button>&nbsp;&nbsp;
<button id="btn_move2" class="button_move" onclick="fnMove('2')"></button>&nbsp;&nbsp;
<button id="btn_move3" class="button_move" onclick="fnMove('3')"></button>&nbsp;&nbsp;
<button id="btn_move4" class="button_move" onclick="fnMove('4')"></button>
</div>
</div>
</div>


<div id="third">
</div>
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

    <script src="./js/sticky.js"></script>
    <script src="./js/bestProd.js"></script>
    <script>

    function openNav() {
        document.getElementById("mySidenav").style.width = "35%";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
    }


    </script>
</body>
</html>