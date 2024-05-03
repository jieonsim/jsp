<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&display=swap" rel="stylesheet">

<style>
#navbar {
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

nav ul {
    list-style: none;
    text-align: center;
    font-size: 15px;
    font-family: 'Manrope', sans-serif;
}

nav ul li {
    display: inline-block;
}

nav ul li a {
    display: flex;
    align-items: center;
    padding: 15px;
    text-decoration: none;
    color: black;
    margin: 0 10px;
    position: relative;
    font-size: 1.2rem;
}

nav ul li a:hover {
	color: black;
}

nav ul li a:after {
    content: '.';
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    width: 0%;
    background: #aaa;
    height: 1px;
    transition: width .5s;
}

nav ul li a:hover:after {
    width: 100%;
}

.nav-link .ph {
    font-size: 24px; /* Icons font size */
    vertical-align: middle;
}
</style>