<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t12_form.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<h2>회 원 가 입</h2>
	<br/>
	<form name="myform" method="post" action="<%=request.getContextPath() %>/j0425/T12Ok">
		<div class="mb-3">이름
			<input type="text" name="name" value="홍길동" class="form-control mb-3" autofocus required />
		</div>
		<div class="mb-3">나이
			<input type="number" name="age" value="20" class="form-control mb-3" required/>
		</div>
		<div class="mb-3">성별 &nbsp;&nbsp;
			<input type="radio" name="gender" value="남자" />남자 &nbsp;
			<input type="radio" name="gender" value="여자" checked />여자		
		</div>
		<div class="mb-3">취미 &nbsp;&nbsp;
		<!-- 여기서는 아이디 생략되었지만 실제로는 줘야함 -->
			<input type="checkbox" name="hobby" value="등산" />등산 &nbsp;
			<input type="checkbox" name="hobby" value="낚시" />낚시 &nbsp;
			<input type="checkbox" name="hobby" value="바둑" />바둑 &nbsp;
			<input type="checkbox" name="hobby" value="수영" />수영 &nbsp;
			<input type="checkbox" name="hobby" value="배드민턴" />배드민턴 &nbsp;
			<input type="checkbox" name="hobby" value="바이크" />바이크
		</div>
		<div class="mb-3">
			<label for="job" class="form-label">직업</label>
			<select name="job">
				<option value="">선택</option>
				<option>회사원</option>
				<option>공무원</option>
				<option>군인</option>
				<option>의사</option>
				<option>자영업</option>
				<option>가사</option>
			</select>
		</div>
		<div class="mb-3">
			<label for="mountain" class="form-label">다녀온 산</label>
			<select name="mountain" class="form-control" size="5" multiple>
				<option>백두산</option>
				<option>한라산</option>
				<option>태백산</option>
				<option>속리산</option>
				<option>소백산</option>
				<option>금강산</option>
				<option>우암산</option>
				<option>대둔산</option>
				<option>보문산</option>
			</select>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">자기소개</label>
			<textarea rows="6" name="content" class="form-control"></textarea>
		</div>
		<div class="mb-3">
			<label for="file" class="form-label">첨부파일</label>
			<input type="file" name="fileName" class="form-control-file border"/>
		</div>
		<div>
			<input type="submit" value="전송(submit)" class="btn btn-success" />
		</div>
	</form>
</div>
</body>
</html>