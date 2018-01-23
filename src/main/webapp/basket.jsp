<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/basket.css?ver=1">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="./js/jquery.innerfade_basket.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>

</head>
<body>


<div id="basket">
	<jsp:include page="header.jsp"/>	
	
	<div id="bkTitle">
		<p id="bktext1">BALPOOM</p> <p id="bktext2">CART</p>
		
		<hr id="t">
		
		<!-- <div id="bkTilte2">
			<p id="t1">|</p><p id="text3">ITEMS IN YOUR CART</p>
		</div> -->
	</div>
	
	<div class="cart_list_table">
		<table width="100%" border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th scope="col" style="width: 5%; height: 26px ">
					<div class="check_div">
						<input type="checkbox" class="checker">
					</div>
					</th>
					<th scope="col" style="width: 50%">
						<span>상품</span>
					</th>
					<th scope="col" style="width: 10%">
						<span>수량</span>
					</th>
					<th scope="col" style="width: 14%">
						<span>가격</span>
					</th>
					<th scope="col" style="width: 13%">
						<span>배송정보</span>
					</th>
				</tr>
			</thead>
			
			<tbody style="border-left-color: white; border-right-color: white;">
				<tr>
					<td colspan="5">
						<p class="text_font">장바구니에 담겨있는 상품이 없습니다.</p>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="layout">
		<input id="ch2" type="checkbox">
		<div id="tx_btn_bor">
			<button class="tx_btn">삭제</button>
		</div>
	</div>
	<hr id="hr2">
	
	<div class="pay_section">
		<div class="lt_article">
			<div class="benerfit">
				<strong>구매 후 추가혜택</strong>
				<dl>
					<dt class="ng_a_scope1">상품명 작성하면</dt>
					<dd class="ng_a_scope2">Balpoom Point</dd>
					<dt class="ng_b_scope1">포토상품평 작성하면</dt>
					<dd class="ng_b_scope2">최대 Balpoom Point 200 P</dd>
					<dt class="ng_c_scope1">상품평 작성 제휴포인트 추가혜택</dt>
					<dd class="ng_c_scope2">Balpoom VIP회원</dd>
				</dl>
			</div>
		</div>
		
		<div class="paylist">
			<div class="total_bx">
				<h4 class="cp_title">
					<span>결제 예정금액</span>
				</h4>
				<ul class="bs_list">
					<li>
						<dl>
							<dt>상품가격</dt>
							<dd>
								<span class="number">0</span>
								<span class="won">원</span>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>할인 가격</dt>
							<dd>
								<span class="number">0</span>
								<span class="won">원</span>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>배송비</dt>
							<dd>
								<span class="number">0</span>
								<span class="won">원</span>
							</dd>
						</dl>
						
					</li>
				</ul>
				<dl class="result_list">
					<dd>
						<span class="rs_number">0</span>
						<span class="rs_won">원</span>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	
	
	<div class="order_btn">
		<button class="im_btn">주문결제</button>
	</div>
	
	
	
	<%-- <div id="basketlist">
	
		<form action="getBasketList.do" method="post">
			<c:forEach items="${basketList}" var="basket">
						<tr>
				             <td>${basket.c_no}</td>
				             <td>${basket.m_no}</td>
				             <td>${basket.p_no}</td>
				             <td>${basket.c_cnt}</td>
				             <td>${basket.c_total}</td>
				      	</tr>
			</c:forEach>
		</form>
	</div> --%>
	 <jsp:include page="footer.jsp"/>	
	
</div>





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

<!-- <a href="orderForm.jsp">주문하기</a> -->
</body>
</html>