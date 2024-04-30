<%@page import="study.j0429.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file = "/include/certification.jsp"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>jstl4_function</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>JSTL Function 연습</h2>
		<div class="text-right">
    	<button type="button" onclick="location.href='jstl1.jsp';" class="btn btn-success btn-sm">JSTL core 라이브러리</button>
    	<button type="button" onclick="location.href='jstl2.jsp';" class="btn btn-primary btn-sm">JSTL 반복문</button>
    	<button type="button" onclick="location.href='jstl3_vo.jsp';" class="btn btn-info btn-sm">JSTL 반복문 응용</button>
		<button type="button" onclick="location.href='jstl5_format.jsp';" class="btn btn-secondary btn-sm">JSTL Formatting</button>
 	</div>
 	<hr>
	<h2>JSTL function 라이브러리</h2>
	<pre>
		사용법 : $ { fn:함수명(변수/값,...) }
		관계연산자 : ==(eq), !=(ne), >(gt), <(lt), >=(ge), <=(le)
	</pre>
<%
	String str = "welcome to my homepage!";
	pageContext.setAttribute("str", str);
	
	String[] hobbies = {"등산", "낚시", "수영", "독서", "바둑", "승마", "바이크", "수집", "영화감상"};
	pageContext.setAttribute("hobbies", hobbies);
	
	ArrayList<MemberVO> vos = new ArrayList<MemberVO>();
	
	MemberVO vo = null;
	
	vo = new MemberVO();
	vo.setName("홍길동");
	vo.setAge(25);
	vo.setGender("남자");
	vo.setJob("학생");
	vo.setAddress("서울");
	vos.add(vo);
	
	request.setAttribute("vo", vo);
	
	vo = new MemberVO();
	vo.setName("김말숙");
	vo.setAge(33);
	vo.setGender("여자");
	vo.setJob("회사원");
	vo.setAddress("청주");
	vos.add(vo);
	
	vo = new MemberVO();
	vo.setName("이기자");
	vo.setAge(30);
	vo.setGender("남자");
	vo.setJob("공무원");
	vo.setAddress("제주");
	vos.add(vo);
	
	vo = new MemberVO();
	vo.setName("소나무");
	vo.setAge(53);
	vo.setGender("여자");
	vo.setJob("군인");
	vo.setAddress("인천");
	vos.add(vo);
	
	vo = new MemberVO();
	vo.setName("고인돌");
	vo.setAge(13);
	vo.setGender("남자");
	vo.setJob("학생");
	vo.setAddress("청주");
	vos.add(vo);
	
	pageContext.setAttribute("vos", vos);
%>
	<hr>
	<div>
		str 변수의 값 : ${str}<br>
		1-1. str 변수의 길이(length) : <%=str.length() %> / ${fn:length(str)} <br>
		1-2. hobbies 변수의 길이(length) : <%=hobbies.length %> / ${fn:length(hobbies)} <br>
		1-3. vos 변수의 길이(length) : <%=vos.size() %> / ${fn:length(vos)} <br>
		<hr>
		2-1. 대문자 변환(toUpperCase()) : <%=str.toUpperCase() %> / ${fn:toUpperCase(str)} <br>
		2-2. 대문자 변환(toLowercase()) : <%=str.toLowerCase() %> / ${fn:toLowerCase(str)} <br>
		<hr>
    	3-1.문자열추출(substring()) : <%=str.substring(0,5) %>	/ ${fn:substring(str, 0, 5)}<br/>
    	3-2.문자열추출(substring()) : <%=str.substring(5) %>	/ 
										<%-- ${fn:substring(str, 5)} --%>
										${fn:substring(str, 5, fn:length(str))} / ${fn:substring(str, 5, -1)}
										<br/>
		4-1. 특정 문자의 위치값(indexOf) : <%=str.indexOf("o") %> / ${fn.indexOf(str, 'o')}<br>
		4-2. 특정 문자의 위치값(lastIndexOf) : <%=str.lastIndexOf("o") %> / <br>
		4-3. str 변수의 값 중에서 'o' 문자가 들어있는 모든 위치를 출력하세요<br>
		<c:set var="cnt" value="0"></c:set>
		<c:forEach var="i" begin="0" end="${fn:length(str)-1}">
			<c:if test="${fn:substring(str, i, i+1) == 'o'}">
				<c:set var="cnt" value="${cnt + 1}"></c:set>
				${cnt} 번째 'o'의 위치값 : ${i} <br>
			</c:if>
		</c:forEach>
		str 변수의 'o' 문자의 개수는 ${cnt} 개 있습니다. <br>
		
		4-4. str변수의 'o' 문자의 2번째 위치값만 출력하시오. 숙제1<br>
		
		
		4-5. str변수의 'o' 문자의 마지막 위치값만 출력하시오. 숙제2<br>
		<hr>
		5. 문자열 추출(substrinigBefore() / substringAfter()) <br>
		문자 'o' 앞의 문자열을 출력 : ${fn:substringBefore(str, 'o')}<br>
		문자 'o' 뒤의 문자열을 출력 : ${fn:substringAfter(str, 'o')}<br>
		~~~~ 2번째 'o'의 위치값 출력 : 숙제 <br>
		<hr>
		
		6. 문자열 분리(split(변수, 분리할 문자 또는 문자열) : 문자열 분리 후에는 분리된 문자들이 모두 변수에 담아 줘야한다. 즉, 이번수는 배열이 된다.<br>
		예) str 변수 안의 문자열에서 'o'를 기준으로 분리해서 출력하시오
		<c:set var="strs" value="${fn:split(str, 'o')}"></c:set>
		<c:forEach var="s" items="${strs}" varStatus="st">
			${st.count}. ${s}<br>
		</c:forEach>
		str 변수의 'o' 문자의 개수 ${fn:length(strs) -1} 개 있습니다. <br>
		<hr>
	
		7. 치환(replace()) <br>
		예. str 변수 안의 'o'를 'O'로 치환
		<%=str.replace("o","O") %> / ${fn:replace(str, 'o','O')} <br>
		<!-- fn:replace = replaceAll의 기능을 가지고 있다. 개별로 replace하고 싶다면 먼저 replace처리를 원하는 글자를 꺼낸 후 처리 필요 -->
		<hr>
		
		8. 특정 문자 열의 포함 유무 : contains() 대소문자 구분을 함 <br>
		예1) str 변수에 'my'가 포함 유무? ${fn:contains(str, 'my')} <br>
		예2) str 변수에 'My'가 포함 유무? ${fn:contains(str, 'My')} <br>
	</div>	
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>