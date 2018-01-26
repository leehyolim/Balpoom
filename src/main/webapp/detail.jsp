<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>


<link rel="stylesheet" href="./css/detail.css?ver=2"/>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

   $(document).ready(function(){
         
      $('#pro_explain_3 input[count_range]').click('keyup',function(e){
         
         
         e.preventDefault();
         var type = $(this).attr('count_range');
         var $count = $(this).parent().children('input.count');
         var count_val = $count.val(); // min 1
         var price = $('#price').val();
         var amount = count_val * price;
         
         console.log(amount);
         
                  
         if(type=='m'){
            
         if(count_val<=0){
            
            alert("1개 이상만 선택 가능합니다.");
            return false;
            
         }
         
         $count.val(parseInt(count_val)-1);
         
         amount = count_val * price;
         
         $('#sum').empty();
         
         $('#sum').append("총 상품 가격 : " +amount+" 원");
         
         }
         else if(type=='p'){
         
         $count.val(parseInt(count_val)+1);
         
         amount = count_val * price;
                  $('#sum').empty();
         $('#sum').append("총 상품 가격 : " +amount+" 원");
         
         }
         
         });
         
         
      });

</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>

<div id="bigWrapper">
   <div id="headWrapper"><jsp:include page="header.jsp"/></div>   
<form action="NewFile.jsp" method="get">   
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
      <h2 id="storeName">&nbsp;&nbsp;가게명 : ${seller.s_no}</h2> 
      
      </div>
      <div id="pro_explain_2" class="pro_explain">
         <tr>
         <h4 id="proPro"><b>
               <td>&nbsp;&nbsp;&nbsp;상품명 : ${ProductListGB.p_name}</td>
               
               <br><br>
               <td>&nbsp;&nbsp;&nbsp;배송 : 2500원</td><br><br>
               <td>&nbsp;&nbsp;&nbsp;가격  : <input readonly style="width:150px; height:15px; float:left;" type="text" id="price" class="onlyInput" value="${ProductListGB.p_price}"></td>원<br><br>
               <td>&nbsp;&nbsp;&nbsp;그 외에 가져올 수 있는 것</td><br>   
         </h4></b>
         </tr>      
      </div>
      <div id="pro_explain_4" class="pro_explain">
      <p class="bg-warning" style="font-size:1.6em;font-weight:1000;">옵션 선택</p><br>
      <select class="form-control" id="color">
        <option>-- 색상을 선택해주세요 --</option>
        <c:forEach items="${ProductListC }" var="product">
        <option>${product.p_color }</option>
        </c:forEach>
      </select><br>
     
      <select class="form-control" id="size" >
        <option>-- 사이즈를 선택해주세요 --</option>
        <c:forEach items="${ProductListS }" var="product">
        <option>${product.p_size }</option>
        </c:forEach>
      </select>
      </div>
            
      <div id="pro_explain_3" ><b>수량   :</b>
        
        <input value="-" count_range="m" type="button" style="width: 25px; height: 25px;">
         <input class="count" value="0" readonly="" name="" style="text-align:center; width:40px; height:25px;">
           <input value="+" count_range="p" type="button" style="width: 25px; height: 25px;">
        
        <!-- <select class="form-control" id="color"  >
                  
                  
         <option>-- 1회 주문 시 최대 5벌까지 구매 가능 --</option>
           <option>1</option>
           <option>2</option>
           <option>3</option>
           <option>4</option>
           <option>5</option> 
           
         </select>   -->
      </div>
      
      <div id="pro_explain_5" class="pro_explain" >
               <p class="bg-warning" style="font-size:1.6em;font-weight:1000;float:right;margin:0; text-align: right;" id="sum">
                  </p>
      </div>
      
      <div id="pro_explain_6" class="pro_explain">
         <center><button type="button" class="proBtn">장바구니</button>
         &nbsp;&nbsp;
           <button type="submit" class="proBtn">구매하기</button></center>
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
         <h1> 2018년 new style</h1><br>
         
         <img src="./img/남자옷1.jpg" class="pro_detail_img" />
         
            
               
      </div>
      <div id="pro_detail_review" style="display: none;">
                  
            상품 리뷰
                        
      </div>
      <div id="pro_detail_qna" style="display: none;">
                        
            <iframe height="300px" width="100%" src="getInqueryList.do" name="iframe_a">여기가 타겟</iframe>
                        
      </div>
      <div id="pro_detail_change" style="display: none;">
            
            <img src="./img/txt_prdExchange.gif" />               
       </div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>   
<script src="./js/sticky_detail.js"></script>
<script src="./js/sticky-kit.min.js"></script>
<div id = "followBox">

      
      <!-- <form action="" method="get">
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
         <center>  <button type="button" class="proBtn">장바구니</button>
         &nbsp;&nbsp;
                 <button type="button" class="proBtn">구매하기</button></center>
      </div>
      </form> -->

</div>
   </div>
      <div id="footerWrapper"><jsp:include page="footer.jsp"/></div>

   
</body>
</html>