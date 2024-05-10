<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
<style>
.signUpComplete-container {
	max-width: 400px;
	margin: auto;
	margin-top: 100px;
	padding: 20px;
	text-align: center;
}

#sealCheck {
	font-size: 25px;
}

#logIn {
	font-size: 20px;
	height: 50px;
	color: white;
	background-color: black;
	border: none;
	border-radius: 0;
	width: 300px;
	box-shadow: none;
}

#ment {
	color: dimgray;
	font-size: 16px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="signUpComplete-container">
		<i class="ph ph-seal-check" id="sealCheck"></i>
		<h4 class="pt-3 mb-2">회원가입이 완료되었습니다.</h4>
		<div id="ment" class="mb-5">로그인 후 이용해 주세요.</div>
		<div>
			<button type="submit" class="btn btn-custom btn-lg" id="logIn">로그인</button>
		</div>
	</div>
</body>
</html>