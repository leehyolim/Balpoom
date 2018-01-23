<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상품문의</title>
<link rel="stylesheet" href="./css/insertBoard.css?ver=5">
</head>
<body>


	<br>
	<br>
	<br>
	<div id="insertBoard_wrapper">
		<p class="insertBoard_Title">상품 문의</p>
		<form action="insertInquery.do" method="post">
			<table>
				<tr>
					<td class="td1">제목</td>
					<td class="td1"><input type="text" name="inqu_title" class="inpt">
					</td>
				</tr>
 				<tr>
					<td>작성자</td>
					<td><input type="text" name="m_no" class="writerbox"></td>
				</tr>

				<tr>
					<td colspan="2" class="boardContent"><textarea name="inqu_content"
							class="content_inpt" rows="10" cols="30"></textarea></td>
				</tr>
				
			</table>
			<button type="submit" class="submit_btn" style="cursor: pointer">작성</button>
			<a href="getInqueryList.do">두두두</a>
		</form>

	</div>
</body>
</html>