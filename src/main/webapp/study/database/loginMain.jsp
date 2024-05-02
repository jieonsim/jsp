<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>loginMain.jsp</title>
<%@ include file="/include/bs4.jsp"%>
<script>
	'use strict';

	function nameSearch() {
		let name = document.getElementById("name").value;
		if (name.trim() == "") {
			alert("검색할 성명을 입력하세요!");
			document.getElementById("name").focus();
		} else {
			location.href = "${ctp}/database/LoginSearch?name=" + name;
		}

	}
</script>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<jsp:include page="/include/nav.jsp" />
	<p>
		<br />
	</p>
	<div class="container">
		<h2 class="text-center">회 원 메 인 방</h2>
		<hr />
		<div class="row">
			<input type="button" value="전체조회"
				onclick="location.href='${ctp}/study/database/LoginList';"
				class="btn btn-success btn-sm ml-3 mb-3 mr-3" />
				<div class="dropdown">
					<button class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">정렬선택</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=latest';">가입 최신순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=oldest';">가입 오래된순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=midDesc';">아이디 내림차순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=midAsc';">아이디 오름차순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=nameDesc';">이름 내림차순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=nameAsc';">이름 오름차순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=ageDesc';">나이 내림차순</a>
						<a class="dropdown-item" onclick="location.href='${ctp}/SortList?sort=ageAsc';">나이 오름차순</a>
					</div>
				</div>
		</div>
		<table class="table table-hover text-center">
			<tr class="table-dark text-dark">
				<th>번호</th>
				<th>아이디</th>
				<th>성명</th>
				<th>나이</th>
				<th>성별</th>
				<th>주소</th>
			</tr>
			<c:forEach var="vo" items="${vos}" varStatus="st">
				<tr>
					<td>${vo.idx}</td>
					<td>${vo.mid}</td>
					<td><a href="${ctp}/study/database/LoginView?idx=${vo.idx}">${vo.name}</a></td>
					<td>${vo.age}</td>
					<td>${vo.gender}</td>
					<td>${vo.address}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" class="m-0 p-0"></td>
			</tr>
		</table>
		<hr />
		<br />
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text">성 명</span>
			</div>
			<input type="text" name="name" id="name" class="form-control" />
			<button type="button" onclick="nameSearch()"
				class="input-group-append btn btn-warning">개별조회</button>
		</div>
	</div>
	<p>
		<br />
	</p>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>