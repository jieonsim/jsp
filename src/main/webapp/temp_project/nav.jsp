<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="nav.css.jsp" />

<nav class="navbar navbar-expand container-fluid mt-3 pb-3" id="navbar">
    <div class="container">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="navbar-nav w-100 justify-content-between list-unstyled d-flex">
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3 pl-5">
                        <i class="fa-solid fa-house"></i>
                        <span class="ml-2">홈</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3">
                        <i class="fa-solid fa-map"></i>
                        <span class="ml-2">지도</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3">
                        <i class="fa-solid fa-circle-plus"></i>
                        <span class="ml-2">기록</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3">
                        <i class="fa-solid fa-bookmark"></i>
                        <span class="ml-2">보관함</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3 pr-3">
                        <i class="fa-solid fa-user" id="profile"></i>
                        <span class="ml-2">프로필</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>