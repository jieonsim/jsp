<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Local Lens</title>
<jsp:include page="bs4.jsp" />
<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  
  .carousel-container {
  	max-width: 500px;
	margin: auto;
	padding: 20px;
	/* text-align: center; */
  }
  
   i, span {
  vertical-align: middle;
} 

#fullView:hover {
	text-decoration: none;
}

h3, p {
	text-shadow: 2px 2px 5px gray;
}

.carousel-caption {
    left: 5%;
    text-align: right;
    /* max-width: 300px; */
    right: auto;
    padding:5px;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container mt-5">
		<div class="carousel-container">
		<div class="row">
		<div class="col-sm-8"><h5><b>오늘의 큐레이션</b></h5></div>
		<div class="col-sm-4 d-flex justify-content-end">
		<a href="#" id="fullView">
		<span style="font-size: 16px; color: black">전체보기<i class="ph ph-caret-right"></i></span>
		</a>
		</div>
		</div>
		<div id="demo1" class="carousel slide" data-ride="carousel">
	
			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../temp_project/images/1.jpeg" alt="Los Angeles">
				      <div class="carousel-caption text-left">
				        <p>@locallens</p>
				        <h3><b>지금 새로 생긴 카페 6곳</b></h3>
				      </div> 					
				</div>
				<div class="carousel-item">
					<img src="../temp_project/images/2.jpeg" alt="Chicago">
					<div class="carousel-caption text-left">
				        <p>@locallens</p>
				        <h3><b>이번 달에 꼭 가야할<br>서울 주변 감각적인 전시 8</b></h3>
				      </div>
				</div>
				<div class="carousel-item">
					<img src="../temp_project/images/3.jpeg" alt="New York">
					<div class="carousel-caption text-left">
				        <p>@locallens</p>
				        <h3><b>이번 주말 데이트하기 좋은<br>용산 주변 공간 14</b></h3>
				      </div>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo1" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo1" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
		</div>
		<br>
		<div class="carousel-container">
		<div class="row">
		<div class="col-sm-8"><h5><b>오늘의 데이로그</b></h5></div>
		<div class="col-sm-4 d-flex justify-content-end">
		<a href="#" id="fullView">
		<span style="font-size: 16px; color: black">전체보기<i class="ph ph-caret-right"></i></span>
		</a>
		</div>
		</div>
		<div id="demo2" class="carousel slide" data-ride="carousel">
	
			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../temp_project/images/5.jpeg" alt="Los Angeles">
				      <div class="carousel-caption text-left">
				        <p>@locallens</p>
				      </div> 					
				</div>
				<div class="carousel-item">
					<img src="../temp_project/images/6.jpeg" alt="Chicago">
					<div class="carousel-caption text-left">
				        <p>@locallens</p>
				      </div>
				</div>
				<div class="carousel-item">
					<img src="../temp_project/images/7.jpeg" alt="New York">
					<div class="carousel-caption text-left">
				        <p>@locallens</p>
				      </div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo2" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo2" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
		</div>
	</div>
</body>
</html>