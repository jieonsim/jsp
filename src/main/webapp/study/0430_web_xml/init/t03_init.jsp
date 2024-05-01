<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t03_init.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>이 곳은 init(Servelt)에서 보낸 값을 찍어봅니다.</h2>
	<p>
		회사명 : ${sLogoName}<br>
		홈페이지 주소 : <a href="${sHomeAddress}">${sHomeAddress}</a>
	</p>
	<hr>
	<p>
		<a href="${ctp}/j0430/T03_init" class="btn btn-success mb-1">컨트롤러 다녀오기</a>
	</p>
	<p>
		<a href="${ctp}/j0430/T03_sessionOUT" class="btn btn-primary">세션 끊기</a>
	</p>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>