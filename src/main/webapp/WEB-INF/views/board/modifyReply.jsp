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

<title>수정하기</title>
</head>
<body>
	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />
	<div class="mt-5">
		<div class="d-flex justify-content-center">
			<div class="card" style="width: 800px">
				<div class="card-body">
					<h3 class="card-title">댓글 수정</h3>
				<form action="${root }/board/modifyReply" method="post"
					>
					<input type="hidden" name="reply_idx" value="${reply_idx}" />
					<input type="hidden" name="board_idx" value="${board_idx}" />
					<input type="hidden" name="content_idx" value="${content_idx}" />
					<label for="reply">댓글</label>
					<input type="text" name="reply" value="${modifyReply.reply}" class="col-5" />
					<div>
					<a class="btn btn-danger"
						href="${root }/board/view?board_idx=${board_idx}&content_idx=${content_idx}">취소</a>
					<button class="btn btn-info">작성완료</button>
					</div>
				</form>
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