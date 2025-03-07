<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
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
                <section class="menutitle">
                    <button class="menu1" onclick="location.href='./interhome.html'">
                        <h3>주거 인테리어</h3>
                        <p>주거 공간을 아름답고 실용적으로 디자인합니다.</p>
                    </button>
                    <button class="menu2">
                        <h3>상업 인테리어</h3>
                        <p>상업 공간을 고객의 비즈니스에 맞게 설계합니다.</p>
                    </button>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
