<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
</head>
<style>
@font-face {
    font-family: 'Pretendard-SemiBold';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-SemiBold.woff') format('woff');
    font-weight: 600;
    font-style: normal;
}

h4 {
	font-family: 'Pretendard-SemiBold';
	text-align: center;
}

.findingPassword-container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
}

.findingPassword-form .form-group label {
    text-align: left;
    display: block; 
}

.findingPassword-form .form-group span {
    color: lightcoral;
    font-size: 13px;
    text-align: left;
    display: block; 
}

#confirm {
	color: white;
	background-color: black;
	border: none;
	font-size: 20px;
	height: 50px;
}

.form-control {
	border-radius: 0;
}

.form-control:focus {
	border-color: black;
	box-shadow: none;
}

#ment {
	font-size: 14px; 
	color: dimgray;
	text-align: center;
}

</style>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container mt-5 pt-3">
        <div class="findingPassword-container">
            <h4 class="mb-5">내 정보 수정</h4>
            <div class="mb-1 text-center">비밀번호 재확인</div>
            <div class="mb-5" id="ment">회원님의 정보를 안전하게 보호하기 위해<br>비밀번호를 다시 한번 확인해주세요.</div>
            <form class="findingPassword-form" method="post" action="">
                <div class="form-group row">
                    <div class="col">
                    	<label for="name">아이디</label>
                        <input type="text" class="form-control" name="id" 
                        		value="locallens" readonly />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                    	<label for="name">비밀번호</label>
                        <input type="password" class="form-control" name="password"
                            placeholder="현재 비밀번호를 입력해주세요." required />
                    </div>
                </div>
                <div class="form-group text-center">
                    <div>
                        <button type="submit" class="btn btn-custom btn-lg form-control mt-3" id="confirm">확인</button>
                    </div>  
                </div>
            </form>
        </div>
    </div>
</body>
</html>
