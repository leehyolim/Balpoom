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
		<p class="insertBoard_Title">상품 후기</p>
		<form action="insertReview.do" enctype="multipart/form-data"
			method="post">
			<table>
				<tr>
					<td class="td1">제목</td>
					<td class="td1"><input type="text" name="re_title" class="inpt">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="m_name" class="writerbox" value="${authMember.m_name }" readOnly>
						<input type="hidden" name="m_no" value="${authMember.m_no }"> 
					</td>
				</tr>

				<tr>
					<td colspan="2" class="boardContent"><textarea name="re_content"
							class="content_inpt" rows="10" cols="30"></textarea></td>
				</tr>
				<tr>
					<td>이미지 첨부</td>
					<td><input type="file" name="img_upload" class="inputImg"></td>
				</tr>
			</table>
			<button type="submit" class="submit_btn">작성</button>
			<a href="getReviewList.do"><button type="button" class="submit_btn">목록</a>
		</form>

	</div>
</body>
</html>