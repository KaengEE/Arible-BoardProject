<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
<title>회원가입</title>
</head>
<body>
<!-- nav바 -->
<c:import url="/WEB-INF/views/include/nav.jsp" />
    <div class="container mt-5 mb-5">
      <div class="d-flex justify-content-center">
        <div class="card">
          <h5 class="card-header">회원가입</h5>
          <div class="card-body">
          <!-- 폼태그 -->
            <form:form action="/users/join_pro" method="post" modelAttribute="joinUser">
              <div class="form-group">
                <form:label path="name">이름</form:label>
                <form:input path="name" class="form-control"/>
                <form:errors path="name" style="color: red"/>               
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <form:label path="id">아이디</form:label>
                  <form:input path="id" class="form-control" />
                  <form:errors path="id" style="color: red"/> 
                </div>
                <div class="form-group col-md-6">
                  <form:label path="email">Email</form:label>
                  <form:input path="email" class="form-control" />
                  <form:errors path="email" style="color: red"/> 
                </div>
                </div>
                <div class="form-row">

                <div class="form-group col-md-6">
                  <form:label path="pw" >비밀번호</form:label>
                  <form:input
                    path="pw"
                    class="form-control"
                    type="password" 
                  />
                  <form:errors path="pw" style="color: red"/> 
                </div>
                 <div class="form-group col-md-6">
                  <form:label path="pw2" >비밀번호 확인</form:label>
                  <form:input
                    path="pw2"
                    class="form-control"
                     type="password"
                  />
                  <form:errors path="pw2" style="color: red"/> 
                </div>
                <c:if test="${not empty msg}">
				    <div class="error" style="color: red">${msg}</div>
				</c:if>

              </div>
              <div class="form-group">
                <form:label path="blog">Blog 주소</form:label>
                <form:input path="blog" class="form-control" />
                <form:errors path="blog" style="color: red"/>
              </div>
              <div class="form-group">
                <form:label path="age">나이</form:label>
                <div class="input-group">
                    <form:input
                      path="age"
                      class="form-control"
                    />
                    <form:errors path="age" style="color: red"/>
                </div>
              </div>
              <div class="text-center">
	              <a class="btn btn-danger" href="/users/login">취소</a>
	              <button type="submit" class="btn btn-primary">가입</button>
              </div>
            </form:form>
          </div>
        </div>
      </div>
    </div>
   <!-- footer -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>