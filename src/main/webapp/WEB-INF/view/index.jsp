<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Avestan Technologies - Job Portal</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
			<a href="index.jsp"
				class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
				<h1 class="m-0 text-primary">Avestan Technologies</h1>
			</a>
			<button type="button" class="navbar-toggler me-4"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto p-0 p-lg-0">
					<a href="/" class="nav-item nav-link ">Home</a> <a
						href="about" class="nav-item nav-link">About</a> <a
						href="contact" class="nav-item nav-link">Contact</a>
				</div>

				<form class="form-inline navbar-nav p-1 p-lg-0 ">

					<h5>
						<a href="signupStudent" class=" my-3 my-sm-4" type="submit">Register</a>
					</h5>
					&nbsp;&nbsp;&nbsp;
					<h5>
						<a href="login" class=" my-3 my-sm-4" type="submit">Login</a>
				</form>
				</h5>

				<!-- <button class="btn btn-outline-success my-2 my-sm-0 mr-4" type="submit">Register</button> -->
				<!-- <button class=" my-1 my-sm-4" type="submit">Login</button> -->

				</form>
		</nav>
		<!-- Navbar End -->


		<!-- Carousel Start -->
		<div class="container-fluid p-0">
			<div class="owl-carousel header-carousel position-relative">
				<div class="owl-carousel-item position-relative">
					<img class="img-fluid" src="img/carousel-1.jpg" alt="">
					<div
						class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
						style="background: rgba(43, 57, 64, .5);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-10 col-lg-8">
									<h1 class="display-3 text-white animated slideInDown mb-4">Find
										The Perfect Job That You Deserved</h1>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="owl-carousel-item position-relative">
					<img class="img-fluid" src="img/carousel-2.jpg" alt="">
					<div
						class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
						style="background: rgba(43, 57, 64, .5);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-10 col-lg-8">
									<h1 class="display-3 text-white animated slideInDown mb-4">Find
										The Perfect Job That You Deserved</h1>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Carousel End -->


		<!-- Search Start -->
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
		<!-- Search End -->


		<!-- Category Start -->
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
		<!-- Category End -->




		<!-- Jobs Start -->
		<div class="container-xxl py-5">
			<div class="container">
				<h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">Job
					Listing</h1>
				<div class="tab-class text-center wow fadeInUp"
					data-wow-delay="0.3s">
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
											<h5 class="mb-3">Software Engineer</h5>
											<span class="text-truncate me-3"><i
												class="fa fa-map-marker-alt text-primary me-2"></i>Nagpur,India</span>
											<span class="text-truncate me-3"><i
												class="far fa-clock text-primary me-2"></i>Full Time</span> <span
												class="text-truncate me-0"><i
												class="far fa-money-bill-alt text-primary me-2"></i>12k-25k</span>
										</div>
									</div>
									<div
										class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
										<div class="d-flex mb-3">
											<a class="btn btn-light btn-square me-3" href=""><i
												class="far fa-heart text-primary"></i></a> <a
												class="btn btn-primary" href="applyform.jsp">Apply Now</a>
										</div>
										<small class="text-truncate"><i
											class="far fa-calendar-alt text-primary me-2"></i>Date Line:
											01 Jan, 2025</small>
									</div>
								</div>
							</div>
							<div class="job-item p-4 mb-4">
								<div class="row g-4">
									<div class="col-sm-12 col-md-8 d-flex align-items-center">
										<!-- <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-2.jpg" alt="" style="width: 80px; height: 80px;"> -->
										<div class="text-start ps-4">
											<h5 class="mb-3">Marketing Manager</h5>
											<span class="text-truncate me-3"><i
												class="fa fa-map-marker-alt text-primary me-2"></i>Nagpur,India</span>
											<span class="text-truncate me-3"><i
												class="far fa-clock text-primary me-2"></i>Full Time</span> <span
												class="text-truncate me-0"><i
												class="far fa-money-bill-alt text-primary me-2"></i>12k-25k</span>
										</div>
									</div>
									<div
										class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
										<div class="d-flex mb-3">
											<a class="btn btn-light btn-square me-3" href=""><i
												class="far fa-heart text-primary"></i></a> <a
												class="btn btn-primary" href="">Apply Now</a>
										</div>
										<small class="text-truncate"><i
											class="far fa-calendar-alt text-primary me-2"></i>Date Line:
											01 Jan, 2025</small>
									</div>
								</div>
							</div>
							<div class="job-item p-4 mb-4">
								<div class="row g-4">
									<div class="col-sm-12 col-md-8 d-flex align-items-center">
										<!-- <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-3.jpg" alt="" style="width: 80px; height: 80px;"> -->
										<div class="text-start ps-4">
											<h5 class="mb-3">Product Designer</h5>
											<span class="text-truncate me-3"><i
												class="fa fa-map-marker-alt text-primary me-2"></i>Nagpur,India</span>
											<span class="text-truncate me-3"><i
												class="far fa-clock text-primary me-2"></i>Full Time</span> <span
												class="text-truncate me-0"><i
												class="far fa-money-bill-alt text-primary me-2"></i>12k-25k</span>
										</div>
									</div>
									<div
										class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
										<div class="d-flex mb-3">
											<a class="btn btn-light btn-square me-3" href=""><i
												class="far fa-heart text-primary"></i></a> <a
												class="btn btn-primary" href="">Apply Now</a>
										</div>
										<small class="text-truncate"><i
											class="far fa-calendar-alt text-primary me-2"></i>Date Line:
											01 Jan, 2045</small>
									</div>
								</div>
							</div>
							<div class="job-item p-4 mb-4">
								<div class="row g-4">
									<div class="col-sm-12 col-md-8 d-flex align-items-center">
										<!-- <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-4.jpg" alt="" style="width: 80px; height: 80px;"> -->
										<div class="text-start ps-4">
											<h5 class="mb-3">Creative Director</h5>
											<span class="text-truncate me-3"><i
												class="fa fa-map-marker-alt text-primary me-2"></i>Nagpur,India</span>
											<span class="text-truncate me-3"><i
												class="far fa-clock text-primary me-2"></i>Full Time</span> <span
												class="text-truncate me-0"><i
												class="far fa-money-bill-alt text-primary me-2"></i>12k-25k</span>
										</div>
									</div>
									<div
										class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
										<div class="d-flex mb-3">
											<a class="btn btn-light btn-square me-3" href=""><i
												class="far fa-heart text-primary"></i></a> <a
												class="btn btn-primary" href="">Apply Now</a>
										</div>
										<small class="text-truncate"><i
											class="far fa-calendar-alt text-primary me-2"></i>Date Line:
											01 Jan, 2045</small>
									</div>
								</div>
							</div>
							<div class="job-item p-4 mb-4">
								<div class="row g-4">
									<div class="col-sm-12 col-md-8 d-flex align-items-center">
										<!-- <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-5.jpg" alt="" style="width: 80px; height: 80px;"> -->
										<div class="text-start ps-4">
											<h5 class="mb-3">Wordpress Developer</h5>
											<span class="text-truncate me-3"><i
												class="fa fa-map-marker-alt text-primary me-2"></i>Nagpur,India</span>
											<span class="text-truncate me-3"><i
												class="far fa-clock text-primary me-2"></i>Full Time</span> <span
												class="text-truncate me-0"><i
												class="far fa-money-bill-alt text-primary me-2"></i>12k-25k</span>
										</div>
									</div>
									<div
										class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
										<div class="d-flex mb-3">
											<a class="btn btn-light btn-square me-3" href=""><i
												class="far fa-heart text-primary"></i></a> <a
												class="btn btn-primary" href="">Apply Now</a>
										</div>
										<small class="text-truncate"><i
											class="far fa-calendar-alt text-primary me-2"></i>Date Line:
											01 Jan, 2045</small>
									</div>
								</div>
							</div>
							<a class="btn btn-primary py-3 px-5" href="">Browse More Jobs</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Jobs End -->


		<!-- Testimonial Start -->
		<!-- <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <h1 class="text-center mb-5">Our Clients Say!!!</h1>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item bg-light rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-1.jpg" style="width: 50px; height: 50px;">
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-2.jpg" style="width: 50px; height: 50px;">
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-3.jpg" style="width: 50px; height: 50px;">
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-4.jpg" style="width: 50px; height: 50px;">
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
		<!-- Testimonial End -->


		<!-- Footer Start -->
		<div
			class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn"
			data-wow-delay="0.1s">
			<div class="container py-5">
				<div class="row g-5">
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Company</h5>
						<a class="btn btn-link text-white-50" href="">About Us</a> <a
							class="btn btn-link text-white-50" href="">Contact Us</a> <a
							class="btn btn-link text-white-50" href="">Our Services</a> <a
							class="btn btn-link text-white-50" href="">Privacy Policy</a> <a
							class="btn btn-link text-white-50" href="">Terms & Condition</a>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Quick Links</h5>
						<a class="btn btn-link text-white-50" href="">About Us</a> <a
							class="btn btn-link text-white-50" href="">Contact Us</a> <a
							class="btn btn-link text-white-50" href="">Our Services</a> <a
							class="btn btn-link text-white-50" href="">Privacy Policy</a> <a
							class="btn btn-link text-white-50" href="">Terms & Condition</a>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Contact</h5>
						<p class="mb-2">
							<i class="fa fa-map-marker-alt me-3"></i>IT Park Road, Near
							Persistent, Gayatri Nagar, Nagpur, Maharashtra 440022
						</p>
						<p class="mb-2">
							<i class="fa fa-phone-alt me-3"></i>+918381009662
						</p>
						<p class="mb-2">
							<i class="fa fa-envelope me-0"></i>info@avestantechnologies.com
						</p>
						<div class="d-flex pt-2">
							<a class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-youtube"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Newsletter</h5>
						<!-- <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p> -->
						<div class="position-relative mx-auto" style="max-width: 400px;">
							<input class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
								type="text" placeholder="Your email"> <a
								href="Signup.jsp" class="btn btn-primary btn-lg active"
								role="button" aria-pressed="true">SignUp</a>

							<!-- <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button> -->
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="copyright">
					<div class="row">
						<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
							&copy; <a class="border-bottom" href="#">Avestan Technologies
								Pvt Ltd.</a>, All Right Reserved.

							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							<a class="border-bottom" href="https://htmlcodex.com"></a>
						</div>
						<div class="col-md-6 text-center text-md-end">
							<div class="footer-menu">
								<a href="">Home</a> <a href="">Cookies</a> <a href="">Help</a> <a
									href="">FQAs</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>
</html>