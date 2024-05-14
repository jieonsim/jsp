<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
pageContext.setAttribute("newLine", "\n");
%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>boardContent.jsp</title>
<%@ include file="/include/bs4.jsp"%>
<style>
th {
	text-align: center;
	background-color: #eee;
}
</style>
<script>
	'use strict';
	
	function boardDelete() {
		let ans = confirm("현재 게시글을 삭제하시겠습니까?");
		if(ans) location.href = "BoardDelete.bo?idx=${vo.idx}";
		
	}
	
	// 빨간하트 (중복허용)
	function goodCheck() {
		$.ajax({
			url : "BoardGoodCheck.bo",
			type : "post",
			// 문자 데이터 보낼 때는 따옴표 필수로 써야함
			data : {idx : ${vo.idx}},
			success : function(res) {
				if(res != "0") location.reload();
			},
			error : function() {
				alert("전송 오류");
			}
		});
	}
	
	// 파란하트 (중복불가)
	function goodCheck2() {
		$.ajax({
			url : "BoardGoodCheck2.bo",
			type : "post",
			data : {idx : ${vo.idx}},
			success : function(res) {
				if(res != "0") location.reload();
				else (alert("이미 좋아요 버튼을 클릭하셨습니다."));
			},
			error : function() {
				alert("전송 오류");
			}
		});
	}
	
	// 좋아요 (중복허용)
	function goodCheckPlus() {
		$.ajax({
			url : "BoardGoodCheckPlusMinus.bo",
			type : "post",
			// 문자 데이터 보낼 때는 따옴표 필수로 써야함
			data : {
				idx : ${vo.idx}, 
				goodCnt : +1
			},
			success : function(res) {
				if(res != "0") location.reload();
				
			},
			error : function() {
				alert("전송 오류");
			}
		});
	}
	
	// 싫어요 (중복불허)
	function goodCheckMinus() {
		$.ajax({
			url : "BoardGoodCheckPlusMinus.bo",
			type : "post",
			// 문자 데이터 보낼 때는 따옴표 필수로 써야함
			data : {
				idx : ${vo.idx}, 
				goodCnt : -1
			},
			success : function(res) {
				location.reload();
			},
			error : function() {
				alert("전송 오류");
			}
		});
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
		<h2 class="text-center mb-4">글 내용 보기</h2>
		<table class="table table-bordered">
			<tr>
				<th>닉네임</th>
				<td>${vo.nickName}</td>
				<th>작성일자</th>
				<td>${fn:substring(vo.wDate, 0, 16)}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${vo.readNum}</td>
				<th>접속IP</th>
				<td>${vo.hostIp}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">
					${vo.title} (<a href="javascript:goodCheck()">💖</a> : ${vo.good}) &nbsp;
					<a href="javascript:goodCheckPlus()">👍</a> &nbsp;
					<a href="javascript:goodCheckMinus()">👎</a>
					(<a href="javascript:goodCheck2()">💙</a> : ${vo.good})
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3" style="height: 220px">${fn:replace(vo.content, newLine, "<br/>")}</td>
			</tr>
			<tr>
				<!-- 페이징 처리할 때 boardlist.bo갈 때 페이지 번호랑 페이징 사이즈 가져가야함, 검색할 때는 검색 필드와 검색 스트링도 가져가야함 -->
				<td colspan="4">
				<div class="row">
					<div class="col">
					<!-- 이전 페이지의 위치 그대로 돌아가기 위해 pag랑 pagesize도 넘겨야함 -->
						<input type="button" value="돌아가기" onclick="location.href='BoardList.bo?pag=${pag}&pageSize=${pageSize}';" class="btn btn-warning text-center" />
					</div>
					<c:if test="${sNickName == vo.nickName || sLevel == 0}">
						<div class="col text-right">
							<input type="button" value="수정" onclick="location.href='BoardUpdate.bo?idx=${vo.idx}&pag=${pag}&pageSize=${pageSize}';" class="btn btn-primary" />
							<input type="button" value="삭제" onclick="boardDelete()" class="btn btn-danger" />
						</div>
					</c:if>
				</div>
				</td>
			</tr>
		</table>
		<!-- 이전글 / 다음글 출력하기 -->
		<table class="table table-borderless">
			<tr>
				<td>
					<c:if test="${!empty nextVo.title}">
	        			☝ <a href="BoardContent.bo?idx=${nextVo.idx}">다음글 : ${nextVo.title}</a><br/>
					</c:if>
					<c:if test="${!empty preVo.title}">
        			👇 <a href="BoardContent.bo?idx=${preVo.idx}">이전글 : ${preVo.title}</a><br/>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
<p><br /></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>