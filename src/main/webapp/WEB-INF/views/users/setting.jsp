<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
<title>회원수정</title>
</head>
<body>

	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />
	<!-- 마이페이지/네브바? -->
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-6">마이페이지</h1>
		</div>
	</div>
	<!-- 브레드크럼 -->
	<div class="container">
		<nav aria-label="breadcrumb" class="d-flex justify-content-center">
			<ol class="breadcrumb bg-white">
				<li class="breadcrumb-item"><a href="${root }/users/setting">회원정보</a></li>
				<li class="breadcrumb-item"><a href="${root }/mypage/info">공지사항</a></li>
				<li class="breadcrumb-item"><a href="${root }/mypage/qna">QnA</a></li>
			</ol>
		</nav>
	</div>

	<!-- 내용 -->
	<div class="container mt-5 mb-5">
		<div class="d-flex justify-content-center">
			<div class="card" style="width: 800px">
				<h5 class="card-header">회원정보</h5>
				<div class="card-body">
					<form:form action="${root}/users/setting_pro"
						modelAttribute="modifyUser">
						<form:hidden path="userno" />
						<div class="d-flex justify-content-start mb-2">
							<form:label path="id">아이디</form:label>
							<form:input path="id" readonly="readonly" />
						</div>
						<div class="d-flex justify-content-start mb-2">
							<form:label path="name">이름</form:label>
							<form:input path="name" readonly="readonly" />
						</div>
						<div class="d-flex justify-content-start mb-2">
							<form:label path="pw">비밀번호</form:label>
							<form:input path="pw" />
							<form:errors path="pw" style="color:red" />
						</div>
						<div class="d-flex justify-content-start mb-2">
							<form:label path="email">E-mail</form:label>
							<form:input path="email" />
						</div>
						<div class="d-flex justify-content-start mb-2">
							<form:label path="blog">Blog주소</form:label>
							<form:input path="blog" />
						</div>
						<hr />
						<div class="d-flex justify-content-center">
							<a href="${root }/users/delete?userno=${userno}"
								class="btn btn-danger">회원탈퇴</a>
							<div class="mx-2"></div>
							<form:button class="btn btn-success">회원정보변경</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>