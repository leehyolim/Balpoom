<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BalPoom</title>
    <script src="./js/innerfade.js"></script>
    <script type="text/javascript" src="./js/fitple.js"></script>
<link rel="stylesheet" href="./css/master.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="./js/jquery.innerfade.js"></script>
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
        <a href="index.html"><img src="./img/logo_.jpg"/></a>
      </div></center>
        <div id="header-my">
          <a href="login.html" class="member">로그인</a>
        </div>
        <div id="header-my2">
          <a href="agreePage.html" class="member">회원가입</a>
        </div>
    </div>
    <div id="navbar">
      <center>
        <div id="h_outer" class="menu">
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

</body>
</html>