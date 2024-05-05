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
			            <span>6자리 이상 16자 이하의 영문 혹은 영문과 숫자를 조합</span>
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
                        <span>최소 10자리 이상, 영문/숫자/특수문자 중 2개 이상 조합</span>
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
                <!--  
                <div class="form-group row">
                	<label for="address" class="col-sm-3 col-form-label">주소</label>
                    <div class="col-sm-6">
                        <input type="button" class="btn btn-custom form-control" name="address" id="address"
                            value="주소 검색" /><i class="ph ph-magnifying-glass"></i>
                    </div>
                </div>
                -->
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
