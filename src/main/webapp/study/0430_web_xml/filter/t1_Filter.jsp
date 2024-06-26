<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t1_Filter</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<script>
	'use strict';
	
	function fCheck(flag) {
		if(flag == 'OK') myform.action = "${ctp}/j0430/T01Ok1";
		else myform.action = "${ctp}/j0430/T01Ok2";
		myform.submit();
	}
</script>
<div class="container mt-5">
	<h2>Filter 한글 처리 연습</h2>
	<form name="myform" method="post" >
		<div><input type="text" name="content" value="간단한 소개입니다." class="form-control" autofocus></div>
		<div><textarea rows="5" name="introduce" class="form-control" autofocus>자기소개 뇽뇽</textarea></div>
		<div><input type="button" value="전송1" onclick="fCheck('OK')" class="btn btn-success form-control mt-3 mb-3"></div>
		<div><input type="button" value="전송2" onclick="fCheck('NO')" class="btn btn-primary form-control"></div>
		<div></div>
	</form>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>