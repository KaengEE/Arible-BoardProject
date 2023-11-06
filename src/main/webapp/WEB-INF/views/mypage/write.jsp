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

<title>작성하기</title>
</head>
<body>
	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />
	<div class="mt-5">
		<div class="d-flex justify-content-center">
			<div class="card" style="width: 800px">
				<div class="card-body">
					<h3 class="card-title">공지사항 작성</h3>

				<form:form action='${root }/mypage/write_pro' enctype="multipart/form-data" modelAttribute="writeInfo">
					<div class="form-group">
						<form:label path="info_title">제목</form:label>
						<form:input path="info_title" class='form-control'/>
						<form:errors path='info_title' style='color:red' />
					</div>
					<div class="form-group">
						<form:label path="info_content">내용</form:label>
						<form:textarea path="info_content" class="form-control" rows="10" style="resize:none"/>
						<form:errors path='info_content' style='color:red'/>
					</div>
					<div class="form-group">
						<form:label path="upload_file">첨부 이미지</form:label>
						<form:input type='file' path='upload_file' class="form-control" accept="image/*"/>
					</div>
					<div class="form-group">
						<div class="text-right">
							<form:button class='btn btn-primary'>작성하기</form:button>
						</div>
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