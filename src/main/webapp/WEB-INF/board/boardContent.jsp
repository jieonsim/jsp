<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>boardContent.jsp</title>
  <%@ include file = "/include/bs4.jsp" %>
  <style>
    th {
      text-align: center;
      background-color: #eee;
    }
  </style>
  <script>
    'use strict';
    
    function boardDelete() {
    	let ans = confirm("현재 게시글을 삭제 하시겠습니까?");
    	if(ans) location.href = "BoardDelete.bo?idx=${vo.idx}";
    }
    
    // 좋아요 처리(중복허용)
    function goodCheck() {
    	$.ajax({
    		url  : "BoardGoodCheck.bo",
    		type : "post",
    		data : {idx : ${vo.idx}},
    		success:function(res) {
    			if(res != "0") location.reload();
    		},
    		error : function() {
    			alert("전송오류");
    		}
    	});
    }
    
    // 좋아요 처리(중복불허)
    function goodCheck2() {
    	$.ajax({
    		url  : "BoardGoodCheck2.bo",
    		type : "post",
    		data : {idx : ${vo.idx}},
    		success:function(res) {
    			if(res != "0") location.reload();
    			else alert("이미 좋아요 버튼을 클릭하셨습니다.");
    		},
    		error : function() {
    			alert("전송오류");
    		}
    	});
    }
    
    // 좋아요(따봉)수 증가 처리(중복허용)
    function goodCheckPlus() {
    	$.ajax({
    		url  : "BoardGoodCheckPlusMinus.bo",
    		type : "post",
    		data : {
    			idx : ${vo.idx},
    			goodCnt : +1
    		},
    		success:function(res) {
    			location.reload();
    		},
    		error : function() {
    			alert("전송오류");
    		}
    	});
    }
    
    // 좋아요(따봉)수 감소 처리(중복허용)
    function goodCheckMinus() {
    	$.ajax({
    		url  : "BoardGoodCheckPlusMinus.bo",
    		type : "post",
    		data : {
    			idx : ${vo.idx},
    			goodCnt : -1
    		},
    		success:function(res) {
    			if(res != "0") location.reload();
    		},
    		error : function() {
    			alert("전송오류");
    		}
    	});
    }
    
    // 신고시 '기타'항목 선택시에 textarea 보여주기
    function etcShow() {
    	$("#complaintTxt").show();
    }
    
    // 신고화면 선택후 신고사항 전송하기
    function complaintCheck() {
    	if (!$("input[type=radio][name=complaint]:checked").is(':checked')) {
    		alert("신고항목을 선택하세요");
    		return false;
    	}
    	//if($("input[type=radio][id=complaint7]:checked") && $("#complaintTxt").val() == "") 
    	if($("input[type=radio]:checked").val() == '기타' && $("#complaintTxt").val() == "") {
    		alert("기타 사유를 입력해 주세요.");
    		return false;
    	}
    	
    	let cpContent = modalForm.complaint.value;
    	if(cpContent == '기타') cpContent += '/' + $("#complaintTxt").val();
    	
    	//alert("신고내용 : " + cpContent);
    	let query = {
    			part : 'board',
    			partIdx : ${vo.idx},
    			cpMid : '${sMid}',
    			cpContent : cpContent
    	}
    	
    	$.ajax({
			url : "boardComplaintInput.ad",	
			type : "post",
			data : query,
			success : function(res) {
				if(res != "0") {
					alert("신고되었습니다.");
					loaction.reload();
				} else alert("신고 실패");
			},
			error : function() {
				alert("전송 오류");
			}
    	});
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center mb-4">글 내 용 보 기</h2>
  <table class="table table-bordered">
    <tr>
      <th>글쓴이</th>
      <td>${vo.nickName}</td>
      <th>글쓴날짜</th>
      <td>${fn:substring(vo.wDate, 0, 16)}</td>
    </tr>
    <tr>
      <th>글조회수</th>
      <td>${vo.readNum}</td>
      <th>접속IP</th>
      <td>${vo.hostIp}</td>
    </tr>
    <tr>
      <th>글제목</th>
      <td colspan="3">
        ${vo.title} (<a href="javascript:goodCheck()">❤</a> : ${vo.good}) /
        <a href="javascript:goodCheckPlus()">👍</a> &nbsp;
        <a href="javascript:goodCheckMinus()">👎</a> /
        (<a href="javascript:goodCheck2()"><font color="blue" size="5">♥</font></a> : ${vo.good})
      </td>
    </tr>
    <tr>
      <th>글내용</th>
      <td colspan="3" style="height:220px">${fn:replace(vo.content, newLine, "<br/>")}</td>
    </tr>
    <tr>
      <td colspan="4">
        <div class="row">
	        <div class="col">
	        	<input type="button" value="돌아가기" onclick="location.href='BoardList.bo?pag=${pag}&pageSize=${pageSize}';" class="btn btn-warning" />
	        </div>
	        <c:if test="${sNickName == vo.nickName || sLevel == 0}">
		        <div class="col text-right">
			        <input type="button" value="수정" onclick="location.href='BoardUpdate.bo?idx=${vo.idx}&pag=${pag}&pageSize=${pageSize}';" class="btn btn-primary" />
			        <input type="button" value="삭제" onclick="boardDelete()" class="btn btn-danger text-right" />
		        </div>
	        </c:if>
	        <c:if test="${sNickName != vo.nickName}">
		        <div class="col text-right">
		        <c:if test="${report == 'OK'}">
		        	<font color='red'><b>현재 이 글은 신고 중입니다.</b></font>
		        </c:if>
		        <c:if test="${report != 'OK'}">
			        <input type="button" value="신고하기" data-toggle="modal" data-target="#myModal" class="btn btn-danger text-right" />
		        </c:if>
		        </div>
	        </c:if>
        </div>
      </td>
    </tr>
  </table>
  <hr/>
  <!-- 이전글/ 다음글 출력하기 -->
  <table class="table table-borderless">
    <tr>
      <td>
        <c:if test="${!empty nextVo.title}">
          ☝ <a href="BoardContent.bo?idx=${nextVo.idx}">다음글 : ${nextVo.title}</a><br/>
        </c:if>
        <c:if test="${!empty preVo.title}">
        	👇 <a href="BoardContent.bo?idx=${preVo.idx}">이전글 : ${preVo.title}</a><br/>
        </c:if>
      </td>
    </tr>
  </table>
</div>
<p><br/></p>

	<!-- 신고하기 폼 모달창 -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">현재 게시글을 신고합니다.</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <b>신고사유 선택</b>
          <hr/>
          <form name="modalForm">
            <div><input type="radio" name="complaint" id="complaint1" value="광고,홍보,영리목적"/>광고,홍보,영리목적</div>
            <div><input type="radio" name="complaint" id="complaint2" value="욕설,비방,차별,혐오"/>설,비방,차별,혐오</div>
            <div><input type="radio" name="complaint" id="complaint3" value="불법정보"/>불법정보</div>
            <div><input type="radio" name="complaint" id="complaint4" value="음란,청소년유해"/>음란,청소년유해</div>
            <div><input type="radio" name="complaint" id="complaint5" value="개인정보노출,유포,거래"/>개인정보노출,유포,거래</div>
            <div><input type="radio" name="complaint" id="complaint6" value="도배,스팸"/>도배,스팸</div>
            <div><input type="radio" name="complaint" id="complaint7" value="기타" onclick="etcShow()"/>기타</div>
            <div id="etc"><textarea rows="2" id="complaintTxt" class="form-control" style="display:none"></textarea></div>
            <hr/>
            <input type="button" value="확인" onclick="complaintCheck()" class="btn btn-success form-control" />
          </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
<jsp:include page="/include/footer.jsp" />
</body>
</html>