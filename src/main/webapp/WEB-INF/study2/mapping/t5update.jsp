<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t5update.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<form name="update">
		<input type="text" placeholder="아이디를 입력하세요." />
		<button class="btn btn-success">수정하기</button>
	</form>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>