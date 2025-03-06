<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<h2>Registration Form</h2>
	<form:form action="/register" method="post" modelAttribute="loginData" enctype="multipart/form-data">
		<div>
			<label for="id">아이디</label>
			<form:input path="id" />
		</div>
		<div>
			<label for="iusername">이름</label>
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
</body>
</html>
