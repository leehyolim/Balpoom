<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품문의</title>
    <link rel="stylesheet" href="./css/getBoard_Inquiry.css">
</head>
<body>
    
        <br><br><br>
        <div id="getBoardInquiry_wrapper">
            <p class="pibTitle" >상품 문의</p>
            <form action="getBoard.do" method="post">
                <table>
                    <tr><td class="td1">제목</td><td class="td1">${board.inqu_title}</td></tr>
                    <tr><td>작성자</td><td>${board.inqu_no}</td></tr>
                    <tr><td>작성일</td><td>${board.inqu_reg}</td></tr>
                    <tr><td colspan="2" class="boardContent">${board.inqu_content}</td></tr>
                </table>
            </form>
            <a href="getBoardList.do"><p class="listbtn" style="cursor: pointer">목록</p></a>
            <a href="getUpdateBoard.do?inqu_no=${board.inqu_no}"><p class="listbtn" style="cursor: pointer">수정</p></a>
            <a href="deleteBoard.do?inqu_no=${board.inqu_no}"><p class="listbtn" style="cursor: pointer">삭제</p></a>
        </div>
    

    
</body>
</html>