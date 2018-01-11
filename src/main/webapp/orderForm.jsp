<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Page</title>
<link rel="stylesheet" type="text/css" href="./css/orderFormCss.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// DOM 생성 완료 시 화면 숨김 (파라미터로 전달되는 id는 제외)
		hideExclude("changeKakao");
		// radio change 이벤트
		$("input[name=select_payment]").change(function() {
			var radioValue = $(this).val();
			if (radioValue == "카카오페이") {
				hideExclude("changeKakao");
			} else if (radioValue == "신용카드") {
				hideExclude("changeSin");
			} else if (radioValue == "실시간계좌이체") {
				hideExclude("changeSi");
			} else if (radioValue == "무통장") {
				hideExclude("changeMu");
			}
		});

		var checkCnt = $("input[name=select_payment]:checked").size();
		if (checkCnt == 0) {
			// default radio 체크 (첫 번째)
			$("input[name=select_payment]").eq(0).attr("checked", true);
		}
	});
	// text area 숨김
	function hideExclude(excludeId) {
		$("#changeTextArea").children().each(function() {
			$(this).hide();
		});
		// 파라미터로 넘겨 받은 id 요소는 show
		$("#" + excludeId).show();
	}
</script>


</head>
<body>
	<jsp:include page="./header/header.jsp"></jsp:include>
	<center>
		<div class="wrapper">
			<div class="orderer_info">
				<p class="title">주문자 정보</p>
				<table class="orderer InfoTable">
					<tr>
						<td>주문자 이름 <b style="color: red">*</b>
						</td>

						<td><input type="text" id="orderer_name"
							name="order_user_name" style="height: 100%;"></td>
					</tr>

					<tr>
						<td>이메일 <b style="color: red">*</b>
						</td>
						<td><input type="text" name="str_email01" id="str_email01"
							style="width: 100px"> @ <input type="text"
							name="str_email02" id="str_email02" style="width: 100px;"
							disabled value="naver.com"> <select
							style="width: 100px; margin-right: 10px" name="selectEmail"
							id="selectEmail">
								<option value="1">직접입력</option>
								<option value="naver.com" selected>naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="empas.com">empas.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="korea.com">korea.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="paran.com">paran.com</option>
						</select></td>
					</tr>
					<tr>
						<td>연락처 <b style="color: red">*</b>
						</td>
						<td><input type="text"
							style="text-align: center; width: 80px;" id="cellphone1"
							name="cellphone1"> - <input type="text"
							style="text-align: center; width: 80px;" id="cellphone2"
							name="cellphone2"> - <input type="text"
							style="text-align: center; width: 80px;" id="cellphone3"
							name="cellphone3"></td>
					</tr>
				</table>
			</div>
			<br>
			<div class="delivery_Info">
				<p class="title">배송정보</p>
				<table class="delivery InfoTable">
					<tr>
						<td>수령자 주소 <b style="color: red">*</b>
						</td>
						<td><input type="text" style="width: 100px"
							class="addressInput" id="postCode">
							<button onclick="sample2_execDaumPostcode()"
								class="search_address">주소 찾기</button> <br> <input
							type="text" style="width: 300px" class="addressInput"
							id="baseAddress"> 기본 주소 <br> <input type="text"
							style="width: 300px" class="addressInput"> 상세 주소 <br>
						</td>
					</tr>
					<tr>
						<td>수령자 성함 <b style="color: red">*</b>
						</td>
						<td><input type="text" id="name" name="order_user_name">
						</td>
					</tr>
					<tr>
						<td>수령자 휴대폰 <b style="color: red">*</b>
						</td>
						<td><input type="text"
							style="text-align: center; width: 80px;" id="cellphone1">
							- <input type="text" style="text-align: center; width: 80px;"
							id="cellphone2"> - <input type="text"
							style="text-align: center; width: 80px;" id="cellphone3">
						</td>
					</tr>
					<tr>
						<td>배송시 요청사항</td>
						<td><textarea style="width: 100%; height: 100px;"
								placeholder="이곳은 배송기사님이 보시는란입니다. 주문관련 문의는 게시판을 이용해주세요"></textarea>

						</td>
					</tr>
				</table>
			</div>

			<br>
			<div class="product_info">
				<p class="title">주문 품목 확인</p>
				<table class="product_table">
					<tr>
						<td colspan="2">주문상품</td>
						<td>수량</td>
						<td>상품 금액</td>
						<td>할인</td>
						<td>할인가격</td>
						<td>적립금</td>
					</tr>
					<tr>
						<td><img src="#" width="100%"></td>
						<td>
							<div class="product_name" style="width: 60%; float: left;">---
								상품명이 들어갈 곳 ---</div>
						</td>
						<td class="product_amount">3</td>
						<td class="product_price">10000원</td>
						<td class="discount">-</td>
						<td class="discount_price">10000원</td>
						<td>100</td>
					</tr>
					<tr>
						<td colspan="7" class="payment_amount"
							style="text-align: right; font-size: 20px;">총 결제 금액 : 10000원</td>
					</tr>
				</table>
			</div>
			<br>
			<div class="payment_info">
				<p class="title">결제 정보 입력</p>
				<table class="payment_table">
					<tr>
						<td rowspan="2">일반 결제</td>
						<td>
							<div id="radioArea">
								<input type="radio" name="select_payment" class="select_payment"
									value="카카오페이"><label>카카오페이</label> <input type="radio"
									name="select_payment" class="select_payment" value="신용카드"><label>신용카드</label>
								<input type="radio" name="select_payment" class="select_payment"
									value="실시간계좌이체"><label>실시간 계좌이체</label> <input
									type="radio" name="select_payment" class="select_payment"
									value="무통장"><label>무통장입금</label>
							</div>
						</td>
					</tr>
					<tr style="height: 100px;">
						<td id="changeTextArea">
							<p id="changeKakao">kakaopay결제</p>
							<p id="changeMu">무통장 결제</p>
							<p id="changeSi">실시간 계좌이체</p>
							<p id="changeSin">신용카드</p>
						</td>
					</tr>
				</table>
			</div>
			<div class="last_Payment">
				<h2>최종금액</h2>
			</div>
		</div>
	</center>








	<!-- 이메일 입력방식 : 직접입력 -->
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		//이메일 입력방식 선택 
		$('#selectEmail').change(function() {
			$("#selectEmail option:selected").each(function() {
				if ($(this).val() == '1') { //직접입력일 경우 
					$("#str_email02").val(''); //값 초기화 
					$("#str_email02").attr("disabled", false); //활성화 
				} else { //직접입력이 아닐경우 
					$("#str_email02").val($(this).text()); //선택값 입력 
					$("#str_email02").attr("disabled", true); //비활성화 
				}
			});
		});
	</script>


	<!--  -->
	<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img
			src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');

		function closeDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}

		function sample2_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = data.address; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 기본 주소가 도로명 타입일때 조합한다.
					if (data.addressType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('baseAddress').value = fullAddr;

					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					element_layer.style.display = 'none';
				},
				width : '100%',
				height : '100%',
				maxSuggestItems : 5
			}).embed(element_layer);

			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';

			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}

		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 400; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';
		}
	</script>



</body>


</html>