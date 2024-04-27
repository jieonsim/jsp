<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String rememberId = request.getParameter("rememberId");
String mid = request.getParameter("mid");
String password = request.getParameter("password");

if ("admin".equals(mid) && "1234".equals(password)) {
    Cookie cookieMid = new Cookie("cMid", mid);
    if ("true".equals(rememberId)) {
        cookieMid.setMaxAge(60 * 60 * 24 * 30);
    } else {
        cookieMid.setMaxAge(0);
    }
    response.addCookie(cookieMid);
    response.sendRedirect(request.getContextPath() + "/study/homework/ex01_main.jsp?mid=" + mid);
} else {
    response.sendRedirect(request.getContextPath() + "/study/homework/ex01_login.jsp?error=true");
}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>쿠키로 아이디 저장 연습</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<input type="hidden" name="hostIp" value="<%=request.getRemoteAddr() %>"/>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>