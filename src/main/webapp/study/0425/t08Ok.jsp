<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String img = request.getParameter("img");
String[] imgs = request.getParameterValues("img2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>t08Ok.jsp</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<h3>선택한 그림1</h3>
		<p>
			<%
			out.println("<div><img src='" + request.getContextPath() + "/images/" + img + ".jpg' width='200px'></div>");
			%>
		</p>
		<h3>선택한 그림2</h3>
		<p>
			<%
			if (imgs != null) {
				for (String img2 : imgs) {
					out.println("<div><img src='" + request.getContextPath() + "/images/" + img2 + ".jpg' width='200px'></div>");
				}
			}
			%>

		</p>
		<div>
			<a href="t08_이미지숙제.jsp" class="btn btn-warning">돌아가기</a>
		</div>
	</div>
</body>
</html>