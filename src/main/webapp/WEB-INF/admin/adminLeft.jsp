<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>adminLeft.jsp</title>
	<jsp:include page="/include/bs4.jsp" />
</head>
<style>
a {
	color: black;
}
a:hover {
  text-decoration-line: none;
  color: cornflowerblue;
  font-weight: bolder;
}

h5 {
  font-weight: bold;
}
</style>
<body>
<div class="text-center mt-5">
	<h5><a href="AdminMain.ad" target="_top">관리자 메뉴</a></h5>
	<hr>
	<p><a href="${ctp}/main" target="_top">홈</a></p>
	<hr>
	<div>
		<h5>방명록</h5>
		<div><a href="${ctp}/GuestList" target="adminContent">방명록 리스트</a></div>
	</div>
	<hr>
	<div>
		<h5>게시판</h5>
		<div><a href="BoardList.bo" target="adminContent">게시판 리스트</a></div>
	</div>
	<hr>
	<div>
		<h5>회원관리</h5>
		<div><a href="MemberList.ad" target="adminContent">회원 리스트</a></div>
		<div><a href="#" target="adminContent">신고 리스트</a></div>
	</div>
	<hr>
</div>
</body>
</html>