<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="j1_header_main.jsp"%>
<%@ include file="j2_carousel_main.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- SEARCH BOX - Start -->
	<div class="container-fluid bg-primary mb-5 wow fadeIn"
		data-wow-delay="0.1s" style="padding: 35px;">
		<div class="container">
			<div class="row g-2">
				<div class="col-md-10">
					<div class="row g-2">
						<!-- <div class="col-md-4">
                                <input type="text" class="form-control border-0" placeholder="Keyword" />
                            </div> -->
						<div class="col-md-4">
							<select class="form-select border-0">
								<option selected>Category</option>
								<option value="1">Category 1</option>
								<option value="2">Category 2</option>
								<option value="3">Category 3</option>
							</select>
						</div>				
						<div class="col-md-4">
							<select class="form-select border-0">
								<option selected>Location</option>
								<option value="1">Location 1</option>
								<option value="2">Location 2</option>
								<option value="3">Location 3</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<button class="btn btn-dark border-0 w-100">Search</button>
				</div>
			</div>
		</div>
	</div>
	<!-- SEARCH BOX - End -->

	<!-- CATEGORY -  Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">Explore
				By Category</h1>
			<div class="row g-4 text-center ">

				<div class=" col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
					<a href="">
						<h6 class="mb-3"></h6>
						<p class="mb-0"></p>
					</a>
				</div>
				<div class=" col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
					<a class="cat-item rounded p-4" href=""> <i
						class="fa fa-3x fa-mail-bulk text-primary mb-4"></i>
						<h6 class="mb-3">IT</h6>
						<p class="mb-0">23 Vacancy</p>
					</a>
				</div>

				<div class=" col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
					<a class="cat-item rounded p-4" href=""> <i
						class="fa fa-3x fa-headset text-primary mb-4"></i>
						<h6 class="mb-3">HR</h6>
						<p class="mb-0">17 Vacancy</p>
					</a>
				</div>

			</div>
		</div>
	</div>
	<!-- CATEGORY -  End -->


	<!-- Jobs Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">Job
				Listing</h1>
			<div class="tab-class text-center wow fadeInUp" data-wow-delay="0.3s">
				<ul
					class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
					<li class="nav-item"><a
						class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active"
						data-bs-toggle="pill" href="#tab-1">
							<h6 class="mt-n1 mb-0">Featured</h6>
					</a></li>

				</ul>
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-8 d-flex align-items-center">
									<!-- <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-1.jpg" alt="" style="width: 80px; height: 80px;"> -->
									<div class="text-start ps-4">
										<h4 class="mb-3">Software Engineer</h4>
										<h5 class="mb-3">(Infosys)</h5>
										<span class="text-truncate me-3"><i
											class="fa fa-map-marker-alt text-primary me-2"></i>Nagpur,India</span>
										<span class="text-truncate me-3"><i
											class="far fa-clock text-primary me-2"></i>Exp. 2 Yrs</span> <span
											class="text-truncate me-0"><i
											class="far fa-money-bill-alt text-primary me-2"></i>25,000
											Rs/Month</span>
									</div>
								</div>
								<div
									class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<!-- <a class="btn btn-light btn-square me-3" href="">
										<i class="far fa-heart text-primary"></i></a> -->
										<a class="btn btn-primary" href="applyform.html">Apply Now</a>
									</div>
									<small class="text-truncate"><i
										class="far fa-calendar-alt text-primary me-2"></i>Last Date:
										01 June, 2023</small>
								</div>
							</div>
						</div>
						<br>
						<br>
						<a class="btn btn-primary py-3 px-5" href="">Browse More Jobs</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Jobs End -->


</body>
<%@ include file="j0_footer_main.jsp"%>
</html>