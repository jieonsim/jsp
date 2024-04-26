<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>내가 만든 쿠키</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>쿠키 연습 메인 메뉴</h2>
	<hr/>
	<div class="row">
		<div><a href="t01_cookiesSave.jsp" class="btn btn-success mr-3">쿠키저장</a></div>
		<div><a href="t01_cookiesCheck.jsp" class="btn btn-primary mr-3">쿠키확인</a></div>
		<div><a href="t01_cookiesAllDelete.jsp" class="btn btn-danger mr-3">전체쿠키삭제</a></div>
		<div><a href="t01_cookiesPwdDelete.jsp" class="btn btn-warning mr-3">비밀번호쿠키삭제</a></div>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>