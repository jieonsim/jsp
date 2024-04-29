<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "/include/certification.jsp"%>
<%
																// Integer.parseInt해도됨
	int aCount = application.getAttribute("aCount")==null ? 0 : (int)application.getAttribute("aCount");
	// 제일 처음 사이트 들어갔을 때는 null이니까 0으로 지정
	int sCount = session.getAttribute("sCount")==null ? 0 : (int)session.getAttribute("sCount");
	
	// 0으로 준 후 첫 접속이니까 ++통해 1로 됨
	aCount++;
	sCount++;
	
	application.setAttribute("aCount", aCount);
	session.setAttribute("sCount", sCount);

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t04_storageTest.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>방문 카운트 비교하기</h2>
	<hr>
	<p>어플리케이션 카운트 : ${aCount}</p>
	<hr>
	<p>세션 카운트 : ${sCount}</p>
	<hr>
	<p>
		<a href="t04_applicationClear.jsp" class="btn btn-success">어플리케이션 카운트 초기화</a>
		<a href="t04_sessionClear.jsp" class="btn btn-primary">세션 카운트 초기화</a>
		<!-- 아래 두개 같은 결과임, 방법이 두개 -->
		<!-- <a href="t04_storageTest.jsp" class="btn btn-secondary">방문수 증가</a> -->
		<a href="javascript:location.reload()" class="btn btn-secondary">방문수 증가</a>
		<!-- location.reload() : 자기자신 부르기 -->
	</p>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>