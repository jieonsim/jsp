<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t04_applicationClear.jsp -->
<%
	application.setAttribute("aCount", 0);
%>
<script>
  alert("어플리케이션 값이 초기화 되었습니다.");
  location.href = "t04_storageTest.jsp";
</script>