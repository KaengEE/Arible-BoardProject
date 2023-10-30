<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
<title>회원수정</title>
</head>
  <style>
    .breadcrumb-item {
      font-weight: bold;
    }
    .breadcrumb-item a {
      color: black;
    }

    .breadcrumb-item a:hover {
      color: gray;
      font-size: 1.05rem;
    }
  </style>
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
          <li class="breadcrumb-item"><a href="#">회원정보</a></li>
          <li class="breadcrumb-item"><a href="#">공지사항</a></li>
          <li class="breadcrumb-item"><a href="#">QnA</a></li>
          <li class="breadcrumb-item"><a href="#">회원탈퇴</a></li>
        </ol>
      </nav>
    </div>

    <!-- 내용 -->
    <div class="container mt-5 mb-5">
      <div class="d-flex justify-content-center">
        <div class="card" style="width: 800px">
          <h5 class="card-header">회원정보</h5>
          <div class="card-body">
            <div>
              <div class="d-flex justify-content-center mb-2">
                <label>아이디</label>
                <input type="text" readonly="readonly" value="test" />
              </div>
              <div class="d-flex justify-content-center mb-2">
                <label>이름</label>
                <input type="text" readonly="readonly" value="홍길동" />
              </div>
              <div class="d-flex justify-content-center mb-2">
                <label>전화번호</label>
                <input type="text" readonly="readonly" value="010-1111-2222" />
              </div>
              <div class="d-flex justify-content-center mb-2">
                <label>E-mail</label>
                <input
                  type="email"
                  readonly="readonly"
                  value="test@naver.com"
                />
              </div>
              <div class="d-flex justify-content-center mb-2">
                <label>Blog주소</label>
                <input type="text" readonly="readonly" value="bolg.naver.com" />
              </div>
              <hr />
              <!-- 개인정보 뭐시기.. -->
              <div>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Reiciendis, minus neque necessitatibus blanditiis dicta sapiente
                saepe voluptatibus tempora quos repellat, consequatur voluptas
                dolore perferendis. Ipsam fugiat asperiores rem harum quisquam.
              </div>
              <hr />
            </div>
            <div class="d-flex justify-content-center">
              <a href="#" class="btn btn-success">회원정보변경</a>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>