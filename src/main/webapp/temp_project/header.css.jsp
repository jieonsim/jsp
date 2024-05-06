<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&display=swap"
	rel="stylesheet">

<style>
@font-face {
	font-family: 'ClimateCrisisKR-1979';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/ClimateCrisisKR-1979.woff2')
		format('woff2');
	font-weight: 900;
	font-style: normal;
}


#localLens {
	font-family: 'ClimateCrisisKR-1979';
	font-size: 30px;
	color: black;
	cursor: default;
}

.header-link {
	font-family: 'Manrope', sans-serif;
	font-size: 20px;
	display: flex;
	align-items: center;
	text-decoration: none;
	color: black;
}

.header-link:hover {
	text-decoration: none;
	color: black;
}

.header-link .ph {
	font-size: 18px;
	vertical-align: middle;
}

.header-link:not(#localLens):hover {
	background-color: black;
	color: white;
	transition: color 0.3s, background-color 0.3s;
}

.search-input {
	border: 1px solid black;
	border-radius: 25px;
	padding: 10px 40px 10px 20px;
	width: 400px;
	outline: none;
}

/* .search-input:focus {
    outline: none;
    border-color: inherit;
    box-shadow: none;
} */
.search-btn {
	position: absolute;
	right: 30px;
	top: 50%;
	transform: translateY(-50%);
	border: none;
	background: none;
	cursor: pointer;
}
</style>