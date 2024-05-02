<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#navbar {
    box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
}

.fa-solid {
    color: black;
}

nav ul {
  list-style: none;
  text-align: center;
  font-size: 18px;
}

nav ul li {
  display: inline-block;
}

nav ul li a {
  display: block;
  padding: 15px;
  text-decoration: none;
  color: black; 
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

/* 
nav ul li a:hover .fa-solid,
nav ul li a:hover .fa-regular {
  color: #7bc46e;
  transition: .3s;
} 
*/
</style>