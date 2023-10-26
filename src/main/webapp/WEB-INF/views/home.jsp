<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world! ${userId} 
</h1>

<!-- 세션에 저장된 아이디 -->
<a href="/users/login">로그인</a>
<a href="/users/logout">로그아웃</a>
</body>
</html>
