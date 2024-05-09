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

.findingId-container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
}

.findingId-form .form-group label {
    text-align: left; /* Add this to align text to the left */
    display: block; 
    /* Makes span behave like a block element, allowing text-align to work */
}

.findingId-form .form-group span {
    color: lightcoral;
    font-size: 13px;
    text-align: left; /* Add this to align text to the left */
    display: block; 
    /* Makes span behave like a block element, allowing text-align to work */
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
</style>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container mt-5 pt-3">
        <div class="findingId-container">
            <h4 class="mb-5">아이디 찾기</h4>
            <form class="findingId-form" method="post" action="">
                <div class="form-group row">
                    <div class="col">
                    	<label for="name">이름</label>
                        <input type="text" class="form-control" name="name" 
                        		placeholder="이름을 입력해주세요." <%-- value="<%=id %>" --%> autofocus required />
                        <span>가입 시 등록한 이름을 입력해주세요.</span>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                    	<label for="name">이메일</label>
                        <input type="email" class="form-control" name="email"
                            placeholder="이메일을 입력해주세요." required />
                        <span>가입 시 등록한 이메일을 입력해주세요.</span>
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
