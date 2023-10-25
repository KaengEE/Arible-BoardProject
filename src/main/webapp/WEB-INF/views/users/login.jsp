<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
</head>
<body>
<div>
<h1>로그인</h1>
<form action="/users/login" method="post">
	<label>아이디</label><input type="text" name="id" />
	<label>비밀번호</label><input type="password" name="pw" />
	<button type="submit">로그인</button>
</form>
<p>아직회원이 아니신가요?</p>
<a href="/users/join">회원가입</a>
</div>

</body>
</html>