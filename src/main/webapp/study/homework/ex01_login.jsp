<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String mid = "";
String error = request.getParameter("error");

Cookie[] cookies = request.getCookies();
if (cookies != null) {
    for (Cookie c : cookies) {
        if (c.getName().equals("cMid")) {
            mid = c.getValue();
            break;
        }
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<script>
	'use strict';

	function register() {
		alert('준비 중입니다.');
	}
	
	window.onload = function() {
	    if ('<%= error %>' === 'true') {
			alert('아이디 또는 비밀번호가 일치하지 않습니다. 다시 로그인해주세요.');
	    }
	};
</script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쿠키로 아이디 저장 연습</title>
<%@ include file="/include/bs4.jsp"%>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<jsp:include page="/include/nav.jsp" />
	<div class="container mt-5">
		<div class="login-container"
			style="max-width: 600px; margin: auto; padding: 20px;">
			<form class="login-form" method="post" action="ex01_loginOk.jsp">
				<div class="form-group row">
					<label for="mid" class="col-sm-2 col-form-label">아이디</label>
					<div class="col-sm-10">
						<input type="text" class="form-control mb-3" name="mid"
							placeholder="아이디를 입력해주세요." value="<%= mid %>" autofocus required />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-10 offset-sm-2 text-right">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="true"
								name="rememberId" <%= (!mid.isEmpty() ? "checked" : "") %>> <label class="form-check-label"
								for="rememberId">아이디 저장</label>
						</div>
					</div>
				</div>
				<div class="form-group row">
					<label for="password" class="col-sm-2 col-form label">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" class="form-control mb-3" name="password"
							placeholder="비밀번호를 입력해주세요." required />
					</div>
				</div>
				<div class="form-group row text-center">
					<div class="col">
						<button type="submit" class="btn btn-dark">로그인</button>
					</div>
					<div class="col">
						<button type="button" class="btn btn-dark"
							onclick="location.reload()">다시입력</button>
					</div>
					<div class="col">
						<button type="button" class="btn btn-dark" onclick="register()">회원가입</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>