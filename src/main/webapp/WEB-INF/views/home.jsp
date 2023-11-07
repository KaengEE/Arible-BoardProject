<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="root" value="${pageContext.request.contextPath }" />

<html>
<head>
<title>Home</title>
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
</head>
<body>
	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />

	<!-- 점보트론 -->
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Arible Community</h1>
			<p class="lead">
				아리블 커뮤니티에 오신것을 환영합니다! <br> 블로그를 홍보하고 블로그 꿀팁을 알아가세요!
			</p>
		</div>
	</div>



	<!-- 게시글 카드 -->
	<div class="d-flex justify-content-center">
		<div class="card" style="width: 50rem">
			<div class="card-body">
				<h5 class="card-title">인기글</h5>
				<h6 class="card-subtitle mb-2 text-muted">
					지금 <span style="color: red">Hot</span>한 주제
				</h6>
				<!-- 게시글 table (인기순) -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">no</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="obj" items="${pList }">
							<tr>
								<th scope="row">${obj.content_idx }</th>
								<td><a
									href="${root }/board/main?board_idx=${obj.board_idx}&content_idx=${obj.content_idx}"
									style="color: black">${obj.title }</a></td>
								<td>${obj.name }</td>
								<td>${obj.count }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="/board/popular" class="card-link d-flex flex-row-reverse">인기글
					더보기</a>
			</div>
		</div>
	</div>

	<!-- 공지사항 -->
	<!-- 게시글 카드 -->
	<div class="d-flex justify-content-center" style="margin: 50px">
		<div class="card" style="width: 50rem">
			<div class="card-body">
				<h5 class="card-title">공지사항</h5>
				<h6 class="card-subtitle mb-2 text-muted">공지사항 확인하세요!</h6>
				<!-- 공지사항 최신순3개 출력 -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">no</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="obj" items="${newInfo }">
							<tr>
								<th scope="row">${obj.info_idx }</th>
								<td><a href="${root }/mypage/view?info_idx=${obj.info_idx}"
									style="color: black">${obj.info_title }</a></td>
								<td>${obj.name }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="${root }/mypage/info"
					class="card-link d-flex flex-row-reverse">공지사항
					더보기</a>
			</div>
		</div>
	</div>

	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
