<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOCAL LENS</title>
<jsp:include page="bs4.jsp" />
<jsp:include page="signUp.css.jsp" />
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
                            value="주소 검색" /><i class="ph ph-magnifying-glass"></i>
                    </div>
                </div>
                <hr>
                <div class="form-group">
                	<h4 class="text-left">관심 지역 설정</h4>
                	<hr>
					<label for="mountain" class="text-left form-label">상위 지역 설정</label>
					<select name="mountain" class="form-control" size="5" multiple>
						<option>백두산</option>
						<option>한라산</option>
						<option>태백산</option>
						<option>속리산</option>
						<option>소백산</option>
						<option>금강산</option>
						<option>우암산</option>
						<option>대둔산</option>
						<option>보문산</option>
					</select>					
                	<h5 class="text-left">하위 지역 설정</h5>
                </div>
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
