<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test5update.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
<h3>회원 정보 수정 페이지</h3>
		<div>
			<input type="text" placeholder="수정할 아이디를 입력하세요." />
		</div>
		<div>
			<a href="updateOk.do5" class="btn btn-success btn-sm">수정하기</a>
			<a href="test5.do5" class="btn btn-primary btn-sm">돌아가기</a>
		</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>