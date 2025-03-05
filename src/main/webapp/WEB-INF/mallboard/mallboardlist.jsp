<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<style>
    body * {
        font-family: 'Jua';
    }
</style>
</head>
<body>
<table class="tabboard table table-bordered">
    			<thead>
    				<tr>
    					<th width="50">번호</th>
    					<th width="400">이름</th>
    					<th width="80">전번</th>
    				</tr>
    			</thead>
    			<tbody>
   					<c:forEach var="dto" items="${list}">
   						<tr>
   							<td>
   								${dto.num}
   							</td>
   							<td>
   								${dto.name}
   							</td>
   							<td>
   								${dto.hp}
   							</td>
   						</tr>
   					</c:forEach>  				
    			</tbody>
    		</table>
</body>
</html>