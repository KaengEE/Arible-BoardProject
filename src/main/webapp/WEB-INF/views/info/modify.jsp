<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>공지사항</title>

<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
</head>
<body>
	<!-- nav바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp" />

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<form:form action="${root }/info/modify_pro" modelAttribute="modifyInfo" enctype="multipart/form-data">
						<div class="card-body">
							<div class="form-group">
								<form:hidden path="info_idx" />
								<form:label path="name">작성자</form:label>
								<form:input path="name"  disabled="disabled" class="form-control" />
							</div>
							<div class="form-group">
								<form:label path="regDate">작성날짜</form:label>
								<form:input path="regDate" disabled="disabled" class="form-control"  />
							</div>
							<div class="form-group">
								<form:label path="info_title">제목</form:label>
								<form:input path="info_title" class="form-control" />
							</div>
							<div class="form-group">
								<form:label path="info_content">내용</form:label>
								<form:textarea path="info_content" class="form-control" rows="10" style="resize: none"></form:textarea>
							</div>
							<div class="form-group">
								<form:label path="info_file">첨부 이미지</form:label>
								<!-- 만약 이미지가 있으면 파일명 표시하고 새로 첨부하지 않을 경우 히든으로 파일명 전달  -->
								<c:if test="${modifyInfo.info_file != null }">
									<img src="${root }/upload/${modifyInfo.info_file}" width="100%" />
									<form:hidden path="info_file" value="${modifyInfo.info_file}" />
								</c:if>
								<input name="upload_file" type='file' class="form-control"
									accept="image/*" />
							</div>
							<div class="form-group">
								<div class="text-right">
									<a href="${root }/mypage/view?info_idx=${modifyInfo.info_idx}"
										class="btn btn-danger">취소</a>
									<form:button class="btn btn-success">수정</form:button>
								</div>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
