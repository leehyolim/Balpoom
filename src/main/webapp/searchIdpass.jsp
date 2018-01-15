<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/searchID.css?ver=2">
<title>Insert title here</title>
</head>
<body>


	<div id="searchIdPwSearch">
		<jsp:include page="header.jsp"></jsp:include>
		<br><br><br>

		<div id="sipTitle">FIND ID/PASSWORD</div>
		<div id="siBoxes">
			<div id="siTextbox">
				<p id="siTextTitle">아이디 찾기</p>
				<p id="siText">회원정보를 확인하여 아이디를 찾아드립니다</p>
			</div>
			<div id="siInputTextBoxes">
				<div class="siInputText">
					<input type="text" maxlength="20" class="siInputTextBox"
						placeholder="이름">
				</div>
				<div class="siInputText">
					<input type="text" maxlength="50" class="siInputTextBox"
						placeholder="이메일">
				</div>
			</div>
			<a href="#" class="showMask"><img id="siOkbtn"
				src="./img/btn_ok.png" style="cursor: pointer;"></a>

			<div class="setDiv">


				<div class="mask"></div>
				<div class="window">
					<div id="modalTitleBox">
						<p id="modalTitle">아이디확인</p>
						<p style="cursor: pointer;" class="xbtn">X</p>
					</div>
					<div class="modalTextBox">
						<p id="modalText">
							회원님의 아이디는 <b>00000</b>입니다.
						</p>
					</div>
					<img class="close" src="./img/btn_ok_02.png"
						style="cursor: pointer;">

				</div>
			</div>


		</div>
		<div id="pwBoxes">
			<div id="spwTextbox">
				<p id="spwTextTitle">비밀번호 찾기</p>
				<p id="spwText">본인인증으로 비밀번호를 변경하세요</p>
			</div>
			<div class="spwInputText">
				<input type="text" maxlength="20" class="spwInputTextBox"
					placeholder="아이디">
			</div>
			<div class="spwInputText">
				<input type="text" maxlength="20" class="spwInputTextBox"
					placeholder="이메일">
			</div>
			<a href="#" class="showMask"><img id="spwOkbtn"
				src="./img/btn_email.png" style="cursor: pointer;"></a>

			<div class="setDiv">


				<div class="mask"></div>
				<div class="window">
					<div id="modalTitleBox">
						<p id="modalTitle2">비밀번호찾기</p>
						<p style="cursor: pointer;" class="xbtn">X</p>
					</div>
					<div class="modalTextBox">
						<p id="modalText">입력하신 이메일로 임시비밀번호를 보내드렸습니다.</p>
						<p id="modalText1">임시비밀번호로 로그인 후 비밀번호를 변경하세요.</p>
					</div>
					<img class="close" src="./img/btn_ok_02.png"
						style="cursor: pointer;">

				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript">
	function wrapWindowByMask() {
		// 화면의 높이와 너비를 변수로 만듭니다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		// 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
		$('.mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});

		// fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.

		$('.mask').fadeTo("fast", 0.6);

		// 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
		var left = ($(window).scrollLeft() + ($(window).width() - $('.window')
				.width()) / 2);
		var top = ($(window).scrollTop() + ($(window).height() - $('.window')
				.height()) / 2);

		// css 스타일을 변경합니다.
		$('.window').css({
			'left' : left,
			'top' : top,
			'position' : 'absolute'
		});

		// 레이어 팝업을 띄웁니다.
		$('.window').show();
	}

	$(document).ready(function() {
		// showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
		$('.showMask').click(function(e) {
			// preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
			e.preventDefault();
			wrapWindowByMask();
		});

		// 닫기(close)를 눌렀을 때 작동합니다.
		$('.window .close').click(function(e) {
			e.preventDefault();
			$('.mask, .window').hide();
		});
		$('.window .xbtn').click(function(e) {
			e.preventDefault();
			$('.mask, .window').hide();
		});

		// 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리합니다.
		$('.mask').click(function() {
			$(this).hide();
			$('.window').hide();
		});
	});
</script>
</html>