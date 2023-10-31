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
    <!-- 점보트론 -->
    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <h4 class="display-4">인기글</h4>
        <p class="lead">블라블라 커뮤니티의 인기글을 한눈에!</p>
      </div>
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
              <tr>
                <th scope="row">4</th>
                <td>제목1</td>
                <td>작성자1</td>
                <td>10</td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>제목1</td>
                <td>작성자1</td>
                <td>10</td>
              </tr>
              <tr>
                <th scope="row">6</th>
                <td>제목1</td>
                <td>작성자1</td>
                <td>10</td>
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

    <!-- 검색 -->
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
    
    
<!-- footer -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>