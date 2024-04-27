<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm bg-white navbar-white" style="box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);">
  <%-- <a class="navbar-brand" href="<%=request.getContextPath()%>/">Home</a> --%>
  <!-- <a class="navbar-brand" href="http://192.168.50.61:9090/javaclass/">Home</a> -->
  <a class="navbar-brand" href="http://192.168.0.10:9090/javaclass/">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Guest</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Board</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">PDS</a>
        <!-- posting data system (자료실)  -->
      </li>
      <li class="nav-item">
		  <div class="dropdown">
		    <button type="button" class="btn btn-outline-primary dropdown-toggle" data-toggle="dropdown">
		      Study1
		    </button>
		    <div class="dropdown-menu">
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0426/t01.jsp">서버환경</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0426/t02_0.jsp">성적계산</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0427_storage/t01_cookies.jsp">쿠키연습</a>
		      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/homework/ex01_login.jsp">아이디 저장 연습</a>
		    </div>
		  </div>
      </li>
    </ul>
  </div>  
</nav>