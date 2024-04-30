<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="header.css">

<style>
@charset "UTF-8";

@font-face {
    font-family: 'SUITE-Heavy';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Heavy.woff2') format('woff2');
    font-weight: 900;
    font-style: normal;
}

@font-face {
    font-family: 'SUIT-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'Pretendard-Light';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Light.woff') format('woff');
    font-weight: 300;
    font-style: normal;
}

@font-face {
    font-family: 'ClimateCrisisKR-1979';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/ClimateCrisisKR-1979.woff2') format('woff2');
    font-weight: 900;
    font-style: normal;
}

#localLens {
  font-family: ClimateCrisisKR-1979;
  font-size: 36px;
  color: #7bc46e;
  /* color: #a3de9b; */
  /* text-shadow: 0px 0px 10px gray; */
  /* color: white; */
  /* -webkit-text-stroke: 1px black; */
}

.header-link {
  font-size: 24px;
  margin-right: 25px;
}

.header-link-small {
  font-family: 'Pretendard-Light';
  /* font-size: 16px; */
  font-size: 14px;
  margin-left: 20px;
}

header .container a {
  text-decoration: none;
  color: black;
}
header .container a:hover {
  text-decoration: none;
  color: black;
}

#today, #forYou {
	font-family: SUIT-Regular;
}

#today {
	letter-spacing: 2px;
}

#forYou {
	letter-spacing: 0px;
}

#divisionLine, #forYou {
	color: gray;
}

.dropdown:hover .dropdown-menu {
        display: block;
}

.dropdown-menu {
	font-family: 'Pretendard-Light';
  	font-size: 14px;
	min-width: 10px;
}

</style>

<header class="container-fluid mt-3">
	<div class="container">
		<div class="row align-items-center justify-content-between">
			<div class="col-auto">
				<a href="#" class="header-link" id="localLens">Local Lens</a>
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
				<a href="#" class="header-link-small" id="signUp">회원가입</a>
			    <a href="#" class="header-link-small" id="logIn">로그인</a>
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