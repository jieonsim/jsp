<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.css.jsp" />
<header class="container-fluid mt-5">
	<div class="container">
		<div class="row align-items-center justify-content-between">
			<div class="col-auto">
				<a href="#" class="header-link" id="localLens">Local Lens</a>
			</div>	
            <div class="col-auto position-relative">
                <input class="search-input" type="search" placeholder="find a lil spot? use me!" aria-label="Search">
                <button class="search-btn" type="submit"><i class="ph ph-magnifying-glass"></i></button>
            </div>
			    	<!--
			<div class="col-auto d-flex align-items-center">
				<a href="#" class="header-link">
					<i class="ph ph-user"></i>
			    	<i class="ph-fill ph-user"></i>
			    	<span class="ml-2">locallens</span>
				</a>
				<div class="row mx-3"></div>
			    <a href="#" class="header-link">
			    	<i class="ph ph-sign-in"></i>
			    	<span class="ml-2">log in</span>
			    	<i class="ph ph-sign-out"></i>
			    	<span class="ml-2">log out</span>
			    </a>
			</div>
			 -->
			<div class="col-auto d-flex align-items-center">
			<div class="dropdown">
			<button type="button" class="btn btn-custom btn-lg dropdown-toggle" data-toggle="dropdown" id="user">
					<i class="ph ph-user"></i>
			    	<span class="ml-2">locallens</span>
			</button>
			<div class="dropdown-menu dropdown-menu-right">
			    <a class="dropdown-item" href="#">내 정보 수정</a>
			    <a class="dropdown-item" href="#">로그아웃</a>
  			</div>
			</div>
		</div>
		</div>
	</div>
</header>