<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String tot = request.getParameter("tot");
	String su1 = request.getParameter("su1");
	String su2 = request.getParameter("su2");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test11Ok.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<p>연산 결과 : <%=su1%> ~ <%=su2%>까지의 합은 <%=tot %>입니다.</p>
	<p><a href="test11.jsp" class="btn btn-success">돌아가기</a></p>
	<!-- test11.jsp와 같은 경로이기 때문에 앞에 별도 경로 안붙이고도 실행 가능 -->
</div>
</body>
</html>