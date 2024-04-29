<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t05_storageTest.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>서블릿에서 세션/어플리케이션 처리하기</h2>
	<p><a href="<%=request.getContextPath()%>/j0427/T05_storageTestOk?mid=admin" class="btn btn-success">서버 스토리지 처리</a>
	<!-- 이엘로 바꾸는 법 -->
	<a href="${pageContext.request.contextPath}/j0427/T05_storageTestClear" class="btn btn-danger">서버 스토리지 삭제</a>
	</p>
	<hr>
	<p>세션 아이디 : ${sMid}</p>
	<p>어플리케이션 아이디 : ${aMid}</p>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>