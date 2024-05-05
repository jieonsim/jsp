<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.nav-link .link-content {
    display: flex;
    align-items: center;  
    gap: 20px; 
    color: black;
}

.nav-link .link-icon {
    width: 30px; 
    height: 30px;
}

.nav-link .text-content {
    display: flex;
    flex-direction: column;
}

.nav-link .text-content span {
    display: block;  
}

.nav-link .text-content .text-description {
    color: gray;  
    font-size: 13px; 
}
</style>
<div class="modal fade" id="recordModal">
	<div class="modal-dialog modal-dialog-centered modal-sm">
		<div class="modal-content">
			<div class="modal-body">
				<ul class="nav flex-column list-unstyled">
					<li class="nav-item">
						<a href="#" class="nav-link" id="visitor">
							<span class="link-content">
								<img src="../temp_project/images/pin.png" alt="Pin">
									<span class="text-content">
										<span><b>방명록</b></span>
										<span class="text-description">쉽게 남기는 방문 기록</span>
									</span>
							</span>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link" id="daylog">
							<span class="link-content">
								<img src="../temp_project/images/images.png" alt="Images">
									<span class="text-content">
										<span><b>로컬로그</b></span>
										<span class="text-description">사진과 함께 기록하는 공간 경험</span>
									</span>
							</span>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link" id="curation">
							<span class="link-content">
								<img src="../temp_project/images/book.png" alt="Book">
									<span class="text-content">
										<span><b>큐레이션</b></span>
										<span class="text-description">추천하고 싶은 나만의 공간 가이드</span>
									</span>
							</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>