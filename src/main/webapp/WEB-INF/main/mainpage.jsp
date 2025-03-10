<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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

.login-form {
    width: 100%;
    margin-top: 20px;
    background: #fff;
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
}

.login-table {
    width: 100%;
    margin-top: 20px;
}

.login-table th {
    background-color: #f0f0f0;
    color: #333;
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

.login-table th:first-child {
    border-top-left-radius: 10px;
}

.login-table th:last-child {
    border-top-right-radius: 10px;
}

.login-table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.login-table input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 5px;
    border: 1px solid #ddd;
}

.login-button {
    margin-top: 20px;
    background-color: #3498db;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.login-button:hover {
    background-color: #2980b9;
}

.register-button {
    background-color: #dc3545;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.register-button:hover {
    background-color: #c82333;
}

.error-message {
    color: red;
    font-size: 0.9em;
    margin-top: 5px;
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
</head>
<body>
    <jsp:include page="../../layout/title.jsp" />
    <div class="container">
        <div class="image-section">
            <section class="intro">
                <img src="./maincenter.png" alt="메인 이미지">
            </section>
            <br><br>
            <section class="intro1">
                <h2>로그인</h2>
                <p>계정으로 로그인하여 서비스를 이용하세요.</p>
            </section>
        </div>
        <div class="login-form">
            <form method="post" action="/login">
                <table class="login-table">
                    <caption align="top"><b>로그인</b></caption>
                    <tbody>
                        <tr>
                            <th width="200">아이디</th>
                            <td>
                                <input type="text" name="iusername" required="required">
                            </td>
                        </tr>
                        <tr>
                            <th width="200">비밀번호</th>
                            <td>
                                <input type="password" name="ipassword" required="required">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <button type="submit" class="login-button">로그인</button>
                                <button type="button" class="register-button" onclick="location.href='/register'">회원가입</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <c:if test="${not empty error}">
                    <div class="error-message">${error}</div>
                </c:if>
            </form>
        </div>
    </div>
</body>
</html>
