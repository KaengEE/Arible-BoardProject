<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
<title>메인페이지</title>
</head>
<body>
	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />
	<!-- 점보트론 -->
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h4 class="display-4">전체글</h4>
			<p class="lead">전체글에서 지금 <span>HOT</span>한 글</p>
		</div>
	</div>

	<!-- 게시글 카드 -->
	<div class="d-flex justify-content-center">
		<div class="card" style="width: 50rem">
			<div class="card-body">
				<h5 class="card-title">인기글</h5>

				<!-- 게시글 table (인기순) -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">no</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">조회수</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="obj" items="${list }">
							<tr>
								<th scope="row">${obj.content_idx }</th>
								<td><a
									href="${root }/board/view?board_idx=${board_idx }&page=${page }&content_idx=${obj.content_idx}"
									style="color: black">${obj.title }</a></td>
								<td>${obj.name }</td>
								<td>${obj.count}</td>
								<td>${obj.regDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<c:choose>
						<c:when test="${pageBean.prevPage <= 0 }">
							<li class="page-item disabled"><a href="#" class="page-link">이전</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a
								href="${root }/board/main?board_idx=${board_idx}&page=${pageBean.prevPage}"
								class="page-link">이전</a></li>
						</c:otherwise>
					</c:choose>

					<c:forEach var="idx" begin="${pageBean.min}" end="${pageBean.max}">
						<c:choose>
							<c:when test="${idx == pageBean.currentPage}">
								<li class="page-item active"><a
									href="${root }/board/popular?page=${idx}"
									class="page-link">${idx }</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="${root }/board/popular?&page=${idx}"
									class="page-link">${idx }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:choose>
						<c:when test="${pageBean.max >= pageBean.pageCnt }">
							<li class="page-item disabled"><a href="#" class="page-link">다음</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a
								href="${root }/board/popular?page=${pageBean.nextPage}"
								class="page-link">다음</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</div>
	</div>



	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>