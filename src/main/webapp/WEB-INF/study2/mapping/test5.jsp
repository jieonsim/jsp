<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>test5.jsp</title>
<script>
	'use strict';
	
	function userManagementOptionSelect() {
		let userManagement = document.getElementById("userManagement").value;
		location.href = userManagement + ".do5";
	}
</script>
<%@ include file="/include/bs4.jsp"%>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<jsp:include page="/include/nav.jsp" />
	<div class="container mt-5">
		<h3>회원 관리 메뉴</h3>
			<label for="option">옵션</label> 
			<select name="userManagement" id="userManagement" onchange="userManagementOptionSelect()">
				<option value="select" selected disabled>선택</option>
				<option value="input">회원가입</option>
				<option value="update">회원정보수정</option>
				<option value="delete">회원삭제</option>
				<option value="search">회원검색</option>
				<option value="list">전체리스트</option>
			</select>
	</div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>