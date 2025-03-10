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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap@300&family=Yesteryear&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style type="text/css">
	body * {
		font-family: 'Noto Sans KR', sans-serif;
		margin: 0;
		padding: 0;
		background: #f5f5f5;
		color: #333;
	}
	
	.container {
		display: flex;
		height: 100vh;
	}
</style>
</head>
<script type="text/javascript">
let jungbok=false;
	
	$(function(){
		//중복버튼 이벤트
		$("#btnidcheck").click(function(){
			let id=$("#id").val();
			if(!id) {
				alert("아이디를 입력해주세요");
				return;
			}
				$.ajax({
				    type: "get",
				    dataType: "json",
				    data: {"id": id},
				    url: "/idcheck", // ./idcheck 대신 절대 경로 사용
				    success: function(res) {
				        if (res.result === 'success') {
				            jungbok = true;
				            alert("사용가능한 아이디입니다");
				        } else {
				            jungbok = false;
				            alert("존재하는 아이디입니다\n다시 입력해주세요");
				            $("#id").val("");
				        }
				    },
				    error: function(xhr, status, error) { // 오류 처리 추가
				        console.log("AJAX Error: " + status + ", " + error);
				        alert("중복 체크 중 오류가 발생했습니다.");
				    }
				});	
		});
		
		//아이디를 입력시 중복변수 다시 false로
		$("#id").keyup(function(){
			jungbok=false;
		});
	});
	
	function check(){
		
		let p1=$("#ipassword").val();
		let p2=$("#ipassword2").val();
		if(p1!=p2){
			alert("비밀번호가 맞지 않습니다");
			return false;//false로 주면 action 으로 안넘어감
		}
		
		if(!jungbok){
			alert("중복체크 버튼을 눌러주세요");
			return false;
		}
		
	}
</script>
<body>
	<jsp:include page="../../layout/title.jsp" />
	<div class="container">
		<form action="./register" method="post" enctype="multipart/form-data"
	onsubmit="return check()">
		<table class="table table-bordered tab1">
			<tbody>
				<tr>
					<td width="150" rowspan="4">
						<input type="file" name="photoFile" style="width: 100px;"
						onchange="preview(this)">
						<br>
						<img src="" id="showimg" style="width: 200px; height: 150px; object-fit: contain;"
						onerror="this.src='../save/noimage.png'">
						
						<!-- 파일 선택시 제이쿼리로 미리보기 코드 -->
						<script>
							function preview(tag)
							{
								let f=tag.files[0];
								if(!f.type.match("image.*")){
									alert("이미지 파일만 가능합니다");
									return;
								}
								
								if(f){
									let reader=new FileReader();
									reader.onload=function(e){
										$("#showimg").attr("src",e.target.result);
									}
									reader.readAsDataURL(f);
								}
							}
						</script>
					</td>
					<th width="70">이름</th>
					<td>
						<input type="text" name="iusername" class="form-control"
						required="required">
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td class="input-group">
						<input type="text" name="id" id="id" class="form-control"
						required="required">
						<button type="button" class="btn btn-sm btn-danger"
						id="btnidcheck">중복체크</button>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td class="input-group">
						<input type="password" name="ipassword" id="ipassword" class="form-control"
						placeholder="비밀번호1" required="required">
						<input type="password" name="ipassword2" id="ipassword2" class="form-control"
						placeholder="비밀번호2" required="required">
					</td>
				</tr>			
				<tr>
					<td colspan="3" align="center">
						<button type="submit" class="btn btn-sm btn-success">회원가입</button>
					</td>
				</tr>
			</tbody>		
		</table>
	</form>
	</div>
</body>
</html>
