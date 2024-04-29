<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "/include/certification.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>el1.jsp</title>
<%@ include file="/include/bs4.jsp"%>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<jsp:include page="/include/nav.jsp" />
	<div class="container mt-5">
		<h2>EL(Expression Language)</h2>
		<p>저장소(서버저장소: ServletContextContainer)에 기록되어 있는 자료에 대한 처리를 담당</p>
		<hr>
		<pre>
		용도 : 사용자가 '변수/값/수식/객체' 등을 전송받은 후에 저장 또는 기타 처리하는 용도로 사용함
		표기법 : $ {변수/값/객체}
		서버저장소 : Application / Session / PageContext / Request
		EL을 사용하려면 반드시 저장소에 '변수/값/수식/객체'가 저장되어있어야만 한다.
		</pre>
		<hr>
		<%
		String atom = "Seoul";
		String name = "홍길동";
		int su1 = 100;
		int su2 = 200;
		String su3 = "300";
		String su4 = "400";
		%>
		<h4>스크립틀릿을 이용한 출력</h4>
		<div>
			atom = <%=atom %><br>
			name = <%=name %><br>
			su1 = <%=su1 %><br>
			su2 = <%=su2 %><br>
			su3 + su4 = <%=(su3 + su4) %>
			<%-- su3 * su4 = <%=(su3 * su4) %> --%>
		</div>
		<hr>
		<div>
			<h4>EL을 이용한 출력</h4>
<%
			request.setAttribute("atom", atom);
			pageContext.setAttribute("name", name);
			/* session, application할 필요 X , 현재 페이지에만 살아있으면 될 경우 pageContext를 이용하면됨 */
			pageContext.setAttribute("su1", su1);
			pageContext.setAttribute("su2", su2);
			pageContext.setAttribute("su3", su3);
			pageContext.setAttribute("su4", su4);
%>			
			atom = ${atom}<br>
			name = ${name}<br>
			su1 = ${su1}<br>
			su2 = ${su2}<br>
			su3 + su4 = ${su3 + su4}<br>
			su3 * su4 = ${su3 * su4}
			<!-- EL 이용 시 숫자도 연산이 된다. -->
		</div>
		<hr>
		<h4>파라메터를 통해서 넘어온 값의 처리(Query String 형식)</h4>
		<div>Form태그의 get/post 방식의 전송이나 URL을 통한 값의 전송(주소?변수1=값1&변수2=값2...)되는 값의 처리</div>
		<div>
		주소 창에 현재 주소 뒤에 '?mbc=200&kbs=50' 을 입력 후 아래 내용을 확인하시오.<br>
			mbc = ${param.mbc}<br>
			kbs = ${param.kbs}<br>
			mbc - kbs = ${param.mbc - param.kbs}
		</div>
		<hr>
		<div>
			<form name="myform" method="post" action="${pageContext.request.contextPath}/j0429/ELTest">
				<h2 class="text-center mb-5">Form 자료 전송 연습</h2>			
				<div>성명 : 
					<input type="text" name="name" value="홍길동"	class="form-control mb-3"/>		
				</div>
				<div>취미 : 
					<input type="checkbox" name="hobby" value="등산" checked/>등산	 &nbsp;
					<input type="checkbox" name="hobby" value="낚시"/>낚시	 &nbsp;
					<input type="checkbox" name="hobby" value="수영"/>수영	 &nbsp;	
					<input type="checkbox" name="hobby" value="뜨개"/>뜨개	 &nbsp;	
					<input type="checkbox" name="hobby" value="낮잠"/>낮잠	 &nbsp;	
					<input type="checkbox" name="hobby" value="영화보기"/>영화보기 &nbsp;		
					<input type="checkbox" name="hobby" value="산책"/>산책	 &nbsp;	
					<input type="checkbox" name="hobby" value="바이크"/>바이크	&nbsp; 	
					<input type="checkbox" name="hobby" value="승마"/>승마	 &nbsp;	
				</div>
				<div>
					<input type="submit" value="전송" class="btn btn-success form-control mt-3 mb-3" />
				</div>
			</form>
		</div>
		<%
		name = request.getParameter("name")==null ? "" : request.getParameter("name");
		if(!name.equals("")) {
		%>
			<p>이름 : ${name}</p>
			<p>취미 : ${hobby}</p>
		<%}
		%>
	</div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>