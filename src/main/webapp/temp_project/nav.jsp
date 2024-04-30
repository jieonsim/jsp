<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="nav.css">
<style>
/* @charset "UTF-8";
#navbar {
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
}

.fa-solid, .fa-regular {
    color: black; 
    transition: color 0.3s;
}

nav .container a {
    text-decoration: none;
    color: black;
    transition: color 0.3s; 
    display: inline-flex; 
    align-items: center; 
}

nav .container a span {
    transition: border-bottom 0.3s, color 0.3s;
    border-bottom: 2px solid transparent;
    padding-bottom: 2px; 
}

nav .container a:hover span {
    color: #7bc46e; 
    border-bottom-color: #7bc46e; 
}

.nav-item .fa {
    margin-right: 5px;
}

.nav-item.active span,
.nav-item:hover span {
    color: #7bc46e;
} */

@charset "UTF-8";
#navbar {
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
}

.fa-solid, .fa-regular {
    color: black;
    transition: color 0.15s;
}

nav .container a {
    text-decoration: none;
    color: black;
    transition: color 0.3s;
    display: inline-flex; 
    align-items: center;
}

nav .container a span {
    transition: border-bottom 0.3s;
    border-bottom: 2px solid transparent;
    padding-bottom: 2px;
}

nav .container a:hover,
nav .container a:hover .fa-solid,
nav .container a:hover .fa-regular {
    color: #7bc46e;
}

nav .container a:hover span {
    border-bottom-color: #7bc46e;
}

.nav-item .fa {
    margin-right: 5px;
}

.nav-item.active .fa,
.nav-item.active span,
.nav-item:hover .fa,
.nav-item:hover span {
    color: #7bc46e;
}

/* @charset "UTF-8";
#navbar {
	box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
}

.fa-solid, .fa-regular {
	color: black;
}

nav .container a {
  text-decoration: none;
  color: black;
}
nav .container a:hover {
  text-decoration: none;
  color: black;
} */

</style>
<nav class="navbar navbar-expand container-fluid mt-3" id="navbar">
  <div class="container">
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <!-- <div class="navbar-nav mx-auto"> -->
      <div class="navbar-nav w-100 justify-content-between">
        <!-- <a href="#" class="nav-item nav-link active mx-3">
          <i class="fa-solid fa-house"></i>
          <span class="ml-2">홈</span>
        </a> -->
        <a href="#" class="nav-item nav-link mx-3">
          <i class="fa-solid fa-map"></i>
          <span class="ml-2">지도</span>
        </a>
        <a href="#" class="nav-item nav-link mx-3">
          <i class="fa-solid fa-magnifying-glass"></i>
          <span class="ml-2">검색</span>
        </a>
        <a href="#" class="nav-item nav-link mx-3">
          <i class="fa-solid fa-circle-plus"></i>
          <span class="ml-2">기록</span>
        </a>
        <a href="#" class="nav-item nav-link mx-3">
          <i class="fa-regular fa-bookmark"></i>
          <!-- <i class="fa-solid fa-bookmark"></i>유저가 클릭했을 때 이거로 변하도록 -->
          <span class="ml-2">보관함</span>
        </a>
        <a href="#" class="nav-item nav-link mx-3">
          <i class="fa-solid fa-user" id="profile"></i>
          <span class="ml-2">프로필</span>
        </a>
      </div>
    </div>
  </div>
</nav>