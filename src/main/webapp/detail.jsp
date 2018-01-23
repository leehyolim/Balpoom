<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet" href="./css/detail.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body onload="InitializeStaticMenu();">


	<div id="bigWrapper">
		<div id="headWrapper"><jsp:include page="header.jsp"/></div>	
	
		<div id="wrapper">
			<div id="pro_img_area">
		<div id="pro_main_img">
			<img src="./img/이정재.jpg"/>
		</div>
		<div id="pro_small_img">
			<center>
			<div class="pro_small_img">
			<img src="./img/이정재.jpg"/>
			</div>
			<div class="pro_small_img">
			<img src="./img/이정재.jpg"/>
			</div>
			<div class="pro_small_img">
			<img src="./img/이정재.jpg"/>
			</div>
			<div class="pro_small_img">
			<img src="./img/이정재.jpg"/>
			</div>
			<div class="pro_small_img">
			<img src="./img/이정재.jpg"/>
			</div>
			</center>
		</div>
	</div>
	<div id="pro_explain_area">
		<div id="pro_explain_1" class="pro_explain">
		<h5>가게이름</h5>
		<hr>
		</div>
		<div id="pro_explain_2" class="pro_explain" style="height:200px;">
			<tr>
				
						<td></td><br>
						<td>배송비 : 25000원</td><br>
						<td></td>
						<td></td>				

			</tr>			
		</div>
		<div id="pro_explain_3" class="pro_explain">수량 :
		<select class="form-control" id="color">
	        <option>1</option>
	        <option>2</option>
	        <option>3</option>
	        <option>4</option>
	        <option>5</option>
	        <option>6</option>
	        <option>7</option>
	        <option>8</option>
	        <option>9</option>
	        <option>10</option>
	      </select>
		</div>
		<div id="pro_explain_4" class="pro_explain">
		<p class="bg-warning" style="font-size:1.6em;font-weight:1000;">옵션 선택</p>
		<select class="form-control" id="color">
        <option>색상</option>
        <option>Black</option>
        <option>White</option>
        <option>Beige</option>
      </select>
     
      <select class="form-control" id="size">
        <option>사이즈</option>
        <option>S</option>
        <option>M</option>
        <option>L</option>
        <option>XL</option>
      </select>
		</div>
		<div id="pro_explain_5" class="pro_explain">
			      <p class="bg-warning" style="font-size:1.6em;font-weight:1000;float:right;margin:0;">
			      	총 상품금액 <span class="glyphicon"
       				data-toggle="tooltip" 
			      data-placement="right" 
			      title="총 상품금액에 배송비는 포함되어 있지 않습니다. 결제시 조건에 따라 배송비가 추가 될 수 있습니다.">&#xe085;</span> :
      					</p> 
		</div>
		<div id="pro_explain_6" class="pro_explain">
			<center style="">  <button type="button" class="btn btn-default">장바구니</button>
			&nbsp;&nbsp;
  <button type="button" class="btn btn-primary">구매하기</button></center>
		</div>
		
	</div>
</div>
</form>
<br><br><br>

<div id="wrapper2">
<nav class="navbar navbar-default" id="navbar">
  <div id="container-fluid">
    	<input type="button" class="nav_button" id="1" onclick="div_OnOff(this.id);" value="상세설명" >
		
		<input type="button" class="nav_button" id="2" onclick="div_OnOff(this.id);" value="상품후기">
		
		<input type="button" class="nav_button" id="3" onclick="div_OnOff(this.id);" value="상품문의">
	    
		<input type="button" class="nav_button" id="4" onclick="div_OnOff(this.id);" value="배송·교환">
			
	</div>  
</nav>
<div id="fullBox">
		<div id="pro_detail_inform">
			<h1> 2018년 new style</h1>
			<div>
			<img src="./img/남자옷1.jpg" class="pro_detail_img" />
			
				
			</div>					
		</div>
		<div id="pro_detail_review" style="display: none;">
								
				게시판 연동
				
		</div>
		<div id="pro_detail_qna" style="display: none;">
								
				QnA 연동페이지	
								
		</div>
		<div id="pro_detail_change" style="display: none;">
				
				<img src="./img/txt_prdExchange.gif" />
							
    	</div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>	
<script src="./js/sticky_detail.js"></script>
<script src="./js/sticky-kit.min.js"></script>>
<div id = "followBox">
<div id="pro_detail_follow">
		<div id="pro_explain_4" class="pro_explain" style="margin-top:10px;">
		<p class="bg-warning" style="font-size:1.3em;font-weight:1000;">옵션 선택</p>
		<select class="form-control" id="color">
        <option>색상</option>
        <option>Black</option>
        <option>White</option>
        <option>Beige</option>
      </select>
     
      <select class="form-control" id="size">
        <option>사이즈</option>
        <option>S</option>
        <option>M</option>
        <option>L</option>
        <option>XL</option>
      </select>
		</div>
		<div id="pro_explain_5" class="pro_explain">
			      <p class="bg-warning" style="font-size:1.2em;font-weight:1000;margin:20px 100px 0 5px;width:130px;">
			      	총 상품금액 <span class="glyphicon" style="width:50px;"
       				data-toggle="tooltip" 
			      data-placement="right" 
			      title="총 상품금액에 배송비는 포함되어 있지 않습니다. 결제시 조건에 따라 배송비가 추가 될 수 있습니다.">&#xe085;</span> :
      				</p>
		</div>
		<div id="pro_explain_6" class="pro_explain">
			<center>  <button type="button" class="btn btn-default" style="width:110px;">장바구니</button>
			&nbsp;&nbsp;
  					<button type="button" class="btn btn-primary" style="width:110px;">구매하기</button></center>
		</div>
</div>
</div>
	</div>
		<div id="footerWrapper"><jsp:include page="footer.jsp"/></div>
	</div>





</body>
</html>