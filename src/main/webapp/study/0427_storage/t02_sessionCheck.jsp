<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t02_sessionCheck.jsp -->
<%
	String sessionName = "";
	String sessionName_ = "";
	String sessionValue = "";
	
	Enumeration enumCheck = session.getAttributeNames();
	
	// enumCheck가 있을 때까지
 	while(enumCheck.hasMoreElements()) {
		sessionName_ = enumCheck.nextElement().toString();
		sessionName += sessionName_ + "/";
		sessionValue += session.getAttribute(sessionName_) + "/";
	}
	
/* 	while(enumCheck.hasMoreElements()) {
	    String attributeName = enumCheck.nextElement().toString();
	    Object attributeValue = session.getAttribute(attributeName);
	    sessionName += attributeName + "/";
	    sessionValue += (attributeValue != null ? attributeValue.toString() : "null") + "/";
	} 위아래 모두 동일한 결과나옴 */

	System.out.println(sessionName + "\n" + sessionValue);

	String mid = (String)session.getAttribute("sMid");
	String nickName = (String)session.getAttribute("sNickName");
	String name = (String)session.getAttribute("sName");
	
	pageContext.setAttribute("mid", mid);
	pageContext.setAttribute("nickName", nickName);
	pageContext.setAttribute("name", name);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>t02_sessionCheck.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<div class="container mt-5">
	<h2>세션값 출력</h2>
	<p>아이디 : ${mid}</p>
	<p>별명 : ${nickName}</p>
	<p>이름 : ${name}</p>
	<hr>
	<p><a href="t02_session.jsp" class="btn btn-success">돌아가기</a></p>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>