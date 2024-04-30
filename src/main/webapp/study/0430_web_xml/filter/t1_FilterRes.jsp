<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t1_FilterRes.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>이 곳은 t1_FilterRes.jsp</h2>
	<div>
		메세지 : ${msg}
	</div>
	<hr>
	<div><a href="${ctp}/study/0430_web_xml/filter/t1_Filter.jsp" class="btn btn-success">돌아가기</a></div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>