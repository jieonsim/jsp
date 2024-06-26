<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.modifyingInfo-container {
	max-width: 700px;
	margin: auto;
	padding: 20px;
	text-align: center;
}

@font-face {
    font-family: 'Pretendard-SemiBold';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-SemiBold.woff') format('woff');
    font-weight: 600;
    font-style: normal;
}

h3 {
	font-family: 'Pretendard-SemiBold';
}

.form-control {
	border-radius: 0;
}

.form-control:focus {
	border-color: black;
	box-shadow: none;
}

label {
	text-align: left;
}

.link-small {
	font-size: small;
	color: gray;
	text-decoration: none;
}

#isDuplicated {
	background-color: #eee;
	border: none;
	color: lightgray;
	border-radius: 0;
}

/*
#isDuplicated {
	background-color: white;
	border: 1px solid black;
	color: black;
	border-radius: 0;
}
*/

#modifying {
	background-color: black;
	color: white;
	border: none;
	border-radius: 0;
	height: 50px;
	font-size: 20px;
}

#leave {
	background-color: white;
	color: black;
	border: 1px solid black;
	height: 50px;
	font-size: 20px;
}

.signUp-form .form-group span {
    color: lightcoral;
    font-size: 13px;
    text-align: left; 
    display: block; 
}

input[readonly] {
    background-color: #f7f7f7;
    color: gray;
}

</style>