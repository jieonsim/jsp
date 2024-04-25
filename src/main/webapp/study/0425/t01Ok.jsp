<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 인코딩 시 한글 깨짐 방지 -->
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t01Ok.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<h3>전송된 값</h3>
	<hr/>
	<div class="mb-3">
		이름 : <%=request.getParameter("name") %>
	</div>
	<div class="mb-3">
		나이 : <%=request.getParameter("age") %>
	</div>
	<hr/>
	<div>
		<a href="t01.jsp" class="btn btn-warning">돌아가기</a>
	</div>
</div>
</body>
</html>