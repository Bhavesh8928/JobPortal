<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="j3_header_student.jsp"%>
<%@ include file="j4_carousel_student.jsp"%>
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
					</a></li>&nbsp;&nbsp;&nbsp;

					<div class="d-flex mb-3">
						<a class="btn btn-secondary" href="applyform.html">Applied
							Jobs</a>
					</div>
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
										<a class="btn btn-primary" href="" data-toggle="modal"
											data-target="#myModal">Apply Now</a>

									</div>
									<small class="text-truncate"><i
										class="far fa-calendar-alt text-primary me-2"></i>Last Date:
										01 June, 2023</small>
								</div>
							</div>
						</div>
						<br> <br> <a class="btn btn-primary py-3 px-5" href="">Browse
							More Jobs</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Jobs End -->

	<!-- The Modal FOR LOGIN -->
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;Confirm Details</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="row">
						<div class="col-md-10 mx-auto">
							<div class="myform form ">

								<form action="" method="post">

									<div class="form-group">
										<input type="text" name="firstname"
											class="form-control my-input" id="fname"
											placeholder="First Name" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="lastname"
											class="form-control my-input" id="lname"
											placeholder="Last Name" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="email" class="form-control my-input"
											id="email" placeholder="Email Address" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="skills" class="form-control my-input"
											id="skills" placeholder="Skills" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="currentLocation"
											class="form-control my-input" id="cloc"
											placeholder="Current Location" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="currentCTC"
											class="form-control my-input" id="CTC"
											placeholder="Current CTC" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="expectedCTC"
											class="form-control my-input" id="CTC"
											placeholder="Expected CTC" required>
									</div>
									<br>
									<div class="form-group">
										<input type="text" min="0" name="passout" id="p"
											class="form-control my-input" placeholder="Passout years">
									</div>
									<br>
									<div class="form-group">
										<input type="text" name="eductiondegree"
											class="form-control my-input" id="edud"
											placeholder="Eduction Degree*">
									</div>
									<br>
									<div class="form-group">
										<select id="selectid" name="notice"
											class="form-control my-input" required>
											<option selected disabled value="">Notice Period</option>
											<option>Immediate Joiner</option>
											<option>15 Days</option>
											<option>30 Days</option>
											<option>45 Days</option>
										</select>
									</div>
									<br>
									<div class="mb-3">
										<label for="formFile" class="form-label">Upload Resume</label>
										<input class="form-control" type="file" name="resume"
											id="formFile">
									</div>
									<hr
										style="height: 3px; border-width: 0; color: black; background-color: black;">
									<div class="text-center">
										<button type="submit"
											class=" btn btn-block send-button tx-tfm">Continue
											Applying</button>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</div>

		</div>
	</div>
	</div>

	<!-- MODAL CLASS JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
<%@ include file="j0_footer_main.jsp"%>
</html>