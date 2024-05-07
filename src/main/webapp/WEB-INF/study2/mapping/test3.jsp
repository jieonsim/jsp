<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test3.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
	<script>
		'use strict';
		
		function calc(flag) {
			if(flag == 'hap') {
				myform.action = "hap.do3";
			}
			else if(flag == 'cha') {
				myform.action = "cha.do3";
			}
			else if(flag == 'gop') {
				myform.action = "gop.do3";
			}
			else if(flag == 'mok') {
				myform.action = "mok.do3";
			}
			
			myform.submit();
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>이 곳은 test3.jsp(/WEB-INF/study2/mapping)입니다.</h2>
	<hr>
	<div>
		<a href="list.do3" class="btn btn-success mr-3">연습 List</a>
		<a href="input.do3" class="btn btn-warning mr-3">연습 Input</a>
		<a href="update.do3" class="btn btn-info mr-3">연습 Update</a>
		<a href="delete.do3" class="btn btn-primary mr-3">연습 Delete</a>
		<a href="search.do3" class="btn btn-primary mr-3">연습 Search</a>
	</div>
	<div>
		<a href="javascript:calc('hap')" class="btn btn-success mr-3">합</a>
		<a href="javascript:calc('cha')" class="btn btn-warning mr-3">차</a>
		<a href="javascript:calc('gop')" class="btn btn-info mr-3">곱</a>
		<a href="javascript:calc('mok')" class="btn btn-primary mr-3">몫</a>
	</div>
	<div>전송 메시지 : ${msg}</div>
	<div>
		<form name="myform" method="post" action="${ctp}/mapping/test2.do">
			<div>
				<input type="number" name="su1" value="${su1}" class="form-control mb-2" />
				<input type="number" name="su2" value="${su2}" class="form-control mb-2" />
			</div>
			<div>
				<input type="submit" value="전송하기" class="btn btn-success" />
			</div>
		</form>
	</div>
	<div>
		<div>두 수의 합 : ${hap}</div>
		<div>두 수의 차 : ${cha}</div>
		<div>두 수의 곱 : ${gop}</div>
		<div>두 수의 몫 : ${mok}</div>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>