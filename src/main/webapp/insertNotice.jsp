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
		<p class="insertBoard_Title">보드에따라 달라짐</p>
		<form action="insertNotice.do" enctype="multipart/form-data"
			method="post">
			<table>
				<tr>
					<td class="td1">제목</td>
					<td class="td1"><input type="text" name="notice_title" class="inpt">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>작성자도 따로</td>
				</tr>

				<tr>
					<td colspan="2" class="boardContent"><textarea name="notice_content"
							class="content_inpt" rows="10" cols="30"></textarea></td>
				</tr>
				<tr>
					<td>이미지 청부</td>
					<td><input type="file" name="img_upload" class="inputImg"></td>
				</tr>
			</table>
			<button type="submit" class="submit_btn">작성</button>
			<a href="getNoticeList.do">두두두</a>
		</form>

	</div>
</body>
</html>