<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

#modal {
	width:350px;
}

#guide {
	font-size: 16px;
}

#comfirm {
	color: black;
	border-radius: 0;
	box-shadow: none;
	font-weight: bold;
	font-size: 18px;
	width: 100%;
}
</style>
<div class="modal fade" id="notLoginModal">
	<div class="modal-dialog modal-dialog-centered" id="modal">
		<div class="modal-content">
			<div class="modal-body text-center">
				<div id="guide" class="mb-3 mt-3">해당 서비스는 로그인 후 이용하실 수 있습니다.</div>
				<button id="comfirm" class="btn btn-sm mb-2 text-center">확인</button>
			</div>
		</div>
	</div>
</div>