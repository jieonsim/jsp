<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="nav.css.jsp" />
<jsp:include page="recordModal.jsp" />
<jsp:include page="notLoginModal.jsp" />
<script>
document.addEventListener('DOMContentLoaded', () => {
    const navLinks = document.querySelectorAll('.nav-link');
    navLinks.forEach(link => {
        link.addEventListener('click', function() {
            navLinks.forEach(lnk => lnk.classList.remove('active')); // Remove active from all links
            this.classList.add('active'); // Add active to the clicked link
        });
    });
});
</script>
<nav class="navbar navbar-expand container-fluid mt-4 pb-4">
	<div class="container">
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav w-100 justify-content-between list-unstyled d-flex">
				<li class="nav-item">
					<a href="#" class="nav-link" id="home">
						<i class="ph ph-house mr-1"></i>
						<i class="ph-fill ph-house mr-1"></i>
						<span>home</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="#" class="nav-link" id="map">
						<i class="ph ph-map-trifold mr-1"></i>
						<i class="ph-fill ph-map-trifold mr-1"></i>
						<span>map</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="#" class="nav-link" data-toggle="modal" data-target="#recordModal" id="record">
					<!--<a href="#" class="nav-link" data-toggle="modal" data-target="#notLoginModal" id="record">-->
						<i class="ph ph-plus-circle mr-1"></i>
						<i class="ph-fill ph-plus-circle mr-1"></i>
						<span>record</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="#" class="nav-link" data-toggle="modal" data-target="#notLoginModal" id="bookmark">
						<i class="ph ph-bookmark-simple mr-1"></i>
						<i class="ph-fill ph-bookmark-simple mr-1"></i>
						<span>bookmark</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="#" class="nav-link" data-toggle="modal" data-target="#notLoginModal" id="archive">
						<i class="ph ph-archive mr-1"></i>
						<i class="ph-fill ph-archive mr-1"></i>
						<span>archive</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>