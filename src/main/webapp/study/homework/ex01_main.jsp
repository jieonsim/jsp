<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String mid = request.getParameter("mid");
String password = request.getParameter("password");
String hostIp = request.getRemoteAddr();
pageContext.setAttribute("hostIp", hostIp);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>쿠키로 아이디 저장 연습</title>
	<%@ include file = "/include/bs4.jsp" %>
	<script>
		function logout() {
			alert('<%=mid %>님 로그아웃 되었습니다.');
			location.href = '<%=request.getContextPath() %>/study/homework/ex01_login.jsp';
		}
		
		function displayHostInfo() {
			let hostInfoDiv = document.getElementById('hostInfo');
			
			if(hostInfoDiv.style.display === 'none' || hostInfoDiv.style.display === '') {
				hostInfoDiv.style.display = 'block';
			} else {
				hostInfoDiv.style.dispaly = 'none';
			}
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<div class="member-container text-center" style="max-width: 600px; margin: auto; padding: 20px;">
		<h3>회원 전용 방</h3>
		<p>현재 <%=mid %>님 로그인 중입니다.</p>
		<hr/>
		<button type="button" class="btn btn-success" id="displayHostInfoBtn" onclick="displayHostInfo()">접속조회</button>
		<a href="ex01_login.jsp" class="btn btn-warning" onclick="logout()">로그아웃</a>	
	</div>
	<div class="host-container text-center" id="hostInfo" style="max-width: 700px; margin: auto; padding: 20px; display: none;">
	<hr/>
	<h3>서버 환경 변수 정보</h3>
	<div>1. 호스트 IP : <%=hostIp %></div>
	<div>2. 접속 URL : <%=request.getRequestURL() %></div>
	<div>3. ContextPath명 : <%=request.getContextPath() %></div>
	<div>4. 접속 프로토콜 : <%=request.getProtocol() %></div>
	<div>5. 전송 방식 : <%=request.getMethod() %></div>
	<hr/>
	<button type="button" class="btn btn-primary" onclick="location.reload()">새로고침</button>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>