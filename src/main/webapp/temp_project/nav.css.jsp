<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&display=swap" rel="stylesheet">

<style>
.navbar {
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.navbar ul li a#home,
.navbar ul li a#map,
.navbar ul li a#record,
.navbar ul li a#bookmark,
.navbar ul li a#archive {
    text-align: center;
    font-size: 15px;
    font-family: 'Manrope', sans-serif;
    display: inline-block;
    display: flex;
    align-items: center;
    text-decoration: none;
    color: black;
    margin: 0 10px;
    position: relative;
    font-size: 1.2rem;    
}

.navbar ul li a#home:hover,
.navbar ul li a#map:hover,
.navbar ul li a#record:hover,
.navbar ul li a#bookmark:hover,
.navbar ul li a#archive:hover,
.navbar ul li a#home:active,
.navbar ul li a#map:active,
.navbar ul li a#record:active,
.navbar ul li a#bookmark:active,
.navbar ul li a#archive:active {
    color: black;
}

.nav-link .ph,
.nav-link .ph-fill {
    font-size: 24px;
    vertical-align: middle;
}

.nav-link i.ph {
    display: inline;  
}

.nav-link i.ph-fill {
    display: none; 
}

.nav-link.active i.ph {
    display: none; 
}

.nav-link.active i.ph-fill {
    display: inline; 
}

.navbar ul li a:after {
    content: '';
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

.navbar ul li a:not([id^="visitor"], [id^="daylog"], [id^="curation"]):hover:after,
.navbar ul li a:not([id^="visitor"], [id^="daylog"], [id^="curation"]).active:after {
    width: 100%;
}

.nav-link:hover i.ph,
.nav-link:active i.ph {
    display: none;
}

.nav-link:hover i.ph-fill,
.nav-link.active i.ph-fill {
    display: inline !important;
}
</style>
<!--
<style>
.navbar {
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.navbar ul {
    list-style: none;
    text-align: center;
    font-size: 15px;
    font-family: 'Manrope', sans-serif;
}

.navbar ul li {
    display: inline-block;
}

.navbar ul li a {
    display: flex;
    align-items: center;
    padding: 15px;
    text-decoration: none;
    color: black;
    margin: 0 10px;
    position: relative;
    font-size: 1.2rem;
}

.navbar ul li a:hover,
.navbar ul li a:active {
	color: black;
}

.nav-link .ph,
.nav-link .ph-fill {
    font-size: 24px;
    vertical-align: middle;
}

.nav-link i.ph {
    display: inline;  
}

.nav-link i.ph-fill {
    display: none; 
}

.nav-link.active i.ph {
    display: none; 
}

.nav-link.active i.ph-fill {
    display: inline; 
}

nav ul li a:after {
    content: '';
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

nav ul li a:hover:after,
nav ul li a.active:after {
    width: 100%;
}

.nav-link:hover i.ph,
.nav-link:active i.ph {
    display: none;
}

.nav-link:hover i.ph-fill,
.nav-link.active i.ph-fill {
    display: inline !important;
}
</style>
-->
<!--
<style>
.navbar {
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

nav ul li a:hover,
nav ul li a:active {
	color: black;
}

.nav-link .ph,
.nav-link .ph-fill {
    font-size: 24px;
    vertical-align: middle;
}

.nav-link i.ph {
    display: inline;  
}

.nav-link i.ph-fill {
    display: none; 
}

.nav-link.active i.ph {
    display: none; 
}

.nav-link.active i.ph-fill {
    display: inline; 
}

nav ul li a:after {
    content: '';
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

nav ul li a:hover:after,
nav ul li a.active:after {
    width: 100%;
}

.nav-link:hover i.ph,
.nav-link:active i.ph {
    display: none;
}

.nav-link:hover i.ph-fill,
.nav-link.active i.ph-fill {
    display: inline !important;
}
</style>
-->