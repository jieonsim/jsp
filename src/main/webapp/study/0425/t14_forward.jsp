<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t14_forward.jsp</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		'use strict';
		
		if('${loginFlag}' == 'NO') {
			alert('회원 정보를 확인 후 다시 로그인해주세요.');
		} else {
			
		}
	</script>
</head>
<body>
<div class="container mt-5">
	<h2>Forward를 통한 값의 전달 방법</h2>
	<hr/>
	<pre>
		HTTP 프로토콜은 클라이언트(End User: 사용자)가 서버에 요청(Request)하고,
		서버가 응답(Response)하면서 한 번의 과정이 종료된다.
		
		이 때 데이터가 주고받는 작업 단위를 트랜잭션(Transaction)이라고 한다. 
		
		RequestDispatch 인터페이스는 클라이언트의 요청에 의해	 컨테이너에 생성된
		request와 response를 다른 리소스(서블릿, html, jsp, 이미지)로 넘겨주는 역할을 한다.
		
		이런 역할을 직접 수행하는 메소드가 RequestDispatch 인터페이스의 forward() 메소드이다.
		
		HTTP 통신의 응답(Response)이 완료되기 전에 서버에 계속 요청(Request)할 수 있는데,
		이것은 모두 컨테이너에 담겨있고 forward()에 의해서 응답(Response) 시에 클라이언트에 한 번에 전달되게 된다.
	</pre>
	<form name="myform" method="post" action="<%=request.getContextPath()%>/j0425/T14Ok1">
  	<div>아이디
  	  <input type="text" name="mid" value="admin" class="form-control mb-3" autofocus required />
  	</div>
  	<div>비밀번호
  	  <input type="password" name="pwd" value="1234" class="form-control mb-3" required />
  	</div>
  	<div>보안키
  	  <input type="password" name="secureKey" class="form-control mb-3" required />
  	</div>
  	<div>
  	  <input type="submit" value="로그인" class="btn btn-success"/>
  	  <input type="reset" value="다시입력" class="btn btn-warning"/>
  	</div>
  	<hr/>
  	</form>
</div>
</body>
</html>