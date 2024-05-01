<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOCAL LENS</title>
<jsp:include page="bs4.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/temp_project/login.css">
<style>
.login-container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
	text-align: center;
}

.form-control {
	border-radius: 0;
}

#divisionLine {
	font-size: small;
	color: gray;
}

.link-small {
	font-size: small;
	color: gray;
	text-decoration: none;
}

#logIn {
	color: white;
	background-color: #7bc46e;
	border: none;
	border-radius: 0;
}

#logOut {
	background-color: white;
	border: 1px solid #8fd685;
	color: #7bc46e;
	border-radius: 0;
}

#rememberId {
	font-size: 14px;
	color: dimgrey;
}

input[type='checkbox'] {
    accent-color: #7bc46e;
}

@font-face {
    font-family: 'Pretendard-SemiBold';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-SemiBold.woff') format('woff');
    font-weight: 600;
    font-style: normal;
}

h4 {
	font-family: 'Pretendard-SemiBold';
}
</style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container mt-5 pt-3">
        <div class="login-container">
            <h4 class="mb-5">로그인</h4>
            <form class="login-form" method="post" action="">
                <div class="form-group row">
                    <div class="col">
                        <input type="text" class="form-control" name="id"
                            placeholder="아이디를 입력해주세요." <%-- value="<%=id %>" --%> autofocus required />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input type="password" class="form-control" name="password"
                            placeholder="비밀번호를 입력해주세요." required />
                    </div>
                    <div class="col-sm-10 offset-sm-2 text-right mt-2 mb-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="true"
                                name="rememberId" <%-- <%=(!mid.isEmpty() ? "checked" : "")%> --%>>
                            <label class="form-check-label" for="rememberId" id="rememberId">아이디 저장</label>
                        </div>
                    </div>
                </div>
<%--                 <div class="form-group row">
                    <div class="col-sm-10 offset-sm-2 text-right mb-2">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="true"
                                name="rememberId" <%=(!mid.isEmpty() ? "checked" : "")%>>
                            <label class="form-check-label" for="rememberId" id="rememberId">아이디 저장</label>
                        </div>
                    </div>
                </div> --%>
                <div class="col pb-1">
                    <a href="#" class="link-small">아이디 찾기</a>
                    <span id="divisionLine">I</span>
                    <a href="#" class="link-small">비밀번호 찾기</a>
                </div>
                <div class="form-group text-center">
                    <div>
                        <button type="submit" class="btn btn-custom btn-lg form-control mb-3" id="logIn">로그인</button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-custom btn-lg form-control" id="logOut">회원가입</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
