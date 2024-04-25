<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/* 인코딩 시 한글 깨짐 방지 */
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	/*계산 안하면 그냥 string으로 받아도 됨*/
	String user = request.getParameter("user");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t02Ok.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<h3>전송된 값</h3>
	<hr/>
	<div class="mb-3">
		이름 : <%=name%>
	</div>
	<div class="mb-3">
		나이 : <%=age%>
	</div>
	<div class="mb-3">
		유저 : <%=user%>
	</div>
	<hr/>
	<%
		if(user.equals("admin")) {
			out.println("관리자님 환영합니다.");
		} else {
			out.println("고객님 반갑습니다.");
		}
	%>
	<hr/>
	<div>
		<a href="t02_1.jsp" class="btn btn-warning">돌아가기</a>
	</div>
</div>
</body>
</html>