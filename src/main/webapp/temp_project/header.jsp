<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="header.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<header class="container-fluid mt-3">
	<div class="container">
		<div class="row align-items-center justify-content-between">
			<div class="col-auto">
				<a href="#" class="header-link" id="localLens">LocalLens</a>
			</div>
			<div class="col-auto d-flex align-items-center">
				<a href="#" class="header-link" id="today">TODAY</a>
				<span class="header-link" id="divisionLine">|</span>
				<a href="#" class="header-link" id="forYou">FOR YOU</a>
			</div>
			<div class="col-auto d-flex align-items-center">
<!-- 				<a href="#" class="header-link-small" id="signUp">회원가입</a>
			    <a href="#" class="header-link-small" id="logIn">로그인</a> -->
			    <div class="dropdown">
			        <a href="#" class="header-link-small dropdown-toggle" id="account" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			            심지언 님
			        </a>
			        <div class="dropdown-menu" aria-labelledby="account">
			            <a class="dropdown-item" href="#">로그아웃</a>
			            <a class="dropdown-item" href="#">프로필 수정</a>
			        </div>
			    </div>
			    <div class="dropdown">
			        <a href="#" class="header-link-small dropdown-toggle" id="cs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			            고객센터
			        </a>
			        <div class="dropdown-menu" aria-labelledby="cs">
			            <a class="dropdown-item" href="#">공지사항</a>
			            <a class="dropdown-item" href="#">자주 묻는 질문</a>
			            <a class="dropdown-item" href="#">1:1문의</a>
			        </div>
			    </div>
			</div>			
		</div>
	</div>
</header>