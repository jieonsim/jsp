<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
</head>
<style>
a:link {
  text-decoration: none;
}

a:visited {
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

a:active {
  text-decoration: underline;
}

#recordFirstVisitor {
	font-size: 20px;
	height: 50px;
	color: white;
	background-color: black;
	border: none;
	border-radius: 30px;
	width: 300px;
	box-shadow: none;
}

#locallog, #visitor, #curation {
	text-decoration: none;
	color: black;
}
#locallog, #visitor, #curation:hover {
	color: black;
}

</style>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container mt-5">
		<h5>locallens</h5>
		<div class="mb-3">탭하고 소개 글을 입력해 보세요.</div>
		<ul class="d-flex justify-content-around list-unstyled">
			<li>
				<a href="#" id="locallog">로컬로그</a>
			</li>
			<li>
				<a href="#" id="visitor">방명록</a>
			</li>
			<li>
				<a href="#" id="curation">큐레이션</a>
			</li>
		</ul>
		<div class="text-center">	
			<div>다녀온 공간에 대한 후기를 남겨보세요.</div>
			<button class="btn btn-custom" id="recordFirstVisitor">첫 방명록 남기기</button>
		</div>
	</div>
</body>
</html>