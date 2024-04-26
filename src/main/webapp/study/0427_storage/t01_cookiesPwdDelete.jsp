<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- t01_cookiesPwdDelete.jsp -->
<%
Cookie[] cookies = request.getCookies();

for (int i = 0; i < cookies.length; i++) {
	if (cookies[i].getName().equals("cPwd")) {
		// 쿠키 만료 시간을 0으로 주면 삭제된다.
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
	}
}
%>
<script>
	alert('비밀번호 쿠키가 삭제되었습니다.');
	location.href = "t01_cookies.jsp";
</script>