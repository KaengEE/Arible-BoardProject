<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />

<title>공지사항</title>
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

<div class="container">
	<h4 class="text-center mt-3">자주하는 질문</h4>
	<div class="accordion mt-5" id="accordionExample">
	<!-- 반복문 -->
	<c:forEach var="obj" items="${qnaList }">
	  <div class="card">
	    <div class="card-header" id="headingOne">
	      <h2 class="mb-0">
	        <button class="btn btn-link btn-block text-left" type="button" 
	        data-toggle="collapse" data-target="#collapse${obj.qna_idx }" aria-expanded="true" aria-controls="collapse${obj.qna_idx }">
	          ${obj.question}
	        </button>
	      </h2>
	    </div>
	
	    <div id="collapse${obj.qna_idx }" class="collapse" aria-labelledby="heading${obj.qna_idx }" data-parent="#accordionExample">
	      <div class="card-body">
	        ${obj.answer }
	      </div>
	    </div>
	  </div>
	  </c:forEach>
	</div>
</div>
</body>
</html>