<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
body * {
	font-family: 'Jua';
}

.container {
	display: flex;
	height: 100vh;
}

.image-section {
	flex: 1;
	background-image: url('./mainbackground.png'); /* 이미지 URL을 넣으세요 */
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.login-form {
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #f4f4f4;
}
</style>
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="container">
		<div class="image-section">
			<section class="intro" style="text-align: center;">
				<img src="./maincenter.png">
			</section>
			<br> <br>
			<section class="intro1" style="text-align: center;">
				<h2>환영합니다! 고객님!</h2>
				<p style="font-size: 1.3em;">계약 중개로 인테리어 고객의 편의성과 만족도를 높이는 것을 목표로 합니다</p>
			</section>
		</div>
		<div class="login-form">
  			<div class="jumbotron">
	  			<form method="post" action="loginAction.jsp">
	  				<h3 style="text-align: center;">로그인</h3>
	  				<div class="form-group">
	  					<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20">
	  				</div>
	  				<div class="form-group">
	  					<input type="password" class="form-control" placeholder="비밀번호" name="pw" maxlength="20">
	  				</div>
	  				<input type="submit" class="btn btn-primary form-control" value="로그인">
	  			</form>
  			</div>
  		</div>
	</div>
</body>
</html>