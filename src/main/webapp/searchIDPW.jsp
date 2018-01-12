<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비밀번호찾기</title>
<link rel="stylesheet" href="./css/searchID.css">
</head>
<body>
<div id="searchIdPwSearch">
        <div id="sipTitle">FIND ID/PASSWORD</div>
        <div id="siBoxes">
            <div id="siTextbox">
                <p id="siTextTitle">아이디 찾기</p>
                <p id="siText">회원정보를 확인하여 아이디를 찾아드립니다</p>
            </div>
            <div id="siInputTextBoxes">
                <div class="siInputText"><input type="text"  maxlength="20" class="siInputTextBox" placeholder="이름"></div>
                <div class="siInputText"><input type="text" maxlength="50" class="siInputTextBox" placeholder="이메일"></div>
            </div>
            <img id="siOkbtn" src="./img/btn_ok.png" style=" cursor: pointer;">
        </div>
        <div id="pwBoxes">
                <div id="spwTextbox">
                <p id="spwTextTitle">비밀번호 찾기</p>
                <p id="spwText">본인인증으로 비밀번호를 변경하세요</p>
                </div>
                <div class="spwInputText"><input type="text"  maxlength="20" class="spwInputTextBox" placeholder="아이디"></div>
                <div class="spwInputText"><input type="text"  maxlength="20" class="spwInputTextBox" placeholder="이메일"></div>
                <img id="spwOkbtn" src="./img/btn_email.png" style=" cursor: pointer;">
        </div>
    </div>
</body>
</html>