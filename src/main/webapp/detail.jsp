<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/detail.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>

</head>
<body>
<div id="wrapper" >
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
		<div id="pro_explain_2" class="pro_explain">
		</div>
		<div id="pro_explain_3" class="pro_explain">
		</div>
		<div id="pro_explain_4" class="pro_explain">
		<p class="bg-warning" style="font-size:1.6em;font-weight:1000;">옵션 선택</p>
		<select class="form-control" id="color">
        <option>색상</option>
        <option>Black</option>
        <option>White</option>
        <option>Beige</option>
      </select>
      <br>
      <select class="form-control" id="size">
        <option>사이즈</option>
        <option>S</option>
        <option>M</option>
        <option>L</option>
      </select>
		</div>
		<div id="pro_explain_5" class="pro_explain">
			      <p class="bg-warning" style="font-size:1.6em;font-weight:1000;float:right;margin:20px 150px 0 0;">
			      	총 상품금액 <span class="glyphicon"
       				data-toggle="tooltip" 
			      data-placement="right" 
			      title="총 상품금액에 배송비는 포함되어 있지 않습니다. 결제시 조건에 따라 배송비가 추가 될 수 있습니다.">&#xe085;</span> :
      				</p>
		</div>
		<div id="pro_explain_6" class="pro_explain">
			<center>  <button type="button" class="btn btn-default">장바구니</button>
			&nbsp;&nbsp;
  <button type="button" class="btn btn-primary">구매하기</button></center>
		</div>
		
	</div>
</div>


<nav class="navbar navbar-default" id="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">B a l P o o m</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">상세설명</a></li>
      <li><a href="#">상품평</a></li>
      <li><a href="#">상품문의</a></li>
      <li><a href="#">교환반품</a></li>
    </ul>
  </div>
</nav>

<div id="wrapper2" >
	<div id="pro_detail_img">
	</div>
	<div id="pro_detail_follow">
		<div id="pro_explain_4" class="pro_explain" style="margin-top:20px;">
		<p class="bg-warning" style="font-size:1.3em;font-weight:1000;">옵션 선택</p>
		<select class="form-control" id="color">
        <option>색상</option>
        <option>Black</option>
        <option>White</option>
        <option>Beige</option>
      </select>
      <br>
      <select class="form-control" id="size">
        <option>사이즈</option>
        <option>S</option>
        <option>M</option>
        <option>L</option>
      </select>
		</div>
		<div id="pro_explain_5" class="pro_explain">
			      <p class="bg-warning" style="font-size:1.2em;font-weight:1000;margin:20px 100px 0 5px;width:130px;">
			      	총 상품금액 <span class="glyphicon"
       				data-toggle="tooltip" 
			      data-placement="right" 
			      title="총 상품금액에 배송비는 포함되어 있지 않습니다. 결제시 조건에 따라 배송비가 추가 될 수 있습니다.">&#xe085;</span> :
      				</p>
		</div>
		<div id="pro_explain_6" class="pro_explain">
			<center>  <button type="button" class="btn btn-default">장바구니</button>
			&nbsp;&nbsp;
  <button type="button" class="btn btn-primary">구매하기</button></center>
		</div>
	</div>
</div>
  
<script src="./js/sticky_detail.js"></script>
</body>
</html>