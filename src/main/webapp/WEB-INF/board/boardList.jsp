<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>boardList.jsp</title>
	<jsp:include page="/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<table class="table table-borderless m-0 p-0">
		<tr>
			<td colspan="2">
				<h2 class="text-center" style="letter-spacing: 10px">게시판 리스트</h2>
			</td>
		</tr>
		<tr>
			<td>
				<c:if test="${sLevel != 1}">
					<a href="BoardInput.bo" class="btn btn-success btn-sm">글쓰기</a>
				</c:if>
			</td>
		</tr>
	</table>
	<table class="table table-hover m-0 p-0">
		<tr class="table-dark text-dark">
			<th>글번호</th>
			<th>글제목</th>
			<th>글쓴이</th>
			<th>작성일자</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="vo" items="${vos}" varStatus="st">
			<tr>
				<td>${vo.idx}</td>
				<td>${vo.title}</td>
				<td>${vo.nickName}</td>
				<td>${vo.wDate}</td>
				<td>${vo.readNum}</td>
			</tr>
		</c:forEach>
		<tr><td colspan="5" class="m-0 p-0"></td></tr>
	</table>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>