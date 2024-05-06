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

#goToLogin {
	background-color: black;
	color: white;
	border-radius: 0;
}

#goToLogin:focus {
	border-color: black;
	box-shadow: none;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="signUpComplete-container">
		<i class="ph ph-seal-check" id="sealCheck"></i>
		<h3 class="pt-3 mb-5">회원가입이 완료되었습니다!</h3>
		<div>
			<button type="button" class="btn btn-lg btn-custom" id="goToLogin">로그인 하러가기</button>
		</div>
	</div>
</body>
</html>