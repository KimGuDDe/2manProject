<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
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

.review-table {
    width: 100%;
    margin-top: 20px;
    background: #fff;
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
}

.review-table th {
    width: 400px;
    background-color: #f0f0f0;
    color: #333;
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

.review-table th:first-child {
    border-top-left-radius: 10px;
}

.review-table th:last-child {
    border-top-right-radius: 10px;
}

.review-table td {
    width: 200px;
    padding: 10px;
    border-bottom: 1px solid #ddd;
    text-align: center;
}

.pagination {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.pagination ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.pagination li {
    display: inline-block;
    margin: 0 5px;
}

.pagination .page-item {
    margin: 0 5px;
}

.pagination .page-link {
    display: block;
    padding: 10px 15px;
    border: 1px solid #ddd;
    text-decoration: none;
    color: #333;
}

.pagination .page-link:hover {
    background-color: #ddd;
}

.pagination .active .page-link {
    background-color: #3498db;
    color: white;
}

.write-button {
    float: right;
    margin-top: -50px;
    margin-right: 20px;
    background-color: #3498db;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.write-button:hover {
    background-color: #2980b9;
}

.button-container {
    margin-left: 225px;	
    display: flex;
    gap: 50px;
}

.custom-button {
    margin-left : 200px;
    font-family: jua;
    font-size: 1.5em;
    padding: 10px 20px;
    border: none;
    border-radius: 10px;
    background-color: #3498db;
    color: white;
    cursor: pointer;
    text-decoration: none;
}

.custom-button:hover {
    background-color: #2980b9;
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
    <jsp:include page="../../layout/title.jsp" />
    <div class="container">
        <div class="button-container">
            <button class="custom-button" onclick="location.href='${root}/board/list?pageNum=1'">게시판</button>
            <button class="custom-button" onclick="location.href='${root}/board/review'">후 기</button>
        </div>        
        <div class="review-table">
            <table>
                <thead>
                    <tr>
                        <th>번호</th>                        
                        <th>내용</th>
                        <th>작성자</th>
                        <th>디자이너</th>                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${reviewList}" var="rdto">
                        <tr>
                            <td>${rdto.renum}</td>                            
                            <td>${rdto.content}</td>
                            <td>${rdto.name}</td>
                            <td>${rdto.designer}</td>                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- 페이징 처리 -->
        <nav class="pagination">
            <ul style="list-style: none; padding: 0;">
                <c:if test="${pagination.pageNum > 1}">
                    <li class="page-item">
                        <a class="page-link" href="?pageNum=1&listSize=${pagination.listSize}">처음</a>
                    </li>
                </c:if>
                <c:if test="${pagination.pageNum > 1}">
                    <li class="page-item">
                        <a class="page-link" href="?pageNum=${pagination.pageNum-1}&listSize=${pagination.listSize}">이전</a>
                    </li>
                </c:if>
                <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="num">
                    <li class="page-item ${pagination.pageNum == num ? 'active' : ''}">
                        <a class="page-link" href="?pageNum=${num}&listSize=${pagination.listSize}">${num}</a>
                    </li>
                </c:forEach>
                <c:if test="${pagination.pageNum < pagination.endPage}">
                    <li class="page-item">
                        <a class="page-link" href="?pageNum=${pagination.pageNum+1}&listSize=${pagination.listSize}">다음</a>
                    </li>
                </c:if>
                <c:if test="${pagination.pageNum < pagination.endPage}">
                    <li class="page-item">
                        <a class="page-link" href="?pageNum=${pagination.endPage}&listSize=${pagination.listSize}">마지막</a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>
</body>
</html>
