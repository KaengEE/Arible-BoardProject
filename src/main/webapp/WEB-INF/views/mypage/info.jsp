<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />

<title>Insert title here</title>
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

    <!-- 게시글 카드 -->
    <div class="d-flex justify-content-center">
      <div class="card" style="width: 50rem">
        <div class="card-body">
          <h5 class="card-title">공지사항</h5>
          <!-- 공지사항 목록 -->
          <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">no</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">작성일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td><a href="view.html" style="color: black">제목1</a></td>
                <td>작성자1</td>
                <td>23-10-15</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>제목1</td>
                <td>작성자1</td>
                <td>23-10-15</td>
              </tr>
            </tbody>
          </table>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
            <li class="page-item disabled">
              <a class="page-link">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </nav>
        <div class="d-flex justify-content-end my-3 mr-5">
          <a class="btn btn-info" href="/board/write">글쓰기</a>
        </div>
      </div>
    </div>

</body>
</html>