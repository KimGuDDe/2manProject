<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
body * { font-family: 'Jua'; }
.container { display: flex; height: 100vh; }
.image-section { flex: 1; background-image: url('./mainbackground.png'); background-size: cover; background-repeat: no-repeat; background-position: center; }
.login-form { flex: 1; display: flex; justify-content: center; align-items: center; background-color: #f4f4f4; }
</style>
</head>
<body>
    <jsp:include page="../../layout/title.jsp" />
    <div class="container">
        <div class="image-section">
            <section class="intro" style="text-align: center;">
                <img src="./maincenter.png">
            </section>
            <br><br>
            <section class="intro1" style="text-align: center;">
                <h2>환영합니다! 고객님!</h2>
                <p style="font-size: 1.3em;">계약 중개로 인테리어 고객의 편의성과 만족도를 높이는 것을 목표로 합니다</p>
            </section>
        </div>
        <div class="login-form">
            <div class="jumbotron">
                <form method="post" action="/login">
                    <table class="table table-bordered tab1">
                        <caption align="top"><b>로그인</b></caption>
                        <tbody>
                            <tr>
                                <th width="200">아이디</th>
                                <td>
                                    <input type="text" name="iusername" required="required" class="form-control">
                                </td>
                            </tr>
                            <tr>
                                <th width="200">비밀번호</th>
                                <td>
                                    <input type="password" name="ipassword" required="required" class="form-control">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <button type="submit" class="btn btn-sm btn-success">로그인</button>
                                    <button type="button" class="btn btn-sm btn-danger" onclick="location.href='/register'">회원가입</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>
                </form>
            </div>
        </div>
    </div>
</body>
</html>