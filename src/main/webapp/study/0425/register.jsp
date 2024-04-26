<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>register.jsp</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: Noto Sans KR;
}

h2, h3 {
	text-align: center;
}

.navbar-custom {
	background-color: #ffffff;
	box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.navbar-brand {
	font-size: 2rem;
	color: #001950;
	font-family: "Alfa Slab One", serif;
}

.nav-link {
	color: #001950;
}

.form-control {
	border: 1px solid #001950;
	border-radius: 20px;
	padding-right: 2.5rem;
}

.btn-outline-custom {
	border: none;
}

.position-absolute.end-0 {
	top: 50%;
	transform: translateY(-50%);
	right: 1rem;
}

.btn.position-absolute.end-0 {
	z-index: 2;
}

.btn-outline-custom:not(:last-child) {
	margin-right: .5rem;
}

.fa-heart, .fa-cart-shopping, .fa-user {
	margin: 0 10px;
}

.btn-dark {
	padding: .6rem 1rem;
	font-size: large;
}

#demoCartTotalAmount {
	text-align: right;
}

.footer {
	font-size: x-small;
	text-align: center;
	background-color: rgb(240, 240, 240);
	height: 50px;
	line-height: 50px;
	position: absolute;
}

.registration-container {
	max-width: 600px; /* Adjust the width as needed */
	margin: auto; /* Center the container */
	padding: 20px; /* Padding around the form */
	/* border: 1px solid #ccc; */
	/* Border as per your design */
}

.registration-form {
	width: 100%; /* Use the full width of the container */
}

.form-header {
	text-align: center;
	margin-bottom: 20px;
}

.form-control {
	margin-bottom: 10px; /* Spacing between form fields */
}

#registerBtn {
	background-color: #001950; /* Replace with your desired color */
	color: white; /* Text color */
	/* Additional styling */
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-custom">
			<div class="container-fluid mt-3">
				<div
					class="container d-flex justify-content-between align-items-center">
					<a class="navbar-brand" href="#">GREEN BEACH</a>
					<form class="d-flex align-items-center position-relative">
						<input class="form-control me-2" type="search"
							placeholder="검색어를 입력해주세요." aria-label="Search">
						<button class="btn position-absolute end-0 me-3" type="submit">
							<i class="fa-solid fa-magnifying-glass"></i>
						</button>
					</form>
					<div>
						<button class="btn btn-outline-custom" type="button">
							<i class="fa-solid fa-heart"></i>
						</button>
						<button class="btn btn-outline-custom" type="button">
							<i class="fa-solid fa-cart-shopping"></i>
						</button>
						<button class="btn btn-outline-custom" type="button">
							<i class="fa-solid fa-user"></i>
						</button>
					</div>
				</div>
			</div>
		</nav>
		<nav class="navbar navbar-expand-lg navbar-custom">
			<div class="container-fluid mt-1">
				<div class="container d-flex justify-content-center">
					<ul class="navbar-nav flex-grow-1 justify-content-around">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">카테고리</a></li>
						<li class="nav-item"><a class="nav-link" href="#">신상품</a></li>
						<li class="nav-item"><a class="nav-link" href="#">베스트</a></li>
						<li class="nav-item"><a class="nav-link" href="#">특가/혜택</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="container mt-5">
		<div class="registration-container">
			<h3 class="form-header">회원가입</h3>
			<form class="registration-form" method="post"
				action="<%=request.getContextPath()%>/j0425/RegisterServlet">
				<div class="form-group">
					<label for="username">아이디</label> <input type="text"
						class="form-control" id="username" placeholder="아이디를 입력해주세요"
						>
				</div>
				<div class="form-group">
					<label for="password">비밀번호</label> <input type="password"
						class="form-control" id="password" placeholder="비밀번호를 입력해주세요"
						>
				</div>
<!-- 				<div class="form-group">
					<label for="passwordConfirm">비밀번호 확인</label> <input type="password"
						class="form-control" id="passwordConfirm"
						placeholder="비밀번호를 다시 입력해주세요" required>
				</div> -->
				<div class="form-group">
					<label for="name">이름</label> <input type="text"
						class="form-control" id="name" placeholder="이름을 입력해주세요" >
				</div>
				<div class="form-group">
					<label for="email">이메일</label> <input type="text"
						class="form-control" id="email"
						placeholder="marketkurly@kurly.com">
				</div>
				<div class="form-group">
					<label for="phoneNumber">휴대폰</label> <input type="number"
						class="form-control" id="phoneNumber" placeholder="숫자만 입력해주세요.">
				</div>
				<div class="form-group text-center">
					<button type="submit" id="registerBtn"
						class="btn btn-dark align-items-center">가입하기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>