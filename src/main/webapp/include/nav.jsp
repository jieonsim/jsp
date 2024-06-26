<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/include/nav_css.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />

<%
	int level = session.getAttribute("sLevel")==null ? 999 : (int) session.getAttribute("sLevel");
	pageContext.setAttribute("level", level);
%>

<nav class="navbar navbar-expand-sm bg-white navbar-white" style="box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);">
  <div class="container">
    <%-- <a class="navbar-brand" href="<%=request.getContextPath()%>/">Home</a> --%>
  	<a class="navbar-brand custom-nav-navbar" href="http://192.168.50.61:9090/javaclass/main">Home</a>
    <!-- <a class="navbar-brand custom-nav-navbar" href="http://192.168.0.10:9090/javaclass/main">Home</a> -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link custom-nav-link" href="${ctp}/GuestList">Guest</a>
        </li>
        <c:if test="${level <= 4}">
	        <li class="nav-item">
	        <a class="nav-link custom-nav-link" href="BoardList.bo">Board</a>
	      	</li>
	     </c:if>
	      	<c:if test="${level <= 4 && (level > 1 || level == 0)}">
	      	<li class="nav-item">
	        <a class="nav-link custom-nav-link" href="PdsList.pds">PDS</a>
	        <!-- posting data system (자료실)  -->
	      	</li>
	      	<li class="nav-item">
			  <div class="dropdown">
			    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">Study1</button>
			    <div class="dropdown-menu">
			      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0426/t01.jsp">서버 환경</a>
			      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0426/t02_0.jsp">성적 계산</a>
			      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/homework/ex02_gugudan.jsp">구구단 계산</a>
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
			      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/0430_web_xml/lifeCycle/lifeCycle2.jsp">서블릿 생명주기</a>
			      <a class="dropdown-item" href="<%=request.getContextPath()%>/study/database/LoginList">데이터베이스 연습(회원메인방)</a>
			    </div>
			  </div>
	      	</li>
	      	<li class="nav-item">
			  <div class="dropdown">
			    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">Study2</button>
			    <div class="dropdown-menu">
			      <a class="dropdown-item" href="${ctp}/study/password/passCheck.jsp">비밀번호 암호화</a>
			      <a class="dropdown-item" href="${ctp}/mapping/test1">디렉토리 매핑연습</a>
			      <a class="dropdown-item" href="${ctp}/mapping/test2.do">확장자 매핑연습</a>
			      <a class="dropdown-item" href="${ctp}/mapping/test3.do3">확장자 매핑연습3</a>
			      <a class="dropdown-item" href="${ctp}/mapping/test4.do4">확장자 매핑연습4</a>
			      <a class="dropdown-item" href="${ctp}/mapping/test5.do5">확장자 매핑연습5(숙제)</a>
			      <a class="dropdown-item" href="${ctp}/ajaxTest1.st">AJAX 연습(일반)</a>
			      <a class="dropdown-item" href="${ctp}/ajaxTest2.st">AJAX 연습(응용)</a>
			      <a class="dropdown-item" href="${ctp}/ajaxTest3.st">AJAX 연습(회원관리)</a>
			      <a class="dropdown-item" href="${ctp}/uuidForm.st">UUID 연습</a>
			      <a class="dropdown-item" href="${ctp}/study/database/login.jsp">로그인 연습</a>
			      <a class="dropdown-item" href="Modal1.st">모달 연습1</a>
			      <a class="dropdown-item" href="Modal2.st">모달 연습2</a>
			      <a class="dropdown-item" href="FileUpload.st">파일 업로드</a>
			    </div>
			  </div>
	      	</li>
	      	<li class="nav-item">
			  <div class="dropdown">
			    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">Study3</button>
			    <div class="dropdown-menu">
			      <a class="dropdown-item" href="Calendar1.st">달력연습1</a>
			      <a class="dropdown-item" href="Calendar2.st">달력연습2</a>
			      <a class="dropdown-item" href="ScrollStudy.st">스크롤 연습</a>
			      <a class="dropdown-item" href="ScrollBasic.st">무한 스크롤 연습</a>
			      <a class="dropdown-item" href="Transaction.st">트랜잭션 연습</a>
			      <a class="dropdown-item" href="Error.st">에러페이지</a>
			    </div>
			  </div>
	      	</li>
        </c:if>
        <c:if test="${level <= 4}">
	      	<li class="nav-item">
			  <div class="dropdown">
			    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">mypage</button>
			    <div class="dropdown-menu">
			      <a class="dropdown-item" href="MemberMain.mem">회원메인방</a>
			      <c:if test="${level <= 4 && (level > 1 || level == 0)}">
			      	<a class="dropdown-item" href="Schedule.sc">일정관리</a>
			      	<a class="dropdown-item" href="WebMessage.wm">메시지관리</a>
				    <a class="dropdown-item" href="MemberList.mem">회원리스트</a>
			      </c:if>
			      <a class="dropdown-item" href="MemberPwdCheck.mem">회원정보수정</a>
			      <a class="dropdown-item" href="MemberDelete.mem">회원탈퇴</a>
			      <c:if test="${level == 0}">
			      <a class="dropdown-item" href="AdminMain.ad">관리자메뉴</a>
			      </c:if>
			    </div>
			  </div>
	      	</li>
	   </c:if>
      </ul>
      <ul class="navbar-nav ml-auto">
          <li class="nav-item">
      		<c:if test="${level <= 4}">
            	<a class="nav-link custom-nav-link" href="${ctp}/MemberLogout.mem" id="logout">Logout</a>
          	</c:if>
          </li>
          <li class="nav-item">
          	<c:if test="${level > 4}">
            	<a class="nav-link custom-nav-link mr-3" href="${ctp}/MemberLogin.mem" id="login">Login</a>
          	</c:if>
          </li>
          <li class="nav-item">
          	<c:if test="${level > 4}">
            <a class="nav-link custom-nav-link" href="${ctp}/MemberJoin.mem" id="Join">Join</a>
            </c:if>
          </li>
      </ul>
    </div>
  </div>
</nav>