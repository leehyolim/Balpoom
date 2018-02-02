<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master.css?ver=7">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="./js/bestProd.js"></script>
<title>BalPoom</title>
<script type="text/javascript">
	var list = {
		1 : "Outer",
		2 : "Top",
		3 : "Bottom",
		4 : "Shoes"
	};
	var insertHTML = "";
	$(document).ready(function() {
		$.ajax({
			type : 'POST',
			url : '/biz/getMainOveralls.do',
			data : list,
			success : function(data) {
				for (var i = 0; i < 3; i++) {
					alert(data.outer_best[i].p_name);
					insertHTML += '<div class="bestOuter">';
					insertHTML += '<div id=divImg>';
					insertHTML +=	'<img class="img1" src="./img/outer2.PNG"> <img';
					insertHTML +=	'	class="img2" src="./img/outer2_2.PNG">';
					insertHTML +='</div>';
					insertHTML +='<div id=divText>';
					insertHTML +='	<p id="storeName">'+data.outer_best[i].s_busi_name+'</p>';
					insertHTML +='	<p id="productName">'+data.outer_best[i].p_name+'</p>';
					insertHTML +='	<p id="price">'+data.outer_best[i].p_price+'</p>';
					insertHTML +='</div>';
					insertHTML +='</div>';
					$("#outer_line1").append(insertHTML);
					insertHTML = "";
				}
				for (var i = 3; i < 6; i++) {
					alert(data.outer_best[i].p_name);
					insertHTML += '<div class="bestOuter">';
					insertHTML += '<div id=divImg>';
					insertHTML +=	'<img class="img1" src="./img/outer2.PNG"> <img';
					insertHTML +=	'	class="img2" src="./img/outer2_2.PNG">';
					insertHTML +='</div>';
					insertHTML +='<div id=divText>';
					insertHTML +='	<p id="storeName">'+data.outer_best[i].s_busi_name+'</p>';
					insertHTML +='	<p id="productName">'+data.outer_best[i].p_name+'</p>';
					insertHTML +='	<p id="price">'+data.outer_best[i].p_price+'</p>';
					insertHTML +='</div>';
					insertHTML +='</div>';
					$("#outer_line2").append(insertHTML);
					insertHTML = "";
				}
				/*for(var i=0; i<data.top_best.length; i++){
					alert(data.top_best[i].p_name);
				}
				for(var i=0; i<data.bottom_best.length; i++){
					alert(data.bottom_best[i].p_name);
				}
				for(var i=0; i<data.shoes_best.length; i++){
					alert(data.shoes_best[i].p_name);
				}*/
			}
		});
	});
</script>
</head>
<body>
	<div class="wraper">
		<jsp:include page="header.jsp"></jsp:include>

		<div id=slide_container>
			<div class="slides">
				<img src="./img/slide1.jpg" />
			</div>
			<div class="slides">
				<img src="./img/slide2.jpg" />
			</div>
			<div class="slides">
				<img src="./img/slide3.jpg" />
			</div>
			<div class="slides">
				<img src="./img/slide4.jpg" />
			</div>
		</div>
		<br>
		<div id="dot_group" style="text-align: center">
			<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
			<span class="dot"></span>
		</div>

		<div id="left">
			<img src="./img/leftfoot.png" />
		</div>
		<div id="right">
			<img src="./img/rightfoot.png" />
		</div>
		<div id="best_pro_div">
			<div class="frame">
				<div id="title1">
					<p id="boTitle">OUTER BEST</p>
					<div class="line1" id="outer_line1">
						<!-- <div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<a href="getProduct.do?r_no=3"><p id="productName">베이직 더플코트(네이비)</p></a>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<a href="getProduct.do?p_identifier=exname0레드0"><p id="productName">베이직 더플코트(블루)</p></a>
								<p id="price">89,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div> -->
					</div>
					<div class="line2" id="outer_line2">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
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
			<div class="frame">
				<div id="title1">
					<p id="boTitle">TOP BEST</p>
					<div class="line1">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
					</div>
					<div class="line2">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
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
			<div class="frame">
				<div id="title1">
					<p id="boTitle">BOTTOM BEST</p>
					<div class="line1">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
					</div>
					<div class="line2">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
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
			<div class="frame">
				<div id="title1">
					<p id="boTitle">SHOES BEST</p>
					<div class="line1">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
					</div>
					<div class="line2">
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer1.PNG"> <img
									class="img2" src="./img/outer1_1.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer2.PNG"> <img
									class="img2" src="./img/outer2_2.PNG">
							</div>
							<div id=divText>
								<p id="storeName">상호명</p>
								<p id="productName">베이직 더플코트(네이비)</p>
								<p id="price">99,000원</p>
							</div>
						</div>
						<div class="bestOuter">
							<div id=divImg>
								<img class="img1" src="./img/outer3_1.PNG"> <img
									class="img2" src="./img/outer3_2.PNG">
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
			<div id="btn_group">
				<button id="btn_move1" class="button_move" onclick="fnMove('1')"></button>
				&nbsp;&nbsp;
				<button id="btn_move2" class="button_move" onclick="fnMove('2')"></button>
				&nbsp;&nbsp;
				<button id="btn_move3" class="button_move" onclick="fnMove('3')"></button>
				&nbsp;&nbsp;
				<button id="btn_move4" class="button_move" onclick="fnMove('4')"></button>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<script type="text/javascript" src="./js/slideshow.js"></script>

</body>
</html>