<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test11.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<h2>test11.jsp</h2>
	<form name="myform" method="post" action="/javaclass/T11">
		<div>첫번째 수
			<input type="number" name="su1" value="100" class="form-control"/>
			<!-- name 을 -->
		</div>
		<div>두번째 수
			<input type="number" name="su2" value="100" class="form-control"/>
		</div>
		<p><input type="submit" value="계산" class="btn btn-success" /></p>	
		<!-- 바로 보낼 땐 button이 아니라 submit으로 해야함 -->
	</form>
</div>
</body>
</html>