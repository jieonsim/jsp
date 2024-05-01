<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/include/nav.css">

<%
  String mid_ = session.getAttribute("sMid")==null ? "" : (String) session.getAttribute("sMid");
%>

<nav class="navbar navbar-expand-sm bg-white navbar-white" style="box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);">
  <div class="container">
    <%-- <a class="navbar-brand" href="<%=request.getContextPath()%>/">Home</a> --%>
  	<a class="navbar-brand custom-nav-navbar" href="http://192.168.50.61:9090/javaclass/">Home</a>
    <!-- <a class="navbar-brand custom-nav-navbar" href="http://192.168.0.10:9090/javaclass/">Home</a> -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link custom-nav-link" href="#">Guest</a>
        </li>
        <%if(!mid_.equals("")) {%>
        <li class="nav-item">
        <a class="nav-link custom-nav-link" href="#">Board</a>
      	</li>
      	<li class="nav-item">
        <a class="nav-link custom-nav-link" href="#">PDS</a>
        <!-- posting data system (자료실)  -->
      	</li>
      	<li class="nav-item">
		  <div class="dropdown">
		    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
		      Study1
		    </button>
		    <div class="dropdown-menu">
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0426/t01.jsp">서버 환경</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0426/t02_0.jsp">성적 계산</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0427_storage/t01_cookies.jsp">쿠키 연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0427_storage/t02_session.jsp">세션 연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0427_storage/t03_application.jsp">어플리케이션 연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0427_storage/t04_storageTest.jsp">storage(저장소) 연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/homework/ex01_login.jsp">쿠키를 이용한 로그인 시 아이디 저장 연습(mine)</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/homework/ex1_Login.jsp">쿠키를 이용한 로그인 시 아이디 저장 연습(teacher)</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0429_JSTL/el1.jsp">EL(Expression Language) 연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0429_JSTL/jstl1.jsp?jumsu=85&code=K">JSTL(Java Standard Tag Library) 연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0430_web_xml/filter/t1_Filter.jsp">Filter 한글 연습</a>
		      <%-- <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0430_web_xml/filter/t2_Certification.jsp">인증코드 발행(관리자)</a> --%>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0430_web_xml/init/t03_init.jsp">초기값 확인(init)</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/database/LoginList">데이터베이스 연습(회원메인방)</a>
		    </div>
		  </div>
      	</li>
        <% } %>
      </ul>
      <ul class="navbar-nav ml-auto">
        <%if(!mid_.equals("")) {%>
          <li class="nav-item">
            <a class="nav-link custom-nav-link" href="${pageContext.request.contextPath}/database/Logout" id="logout">Logout</a>
          </li>
        <% } else { %>
          <li class="nav-item">
            <a class="nav-link custom-nav-link" href="<%=request.getContextPath()%>/study/database/login.jsp" id="login">Login</a>
          </li>
        <% } %>
      </ul>
    </div>
  </div>
</nav>