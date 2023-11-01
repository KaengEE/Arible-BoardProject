<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
        <h1 class="display-4">BlurBlur 커뮤니티</h1>
        <p class="lead">
          커뮤니티에 오신것을 환영합니다! 커뮤니티에 오신것을 환영합니다!
        </p>
      </div>
    </div>

    <div class="d-flex justify-content-center my-5">
      <form class="form-inline my-2 my-lg-0">
        <input
          class="form-control mr-sm-2"
          type="search"
          placeholder="Search"
          aria-label="Search"
        />
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
          Search
        </button>
      </form>
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
              <tr>
                <th scope="row">1</th>
                <td><a href="view.html" style="color: black">제목1</a></td>
                <td>작성자1</td>
                <td>10</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>제목1</td>
                <td>작성자1</td>
                <td>10</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>제목1</td>
                <td>작성자1</td>
                <td>10</td>
              </tr>
            </tbody>
          </table>
          <a href="/board/main" class="card-link d-flex flex-row-reverse"
            >인기글 더보기</a
          >
        </div>
      </div>
    </div>

    <!-- 게시글 + 이미지 -->
    <div class="mt-5">
      <h4 class="d-flex justify-content-center">추천 게시글</h4>
      <div class="row d-flex justify-content-center mt-3">
        <!-- 카드1 -->
        <div class="card mb-3 col-3">
          <img src="images/sample1.jpg" class="card-img-top pt-3" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              This is a wider card with supporting text below as a natural
              lead-in to additional content. This content is a little bit
              longer.
            </p>
            <a href="view.html" class="btn btn-primary">자세히</a>
          </div>
        </div>
        <!-- 카드2 -->
        <div class="card mb-3 col-3">
          <img src="images/sample1.jpg" class="card-img-top pt-3" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              This is a wider card with supporting text below as a natural
              lead-in to additional content. This content is a little bit
              longer.
            </p>
            <a href="#" class="btn btn-primary">자세히</a>
          </div>
        </div>
        <!-- 카드3 -->
        <div class="card mb-3 col-3">
          <img src="images/sample1.jpg" class="card-img-top pt-3" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              This is a wider card with supporting text below as a natural
              lead-in to additional content. This content is a little bit
              longer.
            </p>
            <a href="#" class="btn btn-primary" style="margin-bottom:100px;">자세히</a>
          </div>
        </div>
      </div>
    </div>
<!-- footer -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
