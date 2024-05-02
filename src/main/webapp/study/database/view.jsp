<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
/* mvc 패턴
  request.setCharacterEncoding("utf-8");
  String mid = request.getParameter("mid");
  String name = request.getParameter("name");
  
  pageContext.setAttribute("mid", mid);
  pageContext.setAttribute("name", name); */
%>

<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>view.jsp</title>
<%@ include file="/include/bs4.jsp"%>
<script>
	'use strict';
	
	function deleteCheck1() {
		let ans = confirm("정말 탈퇴하시겠습니까?");
		if(ans) {
			location.href = "${ctp}/database/LoginDelete?mid=${vo.mid}";
			/* 아이디 중복체크를 했다는 가정하에 mid로 넘김. 회원가입 시 mid 중복체크해야함 */
		}
	}
	function deleteCheck2() {
		let ans = confirm("정말 삭제하시겠습니까?");
		if(ans) {
			location.href = "${ctp}/database/LoginDelete?mid=${vo.mid}";
			/* 아이디 중복체크를 했다는 가정하에 mid로 넘김. 회원가입 시 mid 중복체크해야함 */
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
		<form name="myform" method="post" action="${ctp}/database/UpdateOk">
			<table class="table table-bordered text-center">
				<tr>
					<td colspan="2"><font size="5">회 원 상 세 정 보</font></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td class="text-left">${vo.mid}</td>
<%-- 					<td><input type="text" name="mid" value="${vo.mid}" autofocus
						readonly class="form-control" /></td> --%>
						<!-- readonly로 아이디는 수정 불가하도록 하거나 아예 input 태그 없이 입력된 아이디 출력만 하여 수정 불가하도록 -->
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd" value="${vo.pwd}"
						value="1234" required class="form-control" /></td>
				</tr>
				<tr>
					<th>성명</th>
					<td><input type="text" name="name" value="${vo.name}" required
						class="form-control" /></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input type="number" name="age" value="${vo.age}"
						value="20" class="form-control" /></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" name="gender" value="남자"
						<c:if test="${vo.gender=='남자'}">checked</c:if> /> 남자 &nbsp; <input
						type="radio" name="gender" value="여자"
						<c:if test="${vo.gender=='여자'}">checked</c:if> /> 여자</td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" value="${vo.address}"
						class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="row">
							<div class="col text-left">
								<input type="submit" value="수정" class="btn btn-success mr-2" />
								<!-- 로그인한 아이디로 내 정보를 조회 했을 때는 탈퇴가 보이고, 다른 사람의 정보를 조회했을 때는 삭제가 보이도록 처리 -->
								<c:if test="${sMid == vo.mid}">
									<input type="button" value="탈퇴" onclick="deleteCheck1()" class="btn btn-danger mr-2" />
								</c:if>
								<c:if test="${sMid != vo.mid}">
									<input type="button" value="삭제" onclick="deleteCheck2()" class="btn btn-danger mr-2" />
								</c:if>
							</div>
							<div class="col text-right">
								<input type="button" value="돌아가기" onclick="location.href='${ctp}/study/database/LoginList';" class="btn btn-primary mr-4"/>
								<!-- <input type="button" value="돌아가기" onclick="history.back()"
									class="btn btn-primary mr-4" /> history.back() 쓰면 변경 전 정보가 보여지게 되므로 유의해서 써야함-->
							</div>
						</div>
					</td>
				</tr>
			</table>
		<input type="hidden" name="idx" value="${vo.idx}" />
		<!-- hidden은 폼태그 위에 넣기. idx는 고객들에게 보여주지 않아도 정보이지만, 정보 수정을 위해서는 서블릿에서 필요하기 때문에 hidden으로 -->
		</form>
	</div>
	<p>
		<br />
	</p>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>