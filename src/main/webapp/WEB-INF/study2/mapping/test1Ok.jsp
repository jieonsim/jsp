<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String msg = request.getParameter("msg")==null ? "공백" : request.getParameter("msg");
	pageContext.setAttribute("msg", msg);
%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>이 곳은 test.jsp(/WEB-INF/study2/mapping)입니다.</h2>
	<hr>
	<div>전송 메시지 : ${msg}</div>
	<div>
		<form name="myform" method="post" action="testOk.jsp">
		
		</form>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>