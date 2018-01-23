<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품문의</title>
    <link rel="stylesheet" href="./css/getBoard_Inquiry.css?ver=2">
</head>
<body>
    
        <br><br><br>
        <div id="getBoardInquiry_wrapper">
            <p class="pibTitle" >상품 문의</p>
            <form method="post" name="replyInsertForm">
                <table>
                    <tr><td class="td1">제목</td><td class="td1">${Inquery.inqu_title}</td></tr>
                    <tr><td>작성자</td><td>${Inquery.m_no}</td></tr>
                    <tr><td>글번</td><td><input type="text" value="${Inquery.inqu_no}" name="inqu_no" readOnly/></td></tr>
                    <tr><td>작성일</td><td>${Inquery.inqu_reg}</td></tr>
                    <tr><td colspan="2" class="boardContent">${Inquery.inqu_content}</td></tr>
                </table>
            <a href="getInqueryList.do"><p class="listbtn" style="cursor: pointer">목록</p></a>
            <a href="updateInquery.jsp?inqu_no=${Inquery.inqu_no}"><p class="listbtn" style="cursor: pointer">수정</p></a>
            <a href="deleteInquery.do?inqu_no=${Inquery.inqu_no}"><p class="listbtn" style="cursor: pointer">삭제</p></a>
			<br>          
            
            <div class="insert_reply">
            	<textarea rows="" cols="" name="inqu_reply_content" class="reply_content" required="required"></textarea>
            	<button name="insertButton" class="listbtn btnReply" style="cursor: pointer">댓글달기</button>
            </div>
            </form>
            
            <table class="replyList">
            	<jsp:include page="getInquery_replyList.jsp"/>
			</table>
        </div>
        
    

    
</body>
</html>