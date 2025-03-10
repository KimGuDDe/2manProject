<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보 페이지</title>
	<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		body {
			font-family: 'Noto Sans KR', sans-serif;
			margin: 0;
			padding: 0;
			background: #f5f5f5;
			color: #333;
		}
	</style>
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div style="display: inline-block; margin: 20px 50px;">
		<c:set var="naverurl" value="https://kr.object.ncloudstorage.com/bitcamp-bucket-103" />
		<img src="${naverurl}/2manidphoto/${user.photo}"
		onerror="this.src='${root}/save/noimage.png'" alt="프로필 이미지">
	</div>
	<div style="display:inline-block; margin: 20px 50px;">
		<table style="margin: 50px;">
			<tr>
				<th>
					회원명:&nbsp;&nbsp;
				</th>
				<td>
					${user.iusername}
				</td>
			</tr>
			<tr>
				<th>
					아이디:&nbsp;&nbsp;
				</th>
				<td>
					${user.id}
				</td>
			</tr>
			<tr>
				<th>
					비밀번호:&nbsp;&nbsp;
				</th>
				<td>
					${user.ipassword}
				</td>
			</tr>
			<tr>
				<th>
					가입일:&nbsp;&nbsp;
				</th>
				<td>
					<fmt:formatDate value="${user.writeday}" pattern="yyyy-MM-dd HH:mm" />
				</td>
			</tr>
		</table>
	</div>
	<c:if test="${sessionScope.loginstatus!=null && user.id == 'admin'}">
		<div style="margin: 20px 50px;">
			<table class="table table-striped table-bordered">
				<caption align="top">contact us 요청</caption>
				<thead>
					<td>순번</td>
					<td>의뢰자명</td>
					<td>메일주소</td>
					<td>문의제목</td>
					<td>문의내용</td>
				</thead>
				<c:forEach var="cdto" items="${list}">
					<tbody>
					<td>${cdto.num}</td>
					<td>${cdto.cname}</td>
					<td>${cdto.cemail}</td>
					<td>${cdto.csubject}</td>
					<td>${cdto.cmessage}</td>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</c:if>
</body>
</html>