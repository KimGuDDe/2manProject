<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap@300&family=Yesteryear&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body {
	font-family: 'Jua';
}

.designer-container {	
    display: flex;
    align-items: center;
    margin-bottom: 50px;
    width: 600px;
}

.designer-image {
    width: 300px;
    height: 400px;
    margin-right: 20px;
}

.designer-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.designer-info {
    flex: 1;
}

.designer-table {
    display: table;
    margin-left: 100px;
    border-collapse: collapse;
}

.table-header, .table-row {
    display: table-row;
}

.table-header div, .table-row div {
    display: table-cell;
    padding: 10px;
    border: 1px solid #ccc;
}

.table-header div {
    font-weight: bold;
    background-color: #f0f0f0;
}
</style>
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="alert alert-primary" style="width: 500px;">
		ncloud에 등록된 디자이너 소개
	</div>
	 
    <div class="designer-container">
        <div class="designer-image">
            <img alt="" src="./designer1.jpg">
        </div>
        <div class="designer-info">
            <h3>이름: 홍길동</h3>
            <p>연락처: contact us 창에서 문의 바랍니다</p>
            <p>경력: 5년</p>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#portpolioModal1">
            	포트폴리오 확인
            </button>
        </div>
	    <!-- Table for additional information -->
	    <div class="designer-table">
	        <table class="table table-bordered table-striped">
	        	<thead>
	        		<td>
	        			닉네임
	        		</td>
	        		<td>
	        			후기
	        		</td>
	        	</thead>
	        	<tr>
	        		<td>
	        			장현수	
	        		</td>
	        		<td>
	        			너무 좋아영
	        		</td>
	        	</tr>
	        	<tr>
	        		<td>
	        			권동환
	        		</td>
	        		<td>
	        			아주 고급집니다
	        		</td>
	        	</tr>
	        </table>
	    </div>
    </div>
    <!-- The Modal -->
    <div class="modal" id="portpolioModal1">
        <div class="modal-dialog">
            <div class="modal-content">
            	<!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="portfolioModalLabel1">홍길동의 포트폴리오</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <img src="./portfolio1_1.jpg" style="width: 100%">
                    <img src="./portfolio1_2.jpg" style="width: 100%">
                </div>
                <!-- Modal footer -->
		      	<div class="modal-footer">			
		        	<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
		      	</div>
		      	
            </div>
        </div>
    </div>
    
    <div class="designer-container">
        <div class="designer-image">
            <img src="./designer2.jpg">
        </div>
        <div class="designer-info">
            <h3>이름: 김철수</h3>
            <p>연락처: contact us 창에서 문의 바랍니다</p>
            <p>경력: 7년</p>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#portpolioModal2">
            	포트폴리오 확인
            </button>
        </div>
    </div>
    <!-- The Modal -->
    <div class="modal" id="portpolioModal2">
        <div class="modal-dialog">
            <div class="modal-content">
            	<!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="portfolioModalLabel2">김철수의 포트폴리오</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <img src="./portfolio2_1.jpg" style="width: 100%">
                    <img src="./portfolio2_2.jpg" style="width: 100%">
                </div>
                <!-- Modal footer -->
		      	<div class="modal-footer">			
		        	<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
		      	</div>
		      	
            </div>
        </div>
    </div>
    
    <div class="designer-container">
        <div class="designer-image">
            <img alt="" src="./designer3.jpg">
        </div>
        <div class="designer-info">
            <h3>이름: 이영희</h3>
            <p>연락처: contact us 창에서 문의 바랍니다</p>
            <p>경력: 3년</p>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#portpolioModal3">
            	포트폴리오 확인
            </button>
        </div>
    </div>
    <!-- The Modal -->
    <div class="modal" id="portpolioModal3">
        <div class="modal-dialog">
            <div class="modal-content">
            	<!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="portfolioModalLabel1">이영희의 포트폴리오</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <img src="./portfolio3_1.jpg" style="width: 100%">
                    <img src="./portfolio3_2.jpg" style="width: 100%">
                </div>
                <!-- Modal footer -->
		      	<div class="modal-footer">			
		        	<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
		      	</div>
		      	
            </div>
        </div>
    </div>
</body>
</html>