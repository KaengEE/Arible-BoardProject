<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>
<form action="/users/join" method="post">
		<label>이름</label>
		<input type="text" name="name" /><br />
		
		<label>아이디</label>
		<input type="text" name="id" /><br />
		
		<label>비밀번호</label>
		<input type="password" name="pw" /><br />
		
		<label>이메일</label>
		<input type="email" name="email" /><br />
		
		<label>나이</label>
		<input type="text" name="age" /><br />
		
		<button type="submit">가입하기</button>
</form>
</body>
</html>