<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ncloud Interior</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap@300&family=Yesteryear&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
            background: #f5f5f5;
            color: #333;
        }

        .menubar {
            background: #fff;
            padding: 20px 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
            display: flex; /* 플렉스박스를 사용하여 내부 요소 정렬 */
            align-items: center; /* 세로 가운데 정렬 */
            justify-content: space-between; /* 좌우로 공간 분배 */
        }

        .menubar h2 {
            margin: 0;
            font-size: 2em;
            font-weight: 700;
        }

        .menubar h2 a {
            text-decoration: none;
            color: #2c3e50;
            transition: color 0.3s ease;
        }

        .menubar h2 a:hover {
            color: #3498db;
        }

        ul.mymenu {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex; /* 플렉스박스를 사용하여 가로 정렬 */
            align-items: center; /* 세로 가운데 정렬 */
            gap: 20px; /* 메뉴 간격 조정 */
        }

        ul.mymenu li {
            height: auto; /* 높이를 자동으로 설정 */
        }

        ul.mymenu li a {
            text-decoration: none;
            color: #7f8c8d;
            font-size: 1.1em;
            padding: 10px 20px;
            border-radius: 20px;
            transition: all 0.3s ease;
        }

        ul.mymenu li a:hover {
            background: #3498db;
            color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        img.profilephoto {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 2px solid #3498db;
            margin-right: 10px;
            cursor: pointer;
            object-fit: cover; /* 이미지 비율 유지 */
            transition: transform 0.3s ease;
        }

        img.profilephoto:hover {
            transform: scale(1.1);
        }

        .login-info {
            display: flex; /* 플렉스박스를 사용하여 내부 요소 정렬 */
            align-items: center; /* 세로 가운데 정렬 */
        }

        .btn-logout {
            margin-left: 10px;
            background-color:#e74c3c ;

    </style>
</head>
<c:set var="root" value="${pageContext.request.contextPath}" />
<body>
    <div class="menubar">
        <h2 style="font-family: Yesteryear; font-size: 3.7em;">
            <a href="${root}/">Ncloud Interior</a>
        </h2>
        <ul class="mymenu">
            <li>
                <c:choose>
                    <c:when test="${sessionScope.loginstatus != null}">
                        <a href="/loginsuccess">Home</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${root}/">Home</a>
                    </c:otherwise>
                </c:choose>
            </li>
            <li><a href="${root}/review">후기</a></li>
            <c:if test="${sessionScope.loginstatus != null}">
                <li><a href="#contact-section">Contact us</a></li>
            </c:if>
            <c:if test="${sessionScope.loginstatus != null}">
                <li><a href="${root}/board/list">게시판</a></li>
            </c:if>
            <li>
                <c:choose>
                    <c:when test="${sessionScope.loginstatus == null}">
                        <div class="login-info">
                            <img class="profilephoto" src="${root}/save/noimage.png" alt="프로필 이미지">
                            <span>로그인을 진행해주세요</span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="login-info">
                            <c:set var="naverurl" value="https://kr.object.ncloudstorage.com/bitcamp-bucket-103" />
                            <img class="profilephoto" src="${naverurl}/2manidphoto/${loggedInUser.photo}"
                                 onerror="this.src='${root}/save/noimage.png'" alt="프로필 이미지">
                            <span>${loggedInUser.iusername}님이 로그인 중입니다</span>
                            <a href="${root}/logout" class="btn btn-sm btn-logout">로그아웃</a>
                        </div>
                        <script type="text/javascript">
                            $(".profilephoto").click(function() {
                                location.href = '${root}/member/mypage';
                            });
                        </script>
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>
    </div>
    <hr style="clear: both;">
</body>
</html>