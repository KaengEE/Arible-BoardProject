<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
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
            <div class="card-body">
              <div class="form-group">
                <label for="name">작성자</label>
                <input
                  type="text"
                  id="name"
                  name="name"
                  class="form-control"
                  value="${content.name}"
                  disabled="disabled"
                />
              </div>
              <div class="form-group">
                <label for="regDate">작성날짜</label>
                <input
                  type="text"
                  id="regDate"
                  name="regDate"
                  class="form-control"
                  value="${content.regDate}"
                  disabled="disabled"
                />
              </div>
              <div class="form-group">
                <label for="info_title">제목</label>
                <input
                  type="text"
                  id="info_title"
                  name="info_title"
                  class="form-control"
                  value="${content.info_title}"
                  disabled="disabled"
                />
              </div>
              <div class="form-group">
                <label for="info_content">내용</label>
                <textarea
                  id="info_content"
                  name="info_content"
                  class="form-control"
                  rows="10"
                  style="resize: none"
                  disabled="disabled"
                >${content.info_content}
			   </textarea>
              </div>
              <c:if test="${content.info_file != null }">
	              <div class="form-group">
	                <label for="info_file">첨부 이미지</label>
	                <img src="${root }/upload/${content.info_file}" width="100%" />
	              </div>
              </c:if>
              <div class="form-group">
                <div class="text-right">
                  <a href="${root }/mypage/info" class="btn btn-primary">목록보기</a>
                  <c:if test="${sessionUser.userno == content.info_writer_idx }">
	                  <a href="${root }/info/modify?info_idx=${info_idx}" class="btn btn-info">수정하기</a>
	                  <a href="${root }/info/delete?info_idx=${info_idx}" class="btn btn-danger">삭제하기</a>
                  </c:if>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3"></div>
      </div>
    </div>

	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
  </body>
</html>
