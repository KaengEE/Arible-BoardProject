<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
<title>상세보기</title>
</head>
<body>
<!-- nav바 -->
<c:import url="/WEB-INF/views/include/nav.jsp" />

<!-- footer -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
    <div class="container mt-5 mb-5">
      <div class="d-flex justify-content-center">
        <div class="card" style="width: 800px">
          <h5 class="card-header">[${boardMenu.board_name }] <span>${content.title }</span></h5>
          <div class="card-body">
            <div>
              <p>작성자: ${content.name }</p>
              <hr />
              <!-- 썸머노트 DB 가져오기 -->
              <div>
				${content.content}
              </div>
            </div>
            <hr />
            <!-- 로그인아이디와 작성아이디가 동일해야 보임 -->
            <div class="d-flex justify-content-end">
              <c:if test="${content.writer_idx == sessionUser.userno }">
	              <a class="btn btn-success mr-1 btn-m" href="${root }/board/modify?board_idx=${board_idx}&content_idx=${content_idx}">수정</a>
	              <a class="btn btn-danger" href="${root }/board/delete?board_idx=${board_idx}&content_idx=${content_idx}">삭제</a>
              </c:if>
            </div>
            
            
            <!-- 댓글리스트 -->
            <b>댓글</b>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                좋은글 감사합니다!
                <div class="d-flex justify-content-end">
                  <span>작성자: 펭수</span>
                  <span>(2023-10-28)</span>
                  <div class="ml-3">
                  <!-- 댓글도 댓글쓴사람과 세션아이디 일치하는지에 따라 노출 -->
                    <a class="btn btn-info btn-sm" href="#">수정</a>
                    <a class="btn btn-danger btn-sm" href="#">삭제</a>

                  </div>
                </div>
              </li>
  
              <li class="list-group-item">
                좋은글 감사합니다!
                <div class="d-flex justify-content-end">
                  <span>작성자: 펭수</span>
                  <span>(2023-10-28)</span>
                  <div class="ml-3">
                    <button class="btn btn-info btn-sm">수정</button>
                    <button class="btn btn-danger btn-sm">삭제</button>
                  </div>
                </div>
              </li>
            </ul>
            
            
            <!-- 댓글작성 post 로 전송 -->
            <form action="reply/write" method="post">
              <div class="form-group">
                <div class="row d-flex justify-content-center">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">댓글작성</span>
                    </div>
                    <textarea
                      class="form-control"
                      aria-label="With textarea"
                    ></textarea>
                    <button type="submit" class="btn btn-primary btn-sm">
                      작성
                    </button>
                  </div>
                </div>
              </div>
            </form>
            <div class="d-flex justify-content-center">
              <a
                class="btn btn-primary mr-1 btn-m"
                href="${root }/board/main?board_idx=${board_idx}"
                >목록으로</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>


</body>
</html>