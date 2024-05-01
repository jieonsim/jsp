<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/temp_project/nav.css"> --%>
<!-- <link rel="stylesheet" type="text/css" href="nav.css"> -->
<style>
#navbar {
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
}

.fa-solid, .fa-regular {
    color: black;
}

/* nav .container a {
    text-decoration: none;
    color: black;
}

nav .container a:hover {
    text-decoration: none;
    color: black;
} */

nav ul {
  list-style: none;
  text-align: center;
}

nav ul li {
  display: inline-block;
}
nav ul li a {
  display: block;
  padding: 15px;
  text-decoration: none;
  color: black;
  /* font-weight: 800; */
  text-transform: uppercase;
  margin: 0 10px;
}
nav ul li a,
nav ul li a:after,
nav ul li a:before {
  transition: all .5s;
}
nav ul li a:hover {
  color: black;
}

nav.navbar ul li a {
  position: relative;
}
nav.navbar ul li a:after {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  width: 0%;
  content: '.';
  color: transparent;
  background: #aaa;
  height: 1px;
}
nav.navbar ul li a:hover:after {
  width: 100%;
}
</style>

<nav class="navbar navbar-expand container-fluid mt-3 pb-3" id="navbar">
    <div class="container">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="navbar-nav w-100 justify-content-between list-unstyled d-flex">
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3">
                        <i class="fa-solid fa-map"></i>
                        <span class="ml-2">지도</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <span class="ml-2">검색</span>
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
                        <i class="fa-regular fa-bookmark"></i>
                        <span class="ml-2">보관함</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link mx-3">
                        <i class="fa-solid fa-user" id="profile"></i>
                        <span class="ml-2">프로필</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>