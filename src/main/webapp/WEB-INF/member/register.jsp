<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style type="text/css">
body * {
	font-family: 'Jua';
}

.container {
	display: flex;
	height: 100vh;
}
</style>
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="container">
		<form:form action="/register" method="post" modelAttribute="loginData" enctype="multipart/form-data" style="">
			<div>
				<label for="id">아이디&nbsp;&nbsp;</label>
				<form:input path="id" />
			</div>
			<div>
				<label for="iusername">이름&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<form:input path="iusername" />
			</div>
			<div>
				<label for="ipassword">비밀번호</label>
				<form:password path="ipassword" />
			</div>
			<div>
				<label for="photo">프로필 이미지</label>
				<input type="file" name="photoFile" accept="image/*" />
			</div>
			<div>
				<input type="submit" value="Register" />
			</div>
		</form:form>
	</div>
</body>
</html>
