<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>calendar1.jsp</title>
<%@ include file="/include/bs4.jsp"%>
<style>
	#td1, #td8, #td15, #td22, #td29, #td36 {
		color:red;
	}
	#td7, #td14, #td21, #td28, #td35 {
		color:blue;
	}
	.today {
		background-color: pink;
		color: white;
		font-weight: bolder;
	}
</style>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<jsp:include page="/include/nav.jsp" />
	<p>
		<br />
	</p>
	<div class="container">
		<div class="text-center">
			<button type="button" onclick="location.href='Calendar1.st?yy=${yy-1}&mm=${mm}';" class="btn btn-secondary btn-sm" title="이전년도">◁</button>
			<button type="button" onclick="location.href='Calendar1.st?yy=${yy}&mm=${mm-1}';" class="btn btn-secondary btn-sm" title="이전월">◀</button>
			<font size="5">${yy}년 ${mm+1}월</font>
			<button type="button" onclick="location.href='Calendar1.st?yy=${yy}&mm=${mm+1}';" class="btn btn-secondary btn-sm" title="다음월">▶</button>
			<button type="button" onclick="location.href='Calendar1.st?yy=${yy+1}&mm=${mm}';" class="btn btn-secondary btn-sm" title="다음년도">▷</button>
			<button type="button" onclick="location.href='Calendar1.st';" class="btn btn-secondary btn-sm" title="오늘날짜">♥</button>
		</div>
		<br />
		<div class="text-center">
			<table class="table table-bordered" style="height: 450px">
				<tr class="table-dark text-dark">
					<th style="width: 14%; color: red; vertical-align: middle;">일</th>
					<th style="width: 14%; vertical-align: middle;">월</th>
					<th style="width: 14%; vertical-align: middle;">화</th>
					<th style="width: 14%; vertical-align: middle;">수</th>
					<th style="width: 14%; vertical-align: middle;">목</th>
					<th style="width: 14%; vertical-align: middle;">금</th>
					<th style="width: 14%; color: blue; vertical-align: middle;">토</th>
				</tr>
				<tr>
					<!-- 시작일 이전을 공백으로 처리한다.(해달 '년/월'의 1일이 수요일이면 startWeek가 4가 오기에 3칸을 공백처리한다. -->
					<c:forEach begin="1" end="${startWeek - 1}">
						<td>&nbsp;</td>
					</c:forEach>

					<!-- 해당월의 1일을 startWeek위치부터 출력한다.(날짜는 1씩 증가시켜주고, 7칸이 될때 줄바꿈 처리한다.) -->
					<c:set var="cell" value="${startWeek}"></c:set>
					<c:forEach begin="1" end="${lastDay}" varStatus="st">
					<c:set var="todaySw" value="${toYear==yy && toMonth==mm && toDay==st.count ? 1 : 0}"></c:set>
						<td id="td${cell}" ${todaySw==1 ? 'class=today' : ''}>${st.count}</td>
						<c:if test="${cell % 7 == 0}">
							<tr></tr>
						</c:if>
						<c:set var="cell" value="${cell + 1}"></c:set>
					</c:forEach>
				</tr>
			</table>
		</div>
	</div>
	<p>
		<br />
	</p>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>