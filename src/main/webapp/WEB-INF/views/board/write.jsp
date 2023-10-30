<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      rel="stylesheet"
    />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link
      href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<title>작성하기</title>
</head>
<body>
<!-- nav바 -->
<c:import url="/WEB-INF/views/include/nav.jsp" />
    <div class="mt-5">
      <div class="d-flex justify-content-center">
        <div class="card" style="width: 800px">
          <div class="card-body">
            <h3 class="card-title">글 작성</h3>
            <form method="post">
              <!-- 카테고리 -->
              <div class="input-group">
                <div class="input-group-prepend">
                  <label
                    class="input-group-text"
                    style="font-size: 1.3rem"
                    for="inputGroupSelect01"
                    >카테고리</label
                  >
                  <select
                    class="custom-select"
                    id="inputGroupSelect01"
                    style="font-size: 1.3rem"
                  >
                    <option selected>카테고리선택...</option>
                    <option value="1">자유게시판</option>
                    <option value="2">유머게시판</option>
                    <option value="3">반려동물자랑</option>
                  </select>
                </div>
              </div>
              <!-- 제목 -->
              <label class="my-3">제목</label>
              <input
                type="text"
                name="title"
                placeholder="제목을 입력하세요."
              />
              <!-- 작성자 넘기기 (세션값) -->
              <input type="hidden" />
              <!-- 썸머노트 -->
              <textarea name="editordata" id="content"></textarea>
              <a
                class="btn btn-danger"
                href="javascript:window.history.back()
            "
                >취소</a
              >
              <input type="submit" class="btn btn-info" value="작성완료" />
            </form>
          </div>
        </div>
      </div>
    </div>
    <script>
      $(document).ready(function () {
        $("#content").summernote({
          height: 400,
        });
      });
    </script>
    
<!-- footer -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>