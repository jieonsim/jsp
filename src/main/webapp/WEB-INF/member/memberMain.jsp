<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file = "/include/certification.jsp"%> --%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>memberMain.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>회원 전용 방</h2>
	<hr>
	<!-- 실시간 채팅방(DB) -->
	<hr>
	<div>
  		<p>현재 <font color="blue"><b>${sNickName}</b></font> 님이 로그인 중이십니다.</p>
		<p>총 방문 횟수 : _ 회</p>
		<p>오늘 방문 횟수 : _ 회</p>
		<p>총 보유 포인트 : _ 점</p>
	</div>
	<hr>
	<div>
		<h5>활동 내역</h5>
		<p>방명록에 올린 글 수 : _건</p>
		<p>게시판에 올린 글 수 : _건</p>
		<p>자료실에 올린 글 수 : _건</p>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>