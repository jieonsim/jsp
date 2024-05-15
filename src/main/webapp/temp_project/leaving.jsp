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

.leaving-container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
}

#turningPrivate {
	color: white;
	background-color: black;
	border: none;
	font-size: 20px;
	height: 50px;
	border-radius: 0px;
}

#turningPrivate:focus {
	box-shadow: none;
}

#leave {
	color: red;
	border: none;
	font-size: 20px;
	height: 50px;
}
#leave:focus {
	box-shadow: none;
}

.card-body {
	padding: 5;
	font-size: 15px;
}

#case {
	font-family:'Pretendard-SemiBold';
	margin-bottom: 10px;
}
</style>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container mt-5 pt-3">
        <div class="leaving-container">
            <h4 class="mb-5">계정 탈퇴</h4>
            	<h5>정말로 계정을 탈퇴하시겠습니까?</h5>
            	<div style="color: gray; font-size: 14px;">계정을 탈퇴하기 전에 안내 사항을 꼭 확인해 주세요.</div>
                <div class="row mt-5">
                    <div class="col">
                    	<div id="case">계정을 탈퇴하는 경우</div>
                    	<div class="card bg-light text-dark">
                    		<div class="card-body">
                    			계정 탈퇴 시 회원님의 프로필과 모든 컨텐츠는<br>
                    			<span style="color: red;">즉시 영구적으로 삭제되며 다시 복구할 수 없습니다.</span>
                    		</div>
                    	</div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col">
                    	<div id="case">계정을 탈퇴하는 대신 비공개 하는 경우</div>
                    	  <div class="card bg-light text-dark">
						    <div class="card-body">내 프로필 및 콘텐츠가 다른 유저에게 공개되지 않고,<br>로컬로그 서비스 이용에는 영향을 끼치지 않습니다.</div>
						  </div>
                    </div>
                </div>
                <div>
                  <button type="button" class="btn btn-custom btn-lg mt-5" id="turningPrivate">비공개 계정으로 계속 이용하기</button>
               </div>
                <div>
                  <button type="button" class="btn btn-custom btn-lg mt-2" id="leave">탈퇴하기</button>
               </div>  
        </div>
    </div>
</body>
</html>
