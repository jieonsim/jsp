<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Jieon's archive</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/bs4.jsp"%>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="../../include/header.jsp"%>

	<!-- Nav -->
	<%@ include file="../../include/nav.jsp"%>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">
				<h2>${sNickName}님 환영합니다!</h2>
				<h5>Photo of me:</h5>
				<div class="fakeimg">Fake Image</div>
				<p>Some text about me in culpa qui officia deserunt mollit
					anim..</p>
				<h3>Some Links</h3>
				<p>Lorem ipsum dolor sit ame.</p>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link active" href="#">Active</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-8">
				<h2>회원가입 최신 리스트</h2>
				<h5>최근 홈페이지에 가입한 회원 5명의 정보입니다.</h5>
				<table class="table table-hover text-center">
					<tr class="table-dark text-dark">
						<th>번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>나이</th>
						<th>성별</th>
						<th>주소</th>
					</tr>
					<c:forEach var="vo" items="${theLatestVos}" varStatus="st">
						<tr>
							<td>${vo.idx}</td>
							<td>${vo.mid}</td>
							<td>${vo.name}</td>
							<td>${vo.age}</td>
							<td>${vo.gender}</td>
							<td>${vo.address}</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="6" class="m-0 p-0"></td>
					</tr>
				</table>
			</div>
			<!-- <div class="col-sm-8">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Dec 7, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      <br>
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div> -->
		</div>
	</div>

	<!-- footer -->
	<%@ include file="../../include/footer.jsp"%>

</body>
</html>