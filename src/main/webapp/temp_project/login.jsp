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
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container mt-5 pt-3">
		<div class="login-container"
			style="max-width: 400px; margin: auto; padding: 20px; text-align: center;">
			<h4 class="mb-5" style="font-weight: bold">로그인</h4>
			<form class="login-form" method="post" action="">
				<div class="form-group row">
					<div class="col">
						<input type="text" class="form-control" name="mid"
							placeholder="아이디를 입력해주세요." <%-- value="<%=mid %>" --%> autofocus required />
					</div>
				</div>
				<div class="form-group row">
					<div class="col">
						<input type="password" class="form-control" name="password"
							placeholder="비밀번호를 입력해주세요." required />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-10 offset-sm-2 text-right mb-3">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="true"
								name="rememberId" <%-- <%=(!mid.isEmpty() ? "checked" : "")%> --%>>
							<label class="form-check-label" for="rememberId">아이디 저장</label>
						</div>
					</div>
				</div>
				<!-- <div class="form-group row"> -->
					<!-- <div class="col-sm-10 offset-sm-2 text-left mb-3"> -->
					<div class="col">
						<input type="button" class="btn btn-custom btn-sm" value="아이디 찾기" style="font-size: small; color: gray;" />
						<span id="divisionLine" style="font-size: small; color: gray;">I</span>
						<input type="button" class="btn btn-custom btn-sm" value="비밀번호 찾기"  style="font-size: small; color: gray;"/>
					</div>
				<!-- </div> -->
				<div class="form-group text-center">
					<div>
						<button type="submit" class="btn btn-dark btn-lg form-control mb-3" id="logIn" style="background-color: #7bc46e; border: none">로그인</button>
					</div>
					<div>
						<button type="button" class="btn btn-custom btn-lg form-control" id="logOut" style="background-color: white; border: 1px solid #8fd685; color: #7bc46e;">회원가입</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>