<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품문의</title>
<link rel="stylesheet" href="./css/getBoardList_Inquiry1.css">
</head>

<body>
	<center>
		<br>
		<br>
		<br>
		<div id="productInquiryBoard_wrapper">
			<p class="pibTitle">상품 문의하기</p>
			<form action="getInqueryList.do" method="post">
				<div class="selectDiv">

					<select id="selectBox" name="searchCondition">
						<option>제목</option>
						<option>내용</option>
					</select> <input id="selectText" name="searchKeyword" type="text"> <input
						id="selectBtn" type="submit" value="검색" style="cursor: pointer">

				</div>
				<c:if test="${ ! empty authMember }">
					<a href="insertInquery.jsp"><p class="inquiryBtn"
							style="cursor: pointer">문의하기</p></a>
				</c:if>

				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>

					<c:forEach items="${InqueryList}" var="Inquery">

						<tr>
							<td>${Inquery.inqu_no}</td>
			
							<td><a href="getInquery.do?inqu_no=${Inquery.inqu_no}">${Inquery.inqu_title}<img src="./img/lock.png"></a></td>
							<td>${Inquery.m_name}</td>
							<td>${Inquery.inqu_reg}</td>
							<td>${Inquery.inqu_cnt}</td>
						</tr>
					</c:forEach>

				</table>
		</div>


		</form>
	</center>

</body>


</html>