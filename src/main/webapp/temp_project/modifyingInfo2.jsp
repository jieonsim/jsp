<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
<jsp:include page="modifyingInfo2.css.jsp" />
</head>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    <div class="container pt-5">
        <div class="modifyingInfo-container">
            <h3 class="mb-5">내 정보 수정</h3>
            <hr>
            <form class="signUp-form pl-3 pr-3" method="post" action="">
                <div class="form-group row">
			        <label for="id" class="col-sm-3 col-form-label">아이디</label>
			        <div class="col-sm-6">
			            <input type="text" class="form-control" id="id" name="id"
			                value="admin" readonly />
			        </div>
			    </div>
                <div class="form-group row">
                    <label for="password" class="col-sm-3 col-form-label">현재 비밀번호</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" name="password"
                            placeholder="비밀번호를 입력해주세요." />
                        <span>10자 이상, 영문/숫자/특수문자 중 2개 이상 조합</span>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="password" class="col-sm-3 col-form-label">새 비밀번호</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" name="password"
                            placeholder="새 비밀번호를 입력해주세요." />
                        <span>10자 이상, 영문/숫자/특수문자 중 2개 이상 조합</span>
                    </div>
                </div>
                <div class="form-group row">
                	<label for="password" class="col-sm-3 col-form-label">새로운 비밀번호 확인</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" name="password"
                            placeholder="새 비밀번호를 다시 입력해주세요." />
                        <span>동일한 비밀번호를 입력</span>
                    </div>
                </div>
                <div class="form-group row">
                	<label for="nickname" class="col-sm-3 col-form-label">닉네임</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="nickname"
                            value="locallens" />
                         <!-- <span>이미 사용 중인 닉네임입니다.</span> -->
                         <span>15자 이하, 영문/숫자/마침표/언더바만 입력 가능</span>
                    </div>
                    <div class="col-sm-3">
			            <button type="submit" class="btn btn-custom form-control" id="isDuplicated">중복확인</button>
			        </div>
                </div>
                <div class="form-group row">
                	<label for="name" class="col-sm-3 col-form-label">이름</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="name"
                            value="심지언" />
                    </div>
                </div>
                <div class="form-group row">
                	<label for="email" class="col-sm-3 col-form-label">이메일</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" name="email"
                            value="ll@locallens.com" />
                    </div>
                   	<div class="col-sm-3">
			            <button type="submit" class="btn btn-custom form-control" id="isDuplicated">중복확인</button>
			        </div>
                </div>
                <!--  
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
                -->
                <hr>
                <div class="form-group row text-center">
                	<div class="col-sm-3"></div>
                    <div class="col-3">
                        <button type="button" class="btn btn-custom form-control" id="leave">탈퇴하기</button>
                    </div>
                    <div class="col-3">
                        <button type="submit" class="btn btn-custom form-control" id="modifying">회원정보수정</button>
                    </div>
                	<div class="col-sm-3"></div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
