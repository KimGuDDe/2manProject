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
</style>
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="main" style="background-image: url('./mainbackground.png'); background-repeat: no-repeat; background-size: cover; background-position: center; height: 100vh;">
		<section class="intro" style="text-align: center;">
			<img src="./maincenter.png">
		</section>
		<br>
		<br>
		<section class="intro1" style="text-align: center;">
        <h2>환영합니다! 고객님!</h2>
        <p style="font-size:1.3em;">계약 중개로 인테리어 고객의 편의성과 만족도를 높이는 것을 목표로 합니다</p>        
    	</section>    
    	<section class="menutitle" style="text-align: center;">
	        <button>
	            <h3>주거 인테리어</h3>
	            <p>주거 공간을 아름답고 실용적으로 디자인합니다.</p>
	        </button>       
	        <button>
	            <h3>상업 인테리어</h3>
	            <p>상업 공간을 고객의 비즈니스에 맞게 설계합니다.</p>
	        </button>
        </section>    
	</div>
</body>
</html>