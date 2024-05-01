<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOCAL LENS</title>
<jsp:include page="bs4.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/temp_project/signUp.css">
<style>
.signUp-container {
	max-width: 700px;
	margin: auto;
	padding: 20px;
	text-align: center;
}

.form-control {
	border-radius: 0;
}

.link-small {
	font-size: small;
	color: gray;
	text-decoration: none;
}

#address, #idDuplicated, #emailDuplicated, #phoneDuplicated {
	background-color: white;
	border: 1px solid #8fd685;
	color: #7bc46e;
	border-radius: 0;
}

#signUp {
	color: white;
	background-color: #7bc46e;
	border: none;
	border-radius: 0;
}

@font-face {
    font-family: 'Pretendard-SemiBold';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-SemiBold.woff') format('woff');
    font-weight: 600;
    font-style: normal;
}


h3 {
	font-family: 'Pretendard-SemiBold';
}

label {
	text-align: left;
}
</style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container pt-5">
        <div class="signUp-container">
            <h3 class="pb-5">회원가입</h3>
            <hr>
            <form class="signUp-form pl-3 pr-3" method="post" action="">
                <div class="form-group row">
			        <label for="id" class="col-sm-3 col-form-label">아이디</label>
			        <div class="col-sm-6">
			            <input type="text" class="form-control" id="id" name="id"
			                placeholder="아이디를 입력해주세요." autofocus required />
			        </div>
			        <div class="col-sm-3">
			            <button type="submit" class="btn btn-custom form-control" id="idDuplicated">중복확인</button>
			        </div>
			    </div>
                <div class="form-group row">
                    <label for="password" class="col-sm-3 col-form-label">비밀번호</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" name="password"
                            placeholder="비밀번호를 입력해주세요." required />
                    </div>
                </div>
                <div class="form-group row">
                	<label for="password" class="col-sm-3 col-form-label">비밀번호 확인</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" name="password"
                            placeholder="비밀번호를 한번 더 입력해주세요." required />
                    </div>
                </div>
                <div class="form-group row">
                	<label for="name" class="col-sm-3 col-form-label">이름</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="name"
                            placeholder="이름을 입력해주세요." required />
                    </div>
                </div>
                <div class="form-group row">
                	<label for="email" class="col-sm-3 col-form-label">이메일</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" name="email"
                            placeholder="예: ll@locallens.com" required />
                    </div>
                   	<div class="col-sm-3">
			            <button type="submit" class="btn btn-custom form-control" id="emailDuplicated">중복확인</button>
			        </div>
                </div>
                <div class="form-group row">
                	<label for="phone" class="col-sm-3 col-form-label">휴대폰</label>
                    <div class="col-sm-6">
                        <input type="number" class="form-control" name="phone"
                            placeholder="숫자만 입력해주세요." required />
                    </div>
                    <div class="col-sm-3">
			            <button type="submit" class="btn btn-custom form-control" id="phoneDuplicated">중복확인</button>
			        </div>
                </div>
                <div class="form-group row">
                	<label for="address" class="col-sm-3 col-form-label">주소</label>
                    <div class="col-sm-6">
                        <input type="button" class="btn btn-custom form-control" name="address" id="address"
                            value="주소 검색" />
                    </div>
                </div>
                <hr>
                <div class="form-group row text-center">
                	<div class="col-sm-3"></div>
                    <div class="col-sm-6 mt-3">
                        <button type="submit" class="btn btn-custom form-control" id="signUp">회원가입</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
