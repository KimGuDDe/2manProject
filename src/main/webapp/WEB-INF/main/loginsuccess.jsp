<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
<style>
/* 전체 스타일 */
body {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
	background: #f5f5f5;
	color: #333;
}

.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 50px 20px;
	text-align: center;
}

/* 이미지 섹션 */
.image-section {
	margin-bottom: 40px;
}

.image-section img {
	max-width: 100%;
	height: auto;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.intro1 h2 {
	font-size: 2.5em;
	color: #2c3e50;
	margin-bottom: 10px;
	font-weight: 700;
}

.intro1 p {
	font-size: 1.3em;
	color: #7f8c8d;
	line-height: 1.6;
}

/* 버튼 및 메뉴 스타일 */
.login-form .jumbotron {
	background: #fff;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
}

.menutitle {
	display: flex;
	justify-content: center;
	gap: 30px;
}

.menu1, .menu2 {
	background: #3498db;
	color: white;
	border: none;
	padding: 20px 40px;
	border-radius: 10px;
	cursor: pointer;
	transition: all 0.3s ease;
	width: 250px;
	text-align: center;
}

.menu1:hover, .menu2:hover {
	background: #2980b9;
	transform: translateY(-5px);
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.menu1 h3, .menu2 h3 {
	margin: 0 0 10px 0;
	font-size: 1.5em;
}

.menu1 p, .menu2 p {
	margin: 0;
	font-size: 1em;
	opacity: 0.9;
}

.contact-section {
	background: #7f6750;
	color: #ecf0f1;
	padding: 50px 20px;
	margin-top: 40px;
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.contact-section h1 {
	font-family: 'Yesteryear';
	font-size: 3.5em;
	margin-bottom: 20px;
	color: #ecf0f1;
}

.contact-section form {
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 15px;
}

.contact-section label {
	font-size: 1.2em;
	margin-right: 20px;
	color: #ecf0f1;
}

.contact-section input, .contact-section textarea {
	width: 100%;
	max-width: 400px;
	padding: 10px;
	border: 1px solid #ecf0f1;
	background: transparent;
	color: #ecf0f1;
	border-radius: 5px;
	font-size: 1em;
}

.contact-section input:focus, .contact-section textarea:focus {
	outline: none;
	border-color: #3498db;
}

.contact-section .error {
	color: #e74c3c;
	font-size: 0.9em;
	margin-top: 5px;
	text-align: left;
	width: 100%;
	max-width: 400px;
}

.contact-section button {
	background: #7f6750;
	color: #ecf0f1;
	border: 2px solid #ecf0f1;
	padding: 10px 30px;
	border-radius: 5px;
	font-size: 1.2em;
	cursor: pointer;
	transition: all 0.3s ease;
}

.contact-section button:hover {
	background: #ecf0f1;
	color: #efd0ae;
}

/* 반응형 디자인 */
@media ( max-width : 768px) {
	.menutitle {
		flex-direction: column;
		gap: 20px;
	}
	.menu1, .menu2 {
		width: 100%;
	}
}
</style>
<!-- Google Fonts 추가 (모던한 느낌을 위해) -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap@300&family=Yesteryear&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="container">
		<div class="image-section">
			<section class="intro">
				<img src="./maincenter.png" alt="메인 이미지">
			</section>
			<br>
			<br>
			<section class="intro1">
				<h2>환영합니다! 고객님!</h2>
				<p>계약 중개로 인테리어 고객의 편의성과 만족도를 높이는 것을 목표로 합니다</p>
			</section>
		</div>
		<div class="login-form">
			<div class="jumbotron">
				<section class="menutitle">
					<button class="menu1" onclick="location.href='./interhome.html'">
						<h3>주거 인테리어</h3>
						<p>주거 공간을 아름답고 실용적으로 디자인합니다.</p>
					</button>
					<button class="menu2" onclick="location.href='./out.html'">
						<h3>상업 인테리어</h3>
						<p>상업 공간을 고객의 비즈니스에 맞게 설계합니다.</p>
					</button>
				</section>
			</div>
		</div>
	</div>	
	<section id="contact-section" style="height: 100; background-color: #dcdcdc;">
	<div class="contact-section">
		<br><br><br>
		<h1 style="text-align: center">Contact Us</h1>
		<form id="contactForm" action="#" method="post" onsubmit="return validateForm()">
			<div>
				<label>이름(name) :</label>
				<input type="text" name="cname" required>
				<div class="error" id="firstNameError">Enter your name.</div>
			</div>
			<div>
				<label>이메일(E-mail) :</label>
				<input type="email" name="cemail" required>
			</div>
			<div>
				<label>제목(Subject) :</label>
				<input type="text" name="csubject">
			</div>
			<div>
				<label>내용(Message) :</label>
				<textarea name="cmessage" rows="4"></textarea>
			</div>
		<div>
		<button type="submit">제 출</button>
		<button type="button" onclick="location.href='http://pf.kakao.com/_grDGn'">온라인 상담</button>
		</div>
		</form>
		<script>
                function validateForm() {
                    const firstName = document.querySelector('input[name="firstName"]');
                    const error = document.getElementById('firstNameError');
                    if (!firstName.value.trim()) {
                        error.style.display = 'block';
                        return false;
                    } else {
                        error.style.display = 'none';
                        return true;
                    }
                }
                
                $(document).ready(function
                		
                		() {
                    $("#contactForm").on("submit", function (e) {
                        e.preventDefault(); // 기본 폼 제출 방지

                        // 폼 데이터 수집
                        const formData = $(this).serialize();

                        // AJAX 요청
                        $.ajax({
                            url: "/contect", // 컨트롤러 URL
                            type: "POST",
                            data: formData,
                            success: function (response) {
                                $("#responseMessage").show().text("폼이 성공적으로 제출되었습니다!");
                                $("#contactForm")[0].reset(); // 폼 초기화
                            },
                            error: function () {
                                alert("폼 제출 중 오류가 발생했습니다.");
                            }
                        });
                    });
                });
            </script>
	</div>
	</section>
</body>
</html>