<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "/include/certification.jsp"%>
<!-- t02_session.jsp -->
<%
	String sId = session.getId();
	pageContext.setAttribute("sId", sId);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>t02_session.jsp</title>
  <%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>세션 연습 메인 메뉴</h2>
  <hr/>
	<form name="myform" method="post" action="t02_sessionSave.jsp">
    <table class="table table-bordered text-center">
      <tr>
        <td colspan="2"><font size="5">로 그 인(세션아이디 : ${sId})</font></td>
      </tr>
      <tr>
        <th>아이디</th>
        <td><input type="text" name="mid" value="${sMid}" autofocus required class="form-control"/></td>
      </tr>
      <tr>
        <th>닉네임</th>
        <td><input type="text" name="nickName" value="${sNickName}" required class="form-control"/></td>
      </tr>
      <tr>
        <th>성명</th>
        <td><input type="text" name="name" value="${sName}" required class="form-control"/></td>
      </tr>
      <tr>
        <td colspan="2">
			    <button type="submit" class="btn btn-success mr-3 btn-sm">세션 저장</button>
			    <a href="t02_sessionCheck.jsp" class="btn btn-primary mr-3 btn-sm">세션 확인</a>
			    <a href="t02_sessionAllDelete.jsp" class="btn btn-danger mr-3 btn-sm">전체 세션 삭제</a>
			    <a href="t02_sessionDelete.jsp" class="btn btn-danger mr-3 btn-sm">개별 세션 삭제</a>
        </td>
      </tr>
    </table>
  </form>  
  <hr/>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>