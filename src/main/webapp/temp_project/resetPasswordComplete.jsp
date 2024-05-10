<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
</head>
<style>
.idVerification-container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
	margin-top: 100px;
	text-align: center;
}

#logIn {
	font-size: 20px;
	height: 50px;
	color: white;
	background-color: black;
	border: none;
	border-radius: 0;
	width: 300px;
}

#ment {
	color: dimgray;
	font-size: 16px;
}

#sealCheck {
	font-size: 25px;
}
</style>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="idVerification-container">
		<i class="ph ph-seal-check" id="sealCheck"></i>
		<h4 class="pt-3 mb-2">비밀번호 재설정이 완료되었습니다.</h4>
		<div id="ment" class="mb-5">변경된 비밀번호로 로그인해 주세요.</div>
		<div>
			<button type="submit" class="btn btn-custom btn-lg" id="logIn">로그인</button>
		</div>
	</div>
</body>
</html>
