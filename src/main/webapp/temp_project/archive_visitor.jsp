<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
</head>
<style>
.archive-container {
	max-width: 700px;
	margin: auto;
	padding: 20px;
}
#recordFirstCuration {
	font-size: 20px;
	height: 50px;
	color: white;
	background-color: black;
	border: none;
	border-radius: 30px;
	width: 300px;
	box-shadow: none;
}
#nickname {
		font-family: 'Manrope', sans-serif;
		font-size: 20px;
		font-weight: bold;
}

#locallog, #visitor, #curation {
	text-decoration: none;
	color: black;
	font-size: 18px;
	font-weight: bold;
}

#locallog, #visitor, #curation:hover {
	color: black;
}

#profileNoimage {
	font-size: 48px;
}
</style>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container mt-5">
		<div class="archive-container">
			<div class="row mb-5">
				<div class="col-2">
					<i class="ph ph-user-focus" id="profileNoimage"></i>
				</div>
				<div class="col-10">
					<div id="nickname">locallens</div>
					<div style="color: gray">탭하고 소개 글을 입력해 보세요.</div>
				</div>
			</div>
			<ul class="d-flex justify-content-between list-unstyled">
				<li>
					<a href="#" id="locallog" style="color: lightgray">로컬로그</a>
				</li>
				<li>
					<a href="#" id="visitor">방명록</a>
				</li>
				<li>
					<a href="#" id="curation" style="color: lightgray">큐레이션</a>
				</li>
			</ul>
			<div class="text-center" style="margin-top: 100px;">	
				<div class="mb-2">다녀온 공간에 대한 후기를 남겨보세요.</div>
				<button class="btn btn-custom" id="recordFirstCuration">첫 방명록 남기기</button>
			</div>
		</div>
	</div>
</body>
</html>