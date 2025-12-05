<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<style>
		body {
			font-family:sans-serif;
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
			background-color: #f4f4f4;
		}
		
		.login-container {
			background-color: #fff;
			padding: 30px;
			border-radius: 8px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			width: 300px;
			text-align: center;
		}
		
		h2 {
			margin-bottom: 20px;
			color: #333;
		}
		
		.form-group {
			margin-bottom: 15px;
			text-align: left;
		}
		
		label {
			display: block;
			margin-bottom: 5px;
			color: #555;
			font-size: 0.9em;
		}
		
		input[type="text"],
		input[type="password"] {
			width: calc(100% - 12px);
			padding: 10px;
			border: 1px solid #ddd;
			border-radius: 4px;
			box-sizing: border-box;
			font-size: 1em;
		}
		
		button[type="submit"] {
			background-color: #007bff;
			color: white;
			padding: 10px 15px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			font-size: 1em;
			width: 100%;
		}
		
		button[type="submit"]:hover {
			background-color: #0056b3;
		}
	</style>
</head>
<body>
	<div class="login-container">
		<h2>로그인</h2>
		<form method="post">
			<div class="form-group">
				<label for="username">사용자 이름:</label>
				<input type="text" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="password">비밀번호:</label>
				<input type="password" id="password" name="password" required>
			</div>
			<button type="submit">로그인</button>
		</form>
	</div>
</body>
</html>