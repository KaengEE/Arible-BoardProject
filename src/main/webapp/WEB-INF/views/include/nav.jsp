<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- 네브바 -->
    <nav
      class="navbar navbar-expand-lg navbar-light"
      style="background-color: #e3f2fd"
    >
      <a class="navbar-brand" href="/">홈</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/"
              >Home <span class="sr-only">(current)</span></a
            >
          </li>
		    <c:forEach var="menu" items="${topMenuList}">
		      <li class="nav-item">
		        <a href="${root}/board/main?board_idx=${menu.board_idx}" class="nav-link">${menu.board_name }</a>
		      </li>
		     </c:forEach>
          </ul>
          <!-- 드롭다운 -->
          <ul class="navbar-nav mr-2">
          <li class="nav-item dropdown px-5">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-toggle="dropdown"
              aria-expanded="false"
            >
              🔒🔒            
            </a>
            <div class="dropdown-menu">
            <c:choose>
            <c:when test="${sessionUser.userLogin == true }">
            <!-- 로그인 되어있을때 -->
              <a class="dropdown-item" href="${root }/users/setting">마이페이지</a>
              <a class="dropdown-item" href="${root }/users/logout">로그아웃</a>
              </c:when>
              <c:otherwise>
              <a class="dropdown-item" href="${root }/users/login">로그인</a>
              <a class="dropdown-item" href="${root }/users/join">회원가입</a>
              </c:otherwise>
              </c:choose>
            </div>
          </li>
        </ul>
      </div>
    </nav>
