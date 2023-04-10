<!doctype html>
<html lang="en">
<head>
<%@ include file="header_main.jsp"%>
<!-- DATA TABLE JAVA SCRIPT 3 CDN LINK for head  -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>

<!-- DATA TABLE 2 CSS LINKS for head -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.csshttps://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">

<link
	href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css"
	rel="stylesheet">

<script
	src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
<script
	src="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.js"></script>
<script
	src="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table-locale-all.min.js"></script>
<script
	src="https://unpkg.com/bootstrap-table@1.21.4/dist/extensions/export/bootstrap-table-export.min.js"></script>


<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css'>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,500" rel="stylesheet"/>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="style.css">




</head>

<body
	style="background-color: rgba(123, 143, 189, 0.5); background-size: fixed;">
	<div class="container-fluid">
		<div class="row">

			<script>
    		$(document).ready(function() 
    			{
					$("#section_1").show();
					$("#section_2").hide();
					$("#section_3").hide();
					$("#section_4").hide();
					$("#section_5").hide();
					$("#section_6").hide();
					
					$("#id_1").click(function() 
							{
								$("#section_1").show();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").hide();
								$("#section_6").hide();
							});
					
					$("#id_2").click(function() 
						{
							$("#section_1").hide();
							$("#section_2").show();
							$("#section_3").hide();
							$("#section_4").hide();
							$("#section_5").hide();
							$("#section_6").hide();
						});
					
					$("#id_3").click(function() 
						{
							$("#section_1").hide();
							$("#section_2").hide();
							$("#section_3").show();
							$("#section_4").hide();
							$("#section_5").hide();
							$("#section_6").hide();
						});
					
					$("#id_4").click(function() 
							{
								$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").show();
								$("#section_5").hide();
								$("#section_6").hide();
							});
					
					$("#id_5").click(function() 
							{
								$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").show();
								$("#section_6").hide();
							});
					
					$("#id_6").click(function() 
							{
								$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").hide();
								$("#section_6").show();
							});
	
				});
    	</script>
			<div class="col col-lg-12 clmd-12 colsm-12 col-xs-12">
				<nav class="navbar navbar-expand-lg navbar-dark  mt-2"
					style="border-radius: 20px; background-color: rgba(103, 174, 130, 0.9);">

					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<%
					String suser = (String) session.getAttribute("suser");
					%>
					&nbsp;&nbsp;&nbsp;
					<h3 style="text-align: center;">
						<b style="text-align: center;"> &nbsp;ADMIN PANEL</b>
					</h3>
			</div>
			</nav>

		</div>

	</div>
	<div class="row">
		<div
			class="col col-lg-2 col-md-2 col-sm-12 col-xs-12 d-md-block d-none mt-3 ml-2"
			style="background-color: rgba(230, 234, 197, 1); box-shadow: 2px 8px 9px black; border-radius: 10px;">
			<ul class="nav flex-column ">
				<li class="nav-item"><br> <a data-toggle="tab"
					class="nav-link active" href="#"><i
						class="fa-solid fa-user mr-1"></i> <span id="id_1">Post New
							Jobs</span></a>
					<hr></li>
				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-cog mr-1"></i> <span id="id_2">View
							Applied Candidates </span></a>
					<hr></li>
				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-shield mr-1"></i> <span
						id="id_3">Required Full Fill Form</span> </a>
					<hr></li>



				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_4">Notification</span>
				</a>
					<hr></li>

				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_5">Profile
							Details</span> </a>
					<hr></li>

				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-money-check-alt mr-1"></i> <span
						id="id_6">Sign Out</span> </a>
					<hr> <br> <br> <br> <br> <br> <br>
					<br> <br> <br></li>

			</ul>
		</div>
		<div class="col col-lg-9 col-md-9 col-sm-9 col-xs-9 ">

			<!-- SCRIPTLET FOR SUCCESSFUL MESSAGE = START -->
			<%
			String xyzName = (String) session.getAttribute("xyzName"); /* sesProductAdded came from  .jsp */
			if (xyzName == null) {

			} else {
			%>
			<script>swal("Product added sucessfully", "<%=xyzName%>
					", "success");
				</script>
			<!--ELSE "error" name -->
			<%
			session.setAttribute("xyzName", null);
			}
			%>
			<!-- SCRIPTLET FOR SUCCESSFUL MESSAGE = END -->

			<!--  dismissible alert message START -->
			<%
			String name = (String) session.getAttribute("name");
			if (name == null) {

			} else {
			%>
			<div class="alert alert-warning alert-dismissible fade show"
				role="alert">
				<strong><%=name%></strong> Any message
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<%
			session.setAttribute("name", null); /* This is used to avoid message on refresh  */
			}
			%>


			<!-- EXISTING PRODUCT DELETE dismissible alert message START -->

			<div class="card-body tab-content  mt-4 bg-light">

				<section id="section_1">
					<h6>Section No 1</h6>
					<form action="">
						<div class="form-group">


							<div id="toolbar">
								<button id="remove" class="btn btn-danger" disabled>
									<i class="fa fa-trash"></i> Delete
								</button>
							</div>
							<table id="table" data-toolbar="#toolbar" data-search="true"
								data-show-refresh="true" data-show-toggle="true"
								data-show-fullscreen="true" data-show-columns="true"
								data-show-columns-toggle-all="true" data-detail-view="true"
								data-show-export="true" data-click-to-select="true"
								data-detail-formatter="detailFormatter"
								data-minimum-count-columns="2"
								data-show-pagination-switch="true" data-pagination="true"
								data-id-field="id" data-page-list="[10, 25, 50, 100, all]"
								data-show-footer="true" data-side-pagination="server"
								data-url="https://examples.wenzhixin.net.cn/examples/bootstrap_table/data"
								data-response-handler="responseHandler">
							</table>

							<script>
							$(document).ready(function () {
							    $('#example').DataTable({
							        pagingType: 'full_numbers',
							    });
							});
							</script>

						</div>

					</form>
				</section>

				<section id="section_2">
					<h6>Section No 2</h6>
					<form action="">
						<div class="form-group"></div>

						<link rel="stylesheet"
							href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
							integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA="
							crossorigin="anonymous" />

						<div class="container">
							<div class="row">
								<div class="col-lg-3">
									<div class="sidebar">
										<div class="widget border-0">
											<div class="search">
												<input class="form-control" type="text"
													placeholder="Search Keywords">
											</div>
										</div>
										<div class="widget border-0">
											<div class="locations">
												<input class="form-control" type="text"
													placeholder="All Locations">
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Date Posted</h6>
												<a class="ml-auto" data-toggle="collapse" href="#dateposted"
													role="button" aria-expanded="false"
													aria-controls="dateposted"> <i
													class="fas fa-chevron-down"></i>
												</a>
											</div>
											<div class="collapse show" id="dateposted">
												<div class="widget-content">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="dateposted1"> <label
															class="custom-control-label" for="dateposted1">Last
															hour</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="dateposted2"> <label
															class="custom-control-label" for="dateposted2">Last
															24 hour</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="dateposted3"> <label
															class="custom-control-label" for="dateposted3">Last
															7 days</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="dateposted4"> <label
															class="custom-control-label" for="dateposted4">Last
															14 days</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="dateposted5"> <label
															class="custom-control-label" for="dateposted5">Last
															30 days</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Specialism</h6>
												<a class="ml-auto" data-toggle="collapse" href="#specialism"
													role="button" aria-expanded="false"
													aria-controls="specialism"> <i
													class="fas fa-chevron-down"></i>
												</a>
											</div>
											<div class="collapse show" id="specialism">
												<div class="widget-content">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="specialism1"> <label
															class="custom-control-label" for="specialism1">IT
															Contractor</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="specialism2"> <label
															class="custom-control-label" for="specialism2">Clinical
															Psychology</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="specialism3"> <label
															class="custom-control-label" for="specialism3">Digital
															&amp; Creative</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="specialism4"> <label
															class="custom-control-label" for="specialism4">Estate
															Agency</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="specialism5"> <label
															class="custom-control-label" for="specialism5">Graduate</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Job Type</h6>
												<a class="ml-auto" data-toggle="collapse" href="#jobtype"
													role="button" aria-expanded="false" aria-controls="jobtype">
													<i class="fas fa-chevron-down"></i>
												</a>
											</div>
											<div class="collapse show" id="jobtype">
												<div class="widget-content">
													<div class="custom-control custom-checkbox fulltime-job">
														<input type="checkbox" class="custom-control-input"
															id="jobtype1"> <label
															class="custom-control-label" for="jobtype1">Full
															Time</label>
													</div>
													<div class="custom-control custom-checkbox parttime-job">
														<input type="checkbox" class="custom-control-input"
															id="jobtype2"> <label
															class="custom-control-label" for="jobtype2">Part-Time</label>
													</div>
													<div class="custom-control custom-checkbox freelance-job">
														<input type="checkbox" class="custom-control-input"
															id="jobtype3"> <label
															class="custom-control-label" for="jobtype3">Freelance</label>
													</div>
													<div class="custom-control custom-checkbox temporary-job">
														<input type="checkbox" class="custom-control-input"
															id="jobtype4"> <label
															class="custom-control-label" for="jobtype4">Temporary</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Experience</h6>
												<a class="ml-auto" data-toggle="collapse" href="#experience"
													role="button" aria-expanded="false"
													aria-controls="experience"> <i
													class="fas fa-chevron-down"></i>
												</a>
											</div>
											<div class="collapse show" id="experience">
												<div class="widget-content">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="experience1"> <label
															class="custom-control-label" for="experience1">fresher</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="experience2"> <label
															class="custom-control-label" for="experience2">Less
															than 1 year</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="experience3"> <label
															class="custom-control-label" for="experience3">2
															Year</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="experience4"> <label
															class="custom-control-label" for="experience4">3
															Year</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="experience5"> <label
															class="custom-control-label" for="experience5">4
															Year</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Offered Salary</h6>
												<a class="ml-auto" data-toggle="collapse"
													href="#Offeredsalary" role="button" aria-expanded="false"
													aria-controls="Offeredsalary"> <i
													class="fas fa-chevron-down"></i>
												</a>
											</div>
											<div class="collapse show" id="Offeredsalary">
												<div class="widget-content">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="Offeredsalary1"> <label
															class="custom-control-label" for="Offeredsalary1">10k
															- 20k</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="Offeredsalary2"> <label
															class="custom-control-label" for="Offeredsalary2">20k
															- 30k</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="Offeredsalary3"> <label
															class="custom-control-label" for="Offeredsalary3">30k
															- 40k</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="Offeredsalary4"> <label
															class="custom-control-label" for="Offeredsalary4">40k
															- 50k</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="Offeredsalary5"> <label
															class="custom-control-label" for="Offeredsalary5">50k
															- 60k</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Gender</h6>
												<a class="ml-auto" data-toggle="collapse" href="#gender"
													role="button" aria-expanded="false" aria-controls="gender"><i
													class="fas fa-chevron-down"></i></a>
											</div>
											<div class="collapse show" id="gender">
												<div class="widget-content">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="gender1"> <label class="custom-control-label"
															for="gender1">Male</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="gender2"> <label class="custom-control-label"
															for="gender2">Female</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget">
											<div class="widget-title widget-collapse">
												<h6>Qualification</h6>
												<a class="ml-auto" data-toggle="collapse"
													href="#qualification" role="button" aria-expanded="false"
													aria-controls="qualification"> <i
													class="fas fa-chevron-down"></i></a>
											</div>
											<div class="collapse show" id="qualification">
												<div class="widget-content">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="qualification1"> <label
															class="custom-control-label" for="qualification1">Matriculation</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="qualification2"> <label
															class="custom-control-label" for="qualification2">Intermediate</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="qualification3"> <label
															class="custom-control-label" for="qualification3">Graduate</label>
													</div>
												</div>
											</div>
										</div>
										<div class="widget border-0">
											<div class="widget-add">
												<img class="img-fluid" src="images/add-banner.png" alt="">
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-9">
									<div class="row mb-4">
										<div class="col-12">
											<h6 class="mb-0">
												Showing 1-10 of <span class="text-primary">28
													Candidates</span>
											</h6>
										</div>
									</div>
									<div class="job-filter mb-4 d-sm-flex align-items-center">
										<div class="job-alert-bt">
											<a class="btn btn-md btn-dark" href="#"><i
												class="fa fa-envelope"></i>Get job alert </a>
										</div>
										<div class="job-shortby ml-sm-auto d-flex align-items-center">
											<form class="form-inline">
												<div class="form-group mb-0">
													<label class="justify-content-start mr-2">Sort by :</label>
													<div class="short-by">
														<select
															class="form-control basic-select select2-hidden-accessible"
															data-select2-id="1" tabindex="-1" aria-hidden="true">
															<option data-select2-id="3">Newest</option>
															<option>Oldest</option>
														</select>
													</div>
												</div>
											</form>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTh426oQeAEjqOcqyXLe21GP71OpEFtCRSbt6s2O6P2rKXo13T-"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Bhavesh</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Recruitment
																	Consultancy</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Haines
																	City, FL 33844</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>1M ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://www.clker.com/cliparts/a/e/c/c/1364125264782739178passport-hi.png"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Vijay</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Information
																	Technology</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Lynch
																	Lane, Weymouth</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>3M ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSio8cWo5Qca-J41fCox6HiQq-riASh-Vx-fB0yo0I6jR0HK-e9"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Manish</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Human
																	Resources</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Monroe
																	Township, NJ 08831</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>3D ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTh426oQeAEjqOcqyXLe21GP71OpEFtCRSbt6s2O6P2rKXo13T-"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Rahul</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>IT Contractor</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Botchergate,
																	Carlisle</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>6D ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://c.vanceai.com/assets/images/passport_photo_maker/feature_after_1-b8d713a1d2.png"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Shreya</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Human
																	Resources</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Minneapolis,
																	MN 55406</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>2D ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://www.shutterstock.com/image-photo/business-woman-professional-portrait-young-260nw-295347524.jpg"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Poonam</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Information
																	Technology</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Rolling
																	Meadows, IL 60008</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>3W ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://www.clker.com/cliparts/a/e/c/c/1364125264782739178passport-hi.png"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Reyna Chung</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Transport
																	&amp; Logistics</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Glen
																	Cove, NY 11542</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>1H ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://www.clker.com/cliparts/a/e/c/c/1364125264782739178passport-hi.png"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Rafael Briggs</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Architecture</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Botchergate,
																	Carlisle</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>3M ago</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-4 mb-4 mb-md-0">
											<div class="candidate-list candidate-grid">
												<div class="candidate-list-image">
													<img class="img-fluid"
														src="https://www.clker.com/cliparts/a/e/c/c/1364125264782739178passport-hi.png"
														alt="">
												</div>
												<div class="candidate-list-details">
													<div class="candidate-list-info">
														<div class="candidate-list-title">
															<h5>
																<a href="candidate-detail.html">Michael Bean</a>
															</h5>
														</div>
														<div class="candidate-list-option">
															<ul class="list-unstyled">
																<li><i class="fas fa-filter pr-1"></i>Estate Agency</li>
																<li><i class="fas fa-map-marker-alt pr-1"></i>Richmond
																	Hill, NY 11418</li>
															</ul>
														</div>
													</div>
													<div class="candidate-list-favourite-time">
														<a class="candidate-list-favourite order-2" href="#"><i
															class="far fa-heart"></i></a> <span
															class="candidate-list-time order-1"><i
															class="far fa-clock pr-1"></i>6D ago</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-12 text-center mt-4 mt-sm-5">
											<ul class="pagination justify-content-center mb-0">
												<li class="page-item disabled"><span class="page-link">Prev</span>
												</li>
												<li class="page-item active" aria-current="page"><span
													class="page-link">1 </span> <span class="sr-only">(current)</span></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#">...</a></li>
												<li class="page-item"><a class="page-link" href="#">25</a></li>
												<li class="page-item"><a class="page-link" href="#">Next</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>


					</form>
				</section>

				<section id="section_3">
					<h6>Section No 3</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
				</section>


				<section id="section_4">
					<h6>Section No 4</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
				</section>


				<section id="section_5">
					<h6>Section No 5</h6>
					<form action="">
						<div class="form-group"></div>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalLong">Employee</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModalLong" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLongTitle"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">
											Employee</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
									
									<table class="table responsive" id="sort">
	<thead>
		<tr>
			<th scope="col">Title</th>
			<th scope="col">Authors</th>
			<th scope="col">Journal</th>
			<th scope="col">Date</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td data-table-header="Title">Parent Adolescent Relationship Factors and Adolescent Outcomes Among High-Risk Families.</td>
			<td data-table-header="Authors">Matthew Withers, Lenore McWey, Mallory Lucier-Greer</td>
			<td data-table-header="Journal">Family Relations</td>
			<td data-table-header="Date">Jan. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Prescription Drugs and Nutrient Depletion: How Much is Known?</td>
			<td data-table-header="Authors">Wendimere Reilly, Jasminka Ilich</td>
			<td data-table-header="Journal">Advances in Nutrition: An International Review Journal</td>
			<td data-table-header="Date">Jan. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Relation of Adiponectin with Body Adiposity and Bone Mineral Density in Older Women.</td>
			<td data-table-header="Authors">Pegah Jafari Nasabian, Julia Inglis, Miranda Ave, Hayley Hebrock, Katie Hall, Sara Nieto, Jasminka Ilich</td>
			<td data-table-header="Journal">Advances in Nutrition: An International Review Journal</td>
			<td data-table-header="Date">Jan. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Benefits of whole-body vibration training on arterial function and muscle strength in young overweight/obese women.</td>
			<td data-table-header="Authors">Alvarez-Alvarado S, Jaime SJ, Ormsbee MJ, Campbell JC, Post J, Pacilio J, Figueroa A.</td>
			<td data-table-header="Journal">Hypertension Research International Journal</td>
			<td data-table-header="Date">Jan. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Overexpression of PGC-1α Increases Peroxisomal and Mitochondrial Fatty Acid Oxidation in Human Primary Myotubes.</td>
			<td data-table-header="Authors">Huang TY, Zheng D, Houmard JA, Brault JJ, Hickner RC, Cortright RN.</td>
			<td data-table-header="Journal">American Journal of Physiology: Endocrinology and Metabolism</td>
			<td data-table-header="Date">Jan. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Observed Parenting in Families exposed to Homelessness: Child and Parent Characteristics as Predictors of Response to the Early Risers Intervention.</td>
			<td data-table-header="Authors">Kendal Holtrop, Timothy F. Piehler, Abigail H. Gewirtz, Gerald J. August</td>
			<td data-table-header="Journal">Child and Family Well-Beging and Homelessness:&nbsp;Integrating&nbsp;Research into Practice and Policy</td>
			<td data-table-header="Date">Feb. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Testing the impact of sliding versus deciding in cyclical and non cyclical relationships.</td>
			<td data-table-header="Authors">Charity E. Clifford, Amber Vennum, Michelle Busk, Frank D. Fincham</td>
			<td data-table-header="Journal">Personal Relationships:&nbsp;Journal of the International Assoc. for Relationship Research</td>
			<td data-table-header="Date">Feb. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Personal and Cultural Identity Development in Recently Immigrated Hispanic Adolescents: Links With Psychosocial Functioning.</td>
			<td data-table-header="Authors">Meca A, Sabet RF, Farrelly CM, Benitez CG, Schwartz SJ,&nbsp;Gonzales-Backen M, Lorenzo-Blanco EI, Unger JB, Zamboanga BL, Baezconde-Garbanati L, Picariello S, Des Rosiers SE, Soto DW, Pattarroyo M, Villamar JA, Lizzi KM. </td>
			<td data-table-header="Journal">American Psychological Association: Cultural Diversity &amp; Ethnic Minority Psychology</td>
			<td data-table-header="Date">Feb. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">School burnout and intimate partner violence: The role of self-control.</td>
			<td data-table-header="Authors">AN Cooper, GS Seibert, RW May, MC Fitzgerald, FD Fincham</td>
			<td data-table-header="Journal">Personality and Individual Differences</td>
			<td data-table-header="Date">Feb. 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Efficacy Of The Repetitions In Reserve-Based Rating Of Perceived Exertion For The Bench Press In Experienced And Novice Benchers.</td>
			<td data-table-header="Authors">Ormsbee MJ, Carzoli JP, Klemp A, Allman BR, Zourdos MC, Kim JS, Panton LB.</td>
			<td data-table-header="Journal">The Journal of Strength and Conditioning Research</td>
			<td data-table-header="Date">March 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Exercise training reverses age-induced diastolic dysfunction and restores coronary microvascular function.</td>
			<td data-table-header="Authors">Hotta K, Chen B, Behnke BJ, Ghosh P, Stabley JN, Bramy JA, Sepulveda JL, Delp MD, Muller-Delp JM.</td>
			<td data-table-header="Journal">The Journal of Physiology</td>
			<td data-table-header="Date">March 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Macronutrient Intake and Distribution in the Etiology, Prevention and Treatment of Osteosarcopenic Obesity.</td>
			<td data-table-header="Authors">Kelly OJ, Gilman JC, Kim Y, Ilich JZ.</td>
			<td data-table-header="Journal">Current Aging Science</td>
			<td data-table-header="Date">May 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Perception in Romantic Relationships: a Latent Profile Analysis of Trait Mindfulness in Relation to Attachment and Attributions.</td>
			<td data-table-header="Authors">JG Kimmes, JA Durtschi, FD Fincham.</td>
			<td data-table-header="Journal">Mindfulness</td>
			<td data-table-header="Date">April 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Individual Differences in Adolescents’ Emotional Reactivity across Relationship Contexts.</td>
			<td data-table-header="Authors">Cook EC, Blair BL, Buehler C.</td>
			<td data-table-header="Journal">Journal of Youth Adolescence</td>
			<td data-table-header="Date">April 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Is Plus Size Equal? The Positive Impacts of Average and Plus Sized Media Fashion Models on Women’s Cognitive Resource Allocation, Social Comparisons, and Body Satisfaction. [in press]</td>
			<td data-table-header="Authors">RB Clayton, JL Ridgway, J Hendrickse.</td>
			<td data-table-header="Journal">Communication Monographs</td>
			<td data-table-header="Date">April 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Effects of Tart Cherry Juice on Brachial and Aortic Hemodynamics, Arterial Stiffness, and Blood Biomarkers of Cardiovascular Health in Adults with Metabolic Syndrome.</td>
			<td data-table-header="Authors">Sarah Johnson, Negin Navaei, Shirin Pourafshar, Salvador Jaime, Neda Akhavan, Stacey Alvarez-Alvarado, Nicole Litwin, Marcus Elam, Mark Payton, Bahram Arjmandi, Arturo Figueroa.</td>
			<td data-table-header="Journal">Journal of Federation of American Societies for Experimental Biology</td>
			<td data-table-header="Date">April 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Parenting Styles and College Enrollment: A Path Analysis of Risky Human Capital Decisions.</td>
			<td data-table-header="Authors">J Kimmes, S Heckman</td>
			<td data-table-header="Journal">Journal of Family and Economic Issues</td>
			<td data-table-header="Date">May 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Emerging Adult Relationship Transitions as Opportune Times for Tailored Interventions.</td>
			<td data-table-header="Authors">A Vennum, JK Monk, BK Pasley, FD Fincham</td>
			<td data-table-header="Journal">Emerging Adulthood</td>
			<td data-table-header="Date">May 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Watermelon and L-Arginine Consumption Regulate Gene Expression Related to Serum Lipid Profile, Inflammation, and Oxidative Stress in Rats Fed on Atherogenic Diet.</td>
			<td data-table-header="Authors">Joshua Beidler, Shirin Hooshmand, Mark Kern, Arturo Figueroa, Men Young Hong</td>
			<td data-table-header="Journal">Journal of Federation of American Societies for Experimental Biology</td>
			<td data-table-header="Date">April 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Contribution of Adiponectin to Vascular Responses in Bone Resistance Arteries in Mice.</td>
			<td data-table-header="Authors">Payal Ghosh, Kazuki Hotta, Tiffany Lucero, Kyle Borodunovich, Morgan Cowan, Jeremy Bramy, Bradley Behnke, Michael Delp, Judy Delp</td>
			<td data-table-header="Journal">Journal of Federation of American Societies for Experimental Biology</td>
			<td data-table-header="Date">April 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Bone-Protective Effects of Dried Plum in Postmenopausal Women: Efficacy and Possible Mechanisms.</td>
			<td data-table-header="Authors">Arjmani BH, Johnson SA, Pourafshar S, Navaei N, George KS, Hooshmand S, Chai SC, Akhavan NS</td>
			<td data-table-header="Journal">Nutrients</td>
			<td data-table-header="Date">May 2017</td>
		</tr>
		<tr>
			<td data-table-header="Title">Cardiovascular Responses to Unilateral, Bilateral, and Alternating Limb Resistance Exercise Performed Using Different Body Sements.</td>
			<td data-table-header="Authors">Moreira OC, Faraci LL, de Matos DG, Mazini Filho ML, da Silva SF, Aidar FJ, Hickner RC, de Oliveira CE</td>
			<td data-table-header="Journal">Journal of Strength and Conditioning Research</td>
			<td data-table-header="Date">March 2017</td>
		</tr>
	</tbody>
</table>
									
									
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
										<!-- <button type="button" class="btn btn-primary">Save
											changes</button> -->
									</div>
								</div>
							</div>
						</div>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalLong">Clients</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModalLong" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLongTitle"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Modal
											title</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">...</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</section>


				<section id="section_6">
					<h6>Section No 6</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
				</section>

				<script>
  var $table = $('#table')
  var $remove = $('#remove')
  var selections = []

  function getIdSelections() {
    return $.map($table.bootstrapTable('getSelections'), function (row) {
      return row.id
    })
  }

  function responseHandler(res) {
    $.each(res.rows, function (i, row) {
      row.state = $.inArray(row.id, selections) !== -1
    })
    return res
  }

  function detailFormatter(index, row) {
    var html = []
    $.each(row, function (key, value) {
      html.push('<p><b>' + key + ':</b> ' + value + '</p>')
    })
    return html.join('')
  }

  function operateFormatter(value, row, index) {
    return [
      '<a class="like" href="javascript:void(0)" title="Like">',
      '<i class="fa fa-heart"></i>',
      '</a>  ',
      '<a class="remove" href="javascript:void(0)" title="Remove">',
      '<i class="fa fa-trash"></i>',
      '</a>'
    ].join('')
  }

  window.operateEvents = {
    'click .like': function (e, value, row, index) {
      alert('You click like action, row: ' + JSON.stringify(row))
    },
    'click .remove': function (e, value, row, index) {
      $table.bootstrapTable('remove', {
        field: 'id',
        values: [row.id]
      })
    }
  }

  function totalTextFormatter(data) {
    return 'Total'
  }

  function totalNameFormatter(data) {
    return data.length
  }

  function totalPriceFormatter(data) {
    var field = this.field
    return '$' + data.map(function (row) {
      return +row[field].substring(1)
    }).reduce(function (sum, i) {
      return sum + i
    }, 0)
  }

  function initTable() {
    $table.bootstrapTable('destroy').bootstrapTable({
      height: 550,
      locale: $('#locale').val(),
      columns: [
        [{
          field: 'state',
          checkbox: true,
          rowspan: 2,
          align: 'center',
          valign: 'middle'
        }, {
          title: 'Item ID',
          field: 'id',
          rowspan: 2,
          align: 'center',
          valign: 'middle',
          sortable: true,
          footerFormatter: totalTextFormatter
        }, {
          title: 'Item Detail',
          colspan: 3,
          align: 'center'
        }],
        [{
          field: 'name',
          title: 'Item Name',
          sortable: true,
          footerFormatter: totalNameFormatter,
          align: 'center'
        }, {
          field: 'price',
          title: 'Item Price',
          sortable: true,
          align: 'center',
          footerFormatter: totalPriceFormatter
        }, {
          field: 'operate',
          title: 'Item Operate',
          align: 'center',
          clickToSelect: false,
          events: window.operateEvents,
          formatter: operateFormatter
        }]
      ]
    })
    $table.on('check.bs.table uncheck.bs.table ' +
      'check-all.bs.table uncheck-all.bs.table',
    function () {
      $remove.prop('disabled', !$table.bootstrapTable('getSelections').length)

      // save your data, here just save the current page
      selections = getIdSelections()
      // push or splice the selections if you want to save all data selections
    })
    $table.on('all.bs.table', function (e, name, args) {
      console.log(name, args)
    })
    $remove.click(function () {
      var ids = getIdSelections()
      $table.bootstrapTable('remove', {
        field: 'id',
        values: ids
      })
      $remove.prop('disabled', true)
    })
  }

  $(function() {
    initTable()

    $('#locale').change(initTable)
  })
  
  
  // Code By Webdevtrick ( https://webdevtrick.com )
$(document).ready(function() {
   $("#sort").DataTable({
      columnDefs : [
    { type : 'date', targets : [3] }
],  
   });
});
</script>
	</div>
		</div>
	</div>
	</div>

</body>
<%@ include file="footer_main.jsp"%>
</html>