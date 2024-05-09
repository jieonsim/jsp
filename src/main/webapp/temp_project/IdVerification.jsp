<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
<jsp:include page="login.css.jsp" />
</head>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container mt-5 pt-3">
        <div class="login-container">
            <h4 class="mb-5">아이디 찾기</h4>
            <div>고객님의 로컬로그 계정을 찾았습니다.</div>
            <div>아이디 확인 후 로그인해 주세요.</div>
            <div>zie***</div>
            <div>가입일 2024.05.09</div>
            <form class="login-form" method="post" action="">
                <div class="form-group text-center">
                    <div>
                        <button type="submit" class="btn btn-custom btn-lg form-control mb-3" id="logIn">로그인</button>
                    </div>  
                </div>
            </form>
        </div>
    </div>
</body>
</html>
