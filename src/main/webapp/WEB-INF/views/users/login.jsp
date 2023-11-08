<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- cdn -->
<c:import url="/WEB-INF/views/include/cdn.jsp" />
<title>로그인화면</title>
</head>
<body>
<!-- nav바 -->
<c:import url="/WEB-INF/views/include/nav.jsp" />
    <!-- 로그인폼 -->
    <div class="container mt-5 mb-5">
      <div class="d-flex justify-content-center">
        <div class="card">
          <h5 class="card-header">로그인</h5>
          <div class="card-body">
          <c:if test="${fail == true }">
		       <div class="alert alert-danger">
			       <h3>로그인 실패</h3>
			       <p>아이디 또는 비밀번호를 확인해주세요</p>
		       </div>
		  </c:if>
            <form:form action="${root }/users/login_pro" style="width: 300px" modelAttribute="loginUser">
              <div class="form-group">
                <form:label path="id">아이디</form:label>
                <form:input path="id" class="form-control"/>
                <form:errors path="id" style="color:red"/>
              </div>
              <div class="form-group">
                <form:label path="pw" type="password">비밀번호</form:label>
                <form:input path="pw" class="form-control" type="password"/>
                <form:errors path="pw" style="color:red"/>
              </div>
              <div class="form-group form-check">
                <p>아직 회원이 아니신가요? <a href="${root }/users/join">회원가입</a></p>
              </div>
              <div class="d-flex justify-content-center">
              <button type="submit" class="btn btn-primary">로그인</button>
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