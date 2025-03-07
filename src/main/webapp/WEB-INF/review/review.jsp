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
          display: flex; /* 가로로 배치 */
          align-items: flex-start; /* 상단 정렬 */
          margin-bottom: 50px;
          width: 600px;

}

.designer-image {
    width: 300px;
    height: 400px;
    margin-left: 20px;
    margin-right: 20px;
    flex-shrink: 0;
}

.designer-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.designer-info {
	flex: 1;
    display: flex; /* flexbox를 사용하여 가로로 정렬 */
    flex-direction: column; /* 내부 요소들을 세로로 배치 */
    width: auto; /* 내용에 맞게 너비 자동 조정 */
    margin-right: 100px;
}

.info-row {
    white-space: nowrap; /* 줄바꿈 방지 */
    margin-bottom: 5px; /* 각 정보 행 간 간격 조정 */
}

.designer-table {
    display: table;
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

/* 테이블을 이미지 상단에 맞춰 정렬 */
.designer-table-container {
    margin-left: auto;
    flex-shrink: 0;  /* 테이블이 줄어들지 않도록 설정 */
}

.designer-table-container .designer-table {
    margin-top: 0; /* 테이블의 상단 여백 제거 */
}
</style>
</head>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="alert alert-primary" style="width: 500px; margin: 20px;">
		ncloud에 등록된 디자이너 소개<br> ncloud에 등록하고 싶은 디자이너라면 카톡 혹은 메일로 연락주세요
	</div>

	<div class="designer-container">
		<div class="designer-image">
			<img alt="" src="./designer1.jpg">
		</div>
		<div class="designer-info">
			<div class="info-row">
				<h3>이름: 홍길동</h3>
			</div>
			<div class="info-row">
				<p>연락처: contact us 창에서 문의 바랍니다</p>
			</div>
			<div class="info-row">
				<p>경력: 5년</p>
			</div>
			<button type="button" class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#portpolioModal1">포트폴리오 확인</button>
		</div>
		<div class="designer-table-container">
			<div class="designer-table">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>닉네임</th>
							<th>후기</th>
						</tr>
					</thead>
					<tbody id="reviewTableBodyHong">
						<!-- 여기에 이름과 후기 내용 추가 -->
						
					</tbody>
				</table>
			</div>
			<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#reviewModal1">
				후기 작성
			</button>
		</div>
	</div>

	<!-- The Portpolio Modal -->
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
					<img src="./portfolio1_1.jpg" style="width: 100%"> <img
						src="./portfolio1_2.jpg" style="width: 100%">
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
	
	<!-- The Review Modal -->
	<div class="modal" id="reviewModal1">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" id="reviewModalLabel1">홍길동 디자이너 후기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<h6>이름</h6>
		        <input type="text" class="form-control" id="nameHong"
		        value="${reviewDto.name}">
		        <h6>후기</h6>
		        <input type="text" class="form-control" id="contentHong"	
		        value="${reviewDto.content}">
		        <br>
		        <button type="button" class="btn btn-sm btn-danger"
		        id="btnupdateHong" data-bs-dismiss="modal">후기 등록</button>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdateHong').click(function(){
			var name = $('#nameHong').val();
			var content = $('#contentHong').val();
			
			$.ajax({
				type:'POST',
				url:'/review/insertHong',
				contentType:'application/json',
				data:JSON.stringify({
					name:name,
					content:content,
					designer:'홍길동'
				}),
				success: function(data) {
					console.log(data);
					alert('후기 작성 성공!');
					location.reload(); // 페이지 새로고침
				},
				error: function(xhr, status, error){
					console.log(xhr.responseText);
					alert('후기 작성 실패!');
				}
			});
		});
		
		// 테이블 업데이트 함수
        function updateReviewTableHong() {
            $.ajax({
                type: 'GET',
                url: '/review/listHong',
                dataType: 'json',
                success: function(data) {
                    var tbody = $('#reviewTableBodyHong'); // 테이블 body 선택
                    tbody.empty(); // 기존 데이터 초기화

                    $.each(data, function(index, item) {
                        var row = '<tr>' +
                            '<td>' + item.name + '</td>' +
                            '<td>' + item.content + '</td>' +
                            '</tr>';
                        tbody.append(row); // 테이블에 데이터 추가
                    });
                },
                error: function(xhr, status, error){
                    console.error(xhr.responseText);
                    alert('데이터 로드 실패!');
                }
            });
        }

		
		// 페이지 로드 시 초기 리뷰 데이터 로드
        updateReviewTableHong();
	});
	</script>
	
	<div class="designer-container">
		<div class="designer-image">
			<img alt="" src="./designer2.jpg">
		</div>
		<div class="designer-info">
			<div class="info-row">
				<h3>이름: 김철수</h3>
			</div>
			<div class="info-row">
				<p>연락처: contact us 창에서 문의 바랍니다</p>
			</div>
			<div class="info-row">
				<p>경력: 7년</p>
			</div>
			<button type="button" class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#portpolioModal2">포트폴리오 확인</button>
		</div>
		<div class="designer-table-container">
			<div class="designer-table">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>닉네임</th>
							<th>후기</th>
						</tr>
					</thead>
					<tbody id="reviewTableBodyKim">
						
					</tbody>
				</table>
			</div>
			<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#reviewModal2">
				후기 작성
			</button>
		</div>
	</div>

	<!-- The Portpolio Modal -->
	<div class="modal" id="portpolioModal2">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" id="portfolioModalLabel1">김철수의 포트폴리오</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<img src="./portfolio2_1.jpg" style="width: 100%">
					<img src="./portfolio2_2.jpg" style="width: 100%">
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- The Review Modal -->
	<div class="modal" id="reviewModal2">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" id="reviewModalLabel2">김철수 디자이너 후기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<h6>이름</h6>
		        <input type="text" class="form-control" id="nameKim"
		        value="${reviewDto.name}">
		        <h6>후기</h6>
		        <input type="text" class="form-control" id="contentKim"	
		        value="${reviewDto.content}">
		        <br>
		        <button type="button" class="btn btn-sm btn-danger"
		        id="btnupdateKim" data-bs-dismiss="modal">후기 등록</button>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdateKim').click(function(){
			var name = $('#nameKim').val();
			var content = $('#contentKim').val();
			
			$.ajax({
				type:'POST',
				url:'/review/insertKim',
				contentType:'application/json',
				data:JSON.stringify({
					name:name,
					content:content,
					designer:'김철수'
				}),
				success: function(data) {
					console.log(data);
					alert('후기 작성 성공!');
					location.reload(); // 페이지 새로고침
				},
				error: function(xhr, status, error){
					console.log(xhr.responseText);
					alert('후기 작성 실패!');
				}
			});
		});
		
		// 테이블 업데이트 함수
        function updateReviewTableKim() {
            $.ajax({
                type: 'GET',
                url: '/review/listKim',
                dataType: 'json',
                success: function(data) {
                    var tbody = $('#reviewTableBodyKim'); // 테이블 body 선택
                    tbody.empty(); // 기존 데이터 초기화

                    $.each(data, function(index, item) {
                        var row = '<tr>' +
                            '<td>' + item.name + '</td>' +
                            '<td>' + item.content + '</td>' +
                            '</tr>';
                        tbody.append(row); // 테이블에 데이터 추가
                    });
                },
                error: function(xhr, status, error){
                    console.error(xhr.responseText);
                    alert('데이터 로드 실패!');
                }
            });
        }

		
		// 페이지 로드 시 초기 리뷰 데이터 로드
        updateReviewTableKim();
	});
	</script>

	<div class="designer-container">
		<div class="designer-image">
			<img alt="" src="./designer3.jpg">
		</div>
		<div class="designer-info">
			<div class="info-row">
				<h3>이름: 이영희</h3>
			</div>
			<div class="info-row">
				<p>연락처: contact us 창에서 문의 바랍니다</p>
			</div>
			<div class="info-row">
				<p>경력: 3년</p>
			</div>
			<button type="button" class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#portpolioModal3">포트폴리오 확인</button>
		</div>
		<div class="designer-table-container">
			<div class="designer-table">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>닉네임</th>
							<th>후기</th>
						</tr>
					</thead>
					<tbody id="reviewTableBodyLee">
						
					</tbody>
				</table>
			</div>
			<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#reviewModal3">
				후기 작성
			</button>
		</div>
	</div>

	<!-- The Portpolio Modal -->
	<div class="modal" id="portpolioModal3">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" id="portfolioModalLabel3">김철수의 포트폴리오</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<img src="./portfolio3_1.jpg" style="width: 100%">
					<img src="./portfolio3_2.jpg" style="width: 100%">
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- The Review Modal -->
	<div class="modal" id="reviewModal3">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" id="reviewModalLabel3">이영희 디자이너 후기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<h6>이름</h6>
		        <input type="text" class="form-control" id="nameLee"
		        value="${reviewDto.name}">
		        <h6>후기</h6>
		        <input type="text" class="form-control" id="contentLee"	
		        value="${reviewDto.content}">
		        <br>
		        <button type="button" class="btn btn-sm btn-danger"
		        id="btnupdateLee" data-bs-dismiss="modal">후기 등록</button>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdateLee').click(function(){
			var name = $('#nameLee').val();
			var content = $('#contentLee').val();
			
			$.ajax({
				type:'POST',
				url:'/review/insertLee',
				contentType:'application/json',
				data:JSON.stringify({
					name:name,
					content:content,
					designer:'이영희'
				}),
				success: function(data) {
					console.log(data);
					alert('후기 작성 성공!');
					location.reload(); // 페이지 새로고침
				},
				error: function(xhr, status, error){
					console.log(xhr.responseText);
					alert('후기 작성 실패!');
				}
			});
		});
		
		// 테이블 업데이트 함수
        function updateReviewTableLee() {
            $.ajax({
                type: 'GET',
                url: '/review/listLee',
                dataType: 'json',
                success: function(data) {
                    var tbody = $('#reviewTableBodyLee'); // 테이블 body 선택
                    tbody.empty(); // 기존 데이터 초기화

                    $.each(data, function(index, item) {
                        var row = '<tr>' +
                            '<td>' + item.name + '</td>' +
                            '<td>' + item.content + '</td>' +
                            '</tr>';
                        tbody.append(row); // 테이블에 데이터 추가
                    });
                },
                error: function(xhr, status, error){
                    console.error(xhr.responseText);
                    alert('데이터 로드 실패!');
                }
            });
        }

		
		// 페이지 로드 시 초기 리뷰 데이터 로드
        updateReviewTableLee();
	});
	</script>
</body>
</html>