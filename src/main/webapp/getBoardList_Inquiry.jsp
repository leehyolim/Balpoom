<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품문의</title>
    <link rel="stylesheet" href="./css/getBoardList_Inquiry1.css">
</head>
<body><center>
    <br><br><br>
    <div id="productInquiryBoard_wrapper">
        <p class="pibTitle" >상품 문의하기</p>
        <form action="getBoardList.do" method="post">
        <div class="selectDiv">
          
                    <select id="selectBox" name="searchCondition">
                        <option >제목</option>
                        <option >내용</option>
                    </select>
                    
                <input id="selectText" name="searchKeyword" type="text">
                <input id="selectBtn" type="submit" value="검색" style="cursor: pointer">
            
        </div>
    
        <a href="insertBoard_Inquiry.jsp"><p class="inquiryBtn" style="cursor: pointer">문의하기</p></a>
        
        
        <table>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>
            
       <c:forEach items="${boardList}" var="board">
            
            <tr>
                <td>${board.inqu_no}</td>
                <td><a href="getBoard.do?inqu_no=${board.inqu_no}">${board.inqu_title}<img src="./img/lock.png"></a></td>
                <td>${board.m_no}</td>
                <td>${board.inqu_reg}</td>
                <td>${board.inqu_cnt}</td>
            </tr>
       </c:forEach>     
            
        </table>
    </div>

    
</form>
        </center>
        
</html>