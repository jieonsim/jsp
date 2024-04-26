<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 	String hostIp = request.getRemoteAddr();

	// 생명주기에 따라 달라짐
	// request : 페이지 변경되면 값 날라감
	/* request.setAttribute("hostIp", hostIp); */
	// pageContext : 현재 페이지가 유지된다면 생명주기가 살아있는 것
	pageContext.setAttribute("hostIp", hostIp);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>t01.jsp</title>
  <%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<%@ include file = "/include/header.jsp" %>
<%@ include file = "/include/nav.jsp" %>
<p><br/></p>
<div class="container">
  <h2>서버의 환경변수값 확인하기</h2>
  <hr/>
  <div>1. 호스트 IP(1) : ${hostIp}</div>
  <div>2. 호스트 IP(2) : <%=hostIp %></div>
  <div>3. 전송 방식 : <%=request.getMethod() %></div>
  <div>4. 접속 프로토콜 : <%=request.getProtocol() %></div>
  <div>5. 접속(서버) 포트 : <%=request.getServerPort() %></div>
  <div>6. 접속(서버) 이름 : <%=request.getServerName() %></div>
  <div>7. 접속 Context 이름 : <%=request.getContextPath() %></div>
  <div>8. 접속 URL : <%=request.getRequestURL() %></div>
  <div>9. 접속 URI : <%=request.getRequestURI() %></div>
  <!-- URI : 식별자 / URL과 URI는 별개 -->
</div>
<p><br/></p>
<%@ include file = "/include/footer.jsp" %>
</body>
</html>