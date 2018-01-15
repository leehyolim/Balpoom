<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>주문완료</title>
    <link rel="stylesheet" href="./css/signConfirm.css">
</head>
<body>
<div id="scWrapper">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br><br><br><br><br><br>
    <div id="scBoxes">
        <p class="scMessage1">인증메일을 전송하였습니다.</p>
        <p class="scMessage2">인증메일을 확인하시면 됩니다.</p>
        
        
            <a><div class="scBtn" style=" cursor: pointer;"><p class="scBtnText">로그인 하기</p></div></a>
            
        
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>