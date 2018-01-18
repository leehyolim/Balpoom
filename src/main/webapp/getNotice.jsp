<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품문의</title>
    <link rel="stylesheet" href="./css/getNotice.css">
</head>
<body>
    
        <br><br><br>
        <div id="getNotice_wrapper">
            <p class="pibTitle" >상품 문의</p>
            <form action="" method="post">
                <table>
                	<tr><td>글번호</td><td>${notice.notice_no }</td></tr>
                    <tr><td class="td1">제목</td><td class="td1">${notice.notice_title }</td></tr>
                    <tr><td>작성일</td><td>${notice.notice_reg }</td></tr>
                    <tr><td>조회수</td><td>${notice.notice_cnt }</td></tr>
                    <tr><td colspan="2" class="boardContent">${notice.notice_content }</td></tr>
                </table>
            </form>
            <a href="getNoticeList.do"><p class="listbtn" style="cursor: pointer">목록</p></a>
            <a href="updateNotice.jsp"><p class="listbtn" style="cursor: pointer">수정</p></a>
            <a href="deleteNotice.do?notice_no=${notice.notice_no }"><p class="listbtn" style="cursor: pointer">삭제</p></a>
        </div>
    

    
</body>
</html>