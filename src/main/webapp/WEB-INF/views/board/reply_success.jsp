<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<script>
	alert('댓글 작성이 완료되었습니다')
	location.href = "${root}board/view?board_idx=${board_idx}&content_idx=${content_idx}"
</script>