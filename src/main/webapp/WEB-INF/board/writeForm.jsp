<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<style>
/* 스타일 추가 */
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f5f5f5;
	padding: 20px;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	background: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
}

form label {
	display: block;
	margin-top: 10px;
	font-weight: bold;
}

form input, form textarea {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border-radius: 5px;
	border: 1px solid #ddd;
}

form button {
	margin-top: 20px;
	background-color: #3498db;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
}

form button:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<div class="container">
		<h2>게시글 작성</h2>
		<form action="/board/write" method="post" style="margin-right: 20px">
			<label for="title">제목</label>
			<input type="text" id="title" name="title" required>

			<label for="content">내용</label>
			<input id="content" name="content" rows="10" required>

			<label for="writer">작성자</label>
			<input type="text" id="writer" name="writer" required>

			<button type="submit">작성 완료</button>
		</form>
	</div>
</body>
</html>
