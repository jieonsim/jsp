<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.signUp-container {
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

/* 중복확인 되었을 때 비활성화 처리
#address, #idDuplicated, #emailDuplicated {
	background-color: #eee;
	border: none;
	color: lightgray;
	border-radius: 0;
}
*/

#address, #idDuplicated, #emailDuplicated {
	background-color: white;
	border: 1px solid black;
	color: black;
	border-radius: 0;
}

#signUp {
	color: white;
	background-color: black;
	border: none;
	border-radius: 0;
	height: 50px;
	font-size: 20px;
}


.signUp-form .form-group span {
    color: lightcoral;
    font-size: 13px;
    text-align: left; /* Add this to align text to the left */
    display: block; /* Makes span behave like a block element, allowing text-align to work */
}

</style>