<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/WEB-INF/views/includes/header.jsp" %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>This is Home</title>
	<style>
		.btn-board {
			display: inline-block;
			padding: 10px 20px;
			margin-top: 20px;
			margin-right: 10px;
			font-size: 16px;
			color: white;
			background-color: #FF7F50;
			backgound-image: linear-gradient(to bottom, #FF997A, #FF7F50, #E06A3F);
			border: none;
			border-radius: 5px;
			text-decoration: none;
			cursor: pointer;
			transition: background-color 0.3s ease, box-shadow 0.3s ease;
			box-shadow: 0 2px 5px rgba(255,127,80,0.4);
		}
		.btn-board:hover {
			background-color: #E06A3F;
			background-image: linear-gradient(to bottom, #FF997A, #E06A3F);
			box-shadow: 0 4px 8px rgba(255,127,80,0.5);
		}
		.button-container {
			display: flex;
			gap: 10px;
			margin-top: 30px;
		}
	</style>
</head>
<body>
	<div class="button-container">
		<a href="/board/list" class="btn-board">게시판으로 가기</a>
		<a href="/product/list" class="btn-board">상품 목록으로 가기</a>
	</div>
	
	<script>
		window.onload = function() {
			
			const urlParams = new URLSearchParams(window.location.search);
			
			if(urlParams.has('logout')) {
				
				alert('로그아웃이 완료되었습니다.');
			}
		};
	</script>
</body>
</html>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>