<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.css.jsp" />

<header class="container-fluid mt-4">
	<div class="container">
		<div class="row align-items-center justify-content-between">
			<div class="col-auto">
				<a href="" class="header-link" id="localLens"><span id="L1">L</span>ocal <span id="L2">L</span>ens</a>
			</div>
			<div class="col-auto d-flex align-items-center">
				<a href="#" class="header-link" id="today">TODAY</a>
				<span class="header-link" id="divisionLine">|</span>
				<a href="#" class="header-link" id="forYou">FOR YOU</a>
			</div>
			<!-- <form class="d-flex align-items-center position-relative">
                        <input class="form-control me-2" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
                        <button class="btn position-absolute end-0 me-3" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form> -->
			<div class="col-auto d-flex align-items-center">
				<a href="#" class="header-link-small">회원가입</a>
			    <a href="#" class="header-link-small">로그인</a>
			    <!-- <div class="dropdown">
			        <a href="#" class="header-link-small dropdown-toggle" id="account" aria-haspopup="true" aria-expanded="false">
			            심지언 님
			        </a>
			        <div class="dropdown-menu" aria-labelledby="account" id="accountMenu">
			            <a class="dropdown-item" href="#">로그아웃</a>
			            <a class="dropdown-item" href="#">프로필 수정</a>
			        </div>
			    </div> -->
			    <div class="dropdown">
			        <a href="#" class="header-link-small dropdown-toggle" id="cs" aria-haspopup="true" aria-expanded="false">
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