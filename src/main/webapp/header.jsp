<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master_header.css?ver=1">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>

<title>BalPoom</title>

<script type="text/javascript" src="./js/sticky_header.js?ver=2"></script>
<script type="text/javascript" src="./js/fitple_header.js?ver=2"></script>
</head>
<body>
	<div class="header_wraper">
		<div id="header_mySidenav" class="header_sidenav">
			<a href="javascript:void(0)" class="header_closebtn"
				onclick="closeNav()">&times;</a> <select id="header_choice">
				<option selected>Outer</option>
				<option>Top</option>
				<option>Bottom</option>
			</select><br>
			<form action="#" id="header_fitple-form"></form>
		</div>

		<span id="header_fitple" style="cursor: pointer" onclick="openNav()"><img
			src="./img/fitple.png" /></span>




		<div id="header_header">
			<center>
				<div id="header_logo">
					<a href="main.jsp"><img src="./img/logo_.jpg" /></a>
				</div>
			</center>
			<c:if test="${ empty authMember }">
			<div id="header_header-my">
				<a href="login.jsp" class="header_member">로그인</a>
			</div>
			<div id="header_header-my2">
				<a href="agreePage.jsp" class="header_member">회원가입</a>
			</div>
			</c:if>
			<c:if test="${! empty authMember }">
			<div id="header_header-my">
				<a href="" class="header_member">${authMember.m_id}</a>
			</div>
			<div id="header_header-my2">
				<a href="logout.do" class="header_member">로그아웃</a>
			</div>
			</c:if>
		</div>
		<br>
		<c:if test="${! empty authMember }">
		${authMember.m_name }님 환영합니다!
		</c:if>
		<br><br><br><br><br><br><br>
		<div id="header_navbar">
			<center>
				<div id="header_outer" class="header_menu">
					<b>Outer</b><br>---<br>Coat&amp;Jackek
				</div>
				<div id="header_top" class="header_menu">
					<b>Top</b><br>---<br>Shirt&amp;Hoodie
				</div>
				<div id="header_bottom" class="header_menu">
					<b>Bottom</b><br>---<br>Jean&amp;Slacks
				</div>
				<div id="header_shoes" class="header_menu">
					<b>Shoes</b><br>---<br>Dress&amp;Running
				</div>
			</center>
		</div>
		<br> <br>
	</div>



	<script src="./js/sticky_header.js?ver=5"></script>
	<script>
		function openNav() {
			document.getElementById("header_mySidenav").style.width = "35%";
		}

		function closeNav() {
			document.getElementById("header_mySidenav").style.width = "0";
		}
	</script>
</body>
</html>