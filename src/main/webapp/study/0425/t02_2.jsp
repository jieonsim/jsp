<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t02_2.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		'use strict';

		function fCheck() {
			// 정규식 넣을 것!
			
			/* name과 age 모두 id를 이용 */
			let name = document.getElementById('name');
			let age = document.getElementById('age');
			
			if(name.value.trim() == '') {
				alert('이름을 입력하세요.');				
				document.getElementById('name').focus();
				return false;
			} else if (age.value.trim() == '') {
				alert('나이를 체크해주세요.');
				document.getElementById('age').focus();
				return false;
			} else {
				/* myform.submit(); */
				/* ↓ myform 없을 때 처리 */
				location.href="t02Ok.jsp?name="+name.value+"&age="+age.value;
				/* 같은 위치라 별도 경로 안줬음. servelt이면 경로 줘야함 */
				/* 서버에서는 백틱 사용 불가 */
			}
		}
	</script>
</head>
<body>
<div class="container mt-5">
	<h2>값 전송 연습(Get / Post)</h2>
 	<!-- <form name="myform" method="post" action="t02Ok.jsp"> -->
	<!-- <form name="myform" method="get" action="t02Ok.jsp"> -->
		<div>이름
			<input type="text" name="name" id="name" value="홍길동" class="form-control mb-3" autofocus required />
		</div>
		<div>나이
			<input type="number" name="age" id="age" value="20" class="form-control mb-3" />
		</div>
		<div>
			<input type="submit" value="바로전송(submit)" class="btn btn-success mr-3" />
			<input type="button" value="체크 후 전송(submit)" onclick="fCheck()" class="btn btn-primary" />
			<!-- submit : form태그에서 submit을 쓰면 action으로 바로 감, 처리할 내용 있어도 신경쓰지 않고 바로 보냄, 그래서 유효성 검사 등이 필요할 때 submit을 쓰면 안됨 -->
			<!-- button : 유효성 검사 등 별도 처리할 내용이 있을 때 button을 이용해야 함, button은 무조건 onclick이 있어야 함 -->
		</div>
	<!-- </form> -->
</div>
</body>
</html>