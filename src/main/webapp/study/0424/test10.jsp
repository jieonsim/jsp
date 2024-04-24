<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test10.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<h2>test10</h2>
	<p><a href="/javaclass/T10" class="btn btn-success">Test10 서블릿 호출</a></p>
	<p><a href="/javaclass/T10?su=100" class="btn btn-success">1~100까지의 합</a></p>
						<!--파라미터에 값을 넘기려고 할 때는 ?변수=값-->
</div>
</body>
</html>