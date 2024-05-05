<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
<jsp:include page="record.css.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container mt-5 pt-3">
		<div class="record-container">
			<!-- <h4 class="mb-5">레코드</h4> -->
			<ul class="nav flex-column list-unstyled">
				<li class="nav-item">
				<a href="#" class="nav-link" id="visitor">
						<span class="link-content"> 
						<img src="../temp_project/images/pin.png" alt="Pin">
							 <span class="text-content"> 
							<span><b>방명록</b></span> 
							<span
								class="text-description">쉽게 남기는 방문 기록</span>
						</span>
					</span>
				</a>
				<jsp:include page="recordModal.jsp" />
				</li>
				<li class="nav-item"><a href="#" class="nav-link" id="daylog">
						<span class="link-content"> <img
							src="../temp_project/images/images.png" alt="Images"> <span
							class="text-content"> <span><b>로컬로그</b></span> <span
								class="text-description">사진과 함께 기록하는 공간 경험</span>
						</span>
					</span>
				</a></li>
				<li class="nav-item"><a href="#" class="nav-link" id="curation">
						<span class="link-content"> <img
							src="../temp_project/images/book.png" alt="Book"> <span
							class="text-content"> <span><b>큐레이션</b></span> <span
								class="text-description">추천하고 싶은 나만의 공간 가이드</span>
						</span>
					</span>
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>