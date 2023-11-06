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
<!-- 썸머노트 -->
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<title>수정하기</title>
</head>
<body>
	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />
	<div class="mt-5">
		<div class="d-flex justify-content-center">
			<div class="card" style="width: 800px">
				<div class="card-body">
					<h3 class="card-title">글 수정</h3>
					<!-- 카테고리 -->
					<div class="input-group">
						<div class="input-group-prepend">
							<label class="input-group-text" style="font-size: 1.3rem"
								for="inputGroupSelect01">카테고리</label> <input
								type="text" value="${boardMenu.board_name }" readonly="readonly" />
						</div>
					</div>
				<form:form action="${root }/board/modify_pro?board_idx=${board_idx}" method="post"
					modelAttribute="modifyContent">
					<form:hidden path="board_idx" />
					<form:hidden path="content_idx" />
					<!-- 제목 -->
					<form:label path="title" class="my-3">제목</form:label>
					<form:input path="title" />
					<!-- 작성자 넘기기 (세션값) -->
					<form:input type="hidden" path="writer_idx" />
					<!-- 썸머노트 -->
					<form:textarea path="content"></form:textarea>
					<form:errors path='content' style='color:red' />
					<div>
					<a class="btn btn-danger"
						href="${root }/board/view?board_idx=${board_idx}&page=${page}&content_idx=${content_idx}">취소</a>
					<form:button class="btn btn-info">작성완료</form:button>
					</div>
				</form:form>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#content").summernote({
				height : 400,
			});
		});
	</script>

	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>