<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*, java.text.*"  %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품문의</title>
<link rel="stylesheet" href="./css/insertBoard.css">
<script type="text/javascript" src="./js/jquery-3.3.1.min.js" charset="utf-8"></script>

<script type="text/javascript">
$(document).ready(function today(){
	var date = new Date();
	var output="";
	output+=date.getFullYear()+''+(date.getMonth()+1)+''+date.getDate()+''+date.getHours()+''+date.getMinutes()+''+date.getSeconds();
	console.log(output);
	$("#date").val(output);
	document.get
});
	



</script>
</head>
<body>


	<br>
	<br>
	<br>
	<div id="insertBoard_wrapper">
		<p class="insertBoard_Title">상품 문의</p>
		<form action="insertInquery.do" method="post" enctype="multipart/form-data">
			<input type="hidden" id="date" name="fileName_date">
			<table>
				<tr>
					<td class="td1">제목</td>
					<td class="td1"><input type="text" name="inqu_title" class="inpt">
					</td>
				</tr>
 				<tr>
					<td>작성자</td>
					<td>
						<input type="text" name="m_name" class="writerbox" value="${authMember.m_name }" readOnly>
						<input type="hidden" name="m_no" value="${authMember.m_no }"> 
						<input type="hidden" name="m_id" value="${authMember.m_id }">
						
					</td>
				</tr>

				<tr>
					<td colspan="2" class="boardContent"><textarea name="inqu_content"
							class="content_inpt" rows="10" cols="30"></textarea></td>
				</tr>
				
				<tr>
					<td>사진 첨부</td>
					<td><input type="file" name="uploadFile" style="margin-top:15px;"/>
					
					</td>
				
			</table>
			<button type="submit" class="submit_btn" style="cursor: pointer">작성</button>
			<a href="getInqueryList.do">두두두</a>
		</form>

	</div>
</body>
</html>