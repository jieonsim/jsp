<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.css.jsp" />

<header class="container-fluid mt-5">
	<div class="container">
		<div class="row align-items-center justify-content-between">
			<div class="col-auto">
				<a href="#" class="header-link" id="localLens">Local Lens</a>
			</div>						
            <div class="col-auto position-relative">
                <input class="search-input" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
                <button class="search-btn" type="submit"><i class="ph ph-magnifying-glass"></i></button>
            </div>
			<div class="col-auto d-flex align-items-center">
				<a href="#" class="header-link">
					<i class="ph ph-user"></i>
			    	<span class="ml-2 mr-4">sign in</span>
					<!-- <i class="ph ph-user"></i> -->
			    	<!-- <i class="ph-fill ph-user"></i> -->
			    	<!-- <span class="ml-2 mr-4">account</span> -->
				</a>
				<!-- <span class="header-link" id="divisionLine">|</span> -->
			    <a href="#" class="header-link">
			    	<i class="ph ph-sign-in"></i>
			    	<span class="mx-2">login</span>
			    	<!-- <i class="ph ph-sign-out"></i> -->
			    	<!-- <span class="ml-2">logout</span> -->
			    </a>
			  </div>
			    <!--
			    <div class="dropdown">
			        <a href="#" class="header-link-small dropdown-toggle" id="account" aria-haspopup="true" aria-expanded="false">
			            심지언 님
			        </a>
			        <div class="dropdown-menu" aria-labelledby="account" id="accountMenu">
			            <a class="dropdown-item" href="#">로그아웃</a>
			            <a class="dropdown-item" href="#">프로필 수정</a>
			        </div>
			    </div>
			    -->
			    <!-- 
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
			     -->
		</div>
	</div>
</header>