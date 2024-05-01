<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file = "/include/certification.jsp"%> --%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t2_Certification.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
	<script>
	
		'use strict';
		
		function certificationCheck() {
			let certification = myform.certification.value;
			// 여기서 사용된 변수명(certification)은 함수명(certificationCheck)과 같으면 안된다. 같을 경우 에러남
			if(certification == "" || certification.length != 4) {
				alert("인증코드를 확인하세요(4자리)");
				return false;
			} else {
				location.href="${ctp}/j0430/T02_Certification?admin=admin&u="+certification;		
			}
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>이 곳은 인증코드 발급 창입니다.</h2>
	<form name="myform">
		<div><input type="text" name="certification" value="1234" class="form-control mb-1"></div>
		<div><input type="button" value="인증코드 발급" onclick="certificationCheck()" class="btn btn-success form-control"></div>
	</form>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>