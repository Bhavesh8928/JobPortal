<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="j1_header_main.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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

<style>
h4 {
	text-align: center;
	border: 1px solid;
	color: white;
	padding: 10px;
	background-color: #FF3E6C;
}
</style>

</head>

<body
	style="background-color: rgba(123, 143, 189, 0.5); background-size: fixed;">
	<div class="container-fluid">
		<div class="row">

			<script>
			$(document).ready(function()
					{
						$("#section_rqmtfillView").show();
						$("#section_rqmtfillForm").hide();
						
						$("#id_rqmtfillView").click(function()
						{
							$("#section_rqmtfillView").show();
							$("#section_rqmtfillForm").hide();
						});
						
						$("#id_rqmtfillForm").click(function()
						{
							$("#section_rqmtfillView").hide();
							$("#section_rqmtfillForm").show();
						});
						
					});
			
			
    		$(document).ready(function() 
    			{
					$("#section_1").show();
					$("#section_tablejob").show();
					$("#section_postjob").hide();
					$("#section_2").hide();
					$("#section_3").hide();
					$("#section_4").hide();
					$("#section_5").hide();
					$("#section_6").hide();
					
					$("#id_1").click(function() 
							{
								$("#section_1").show();
								$("#section_tablejob").show();
								$("#section_postjob").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").hide();
								$("#section_6").hide();
							});
					
					$("#id_tablejob").click(function() 
							{								
								$("#section_tablejob").show();
								$("#section_postjob").hide();								
							});
					$("#id_postjob").click(function() 
							{								
								$("#section_tablejob").hide();
								$("#section_postjob").show();								
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
					href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_4">Profile
							Details</span> </a>
					<hr></li>

				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_5">Notification</span>
				</a>
					<hr></li>

				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-money-check-alt mr-1"></i> <span
						id="id_6">Sign Out</span> </a>
					<hr> <br> <br></li>

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

			<div class="card-body tab-content mt-4 bg-light">

				<section id="section_1">

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="showusers" type="submit" class="btn btn-info text-center"
						id="id_tablejob" style="text-align: center;">View Posted
						Job</a>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-info text-center"
						id="id_postjob" style="text-align: center;">Post New Job</button>


					<section id="section_tablejob">

						<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
						<script>
								$(document).ready(function() {
									//alert("hello")
									$('#example').DataTable();
								});
							</script>

						<!-- Table = class="table table-success" -->
						<hr>
						<br>
						<table id="example"
							class="table table-striped table-bordered table-sm"
							cellspacing="0" width="100%"background-color:red;>
							<thead>
								<tr>
									<th>Select</th>
									<th>Id</th>
									<th>Job Title</th>
									<th>Company Name</th>
									<th>Salary</th>								
									<th>Experience</th>
									<th>Qualification</th>
									<th>Skills</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Delete</th>
									<th>Edit</th>	
								</tr>
							</thead>

							<tbody>
								<c:forEach var="user" items="${users}">
									<tr>
										<!-- muldelete = added input tag only for select-->
										<td><div class="form-check">
												<input class="form-check-input" type="checkbox" name="check"
													value=${user.id}>
											</div></td>
										<td>${user.id}</td>
										<td>${user.jobtitle}</td>
										<td>${user.companyname}</td>
										<td>${user.salary}</td>
										<td>${user.experience}</td>									
										<td>${user.qualification}</td>
										<td>${user.skills}</td>
										<td>${user.email}</td>
										<td>${user.phone}</td>
										<td><a href="/deletejspuser?id=${user.id }"><i
												class="fa-solid fa-trash-can"></i></a></td>
										<td><a href="/editjspuser?id=${user.id }"><i
												class="fa-solid fa-pen-to-square"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button class="btn btn-primary">Multiple Delete</button>
					</section>

					<section id="section_postjob">

						<div class="container-fluid">
							<div class="row">
								<br>
								<hr>

								<div class="col-lg-0 col-md-6 col-sm-8 col-xs-12"></div>

								<div class="col-lg-12 col-md-6 col-sm-8 col-xs-12">

									<div class="card">
										<div class="card-body">
											<div class="container" data-aos="fade-up">
												<form action="savepostjob" method="post" enctype="multipart/form-data" class="c-form">
													<!-- General Information -->
													<div class="box">
														<div class="box-header">
															<h4 class="container-fluid mb-5 wow fadeIn">General
																Information</h4>
														</div>
														<div class="box-body">
															<div class="row">
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<input type="text" class="form-control"
																		placeholder="Enter Job Title" name="jobtitle"><br>
																</div>
																<br> <br>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<input type="text" class="form-control"
																		placeholder="Enter Company Name" name="companyname">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<select class="wide form-control" name="category">
																		<option selected disabled value="">Select
																			Category</option>
																		<!-- <option data-display="Location">IT</option> -->
																		<option value="IT">IT</option>
																		<option value="HR">HR</option>
																	</select>
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																	<input type="text" class="form-control"
																		placeholder="Enter Job Description" name="jobdescription">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<input type="text" class="form-control"
																		placeholder="Enter Salary Range"
																		name="salary">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																	<input type="text" class="form-control"
																		placeholder="Enter No. Of Job Vacancy"
																		name="vacancy"><br>
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																	<label>Experience</label> <select
																		class="wide form-control" name="experience">
																		<option selected disabled value="" >Select
																			Experience</option>
																		<option value="0 To 1 years">0 To 1 years</option>
																		<option value="1 Years">1 Years</option>
																		<option value="2 Years">2 Years</option>
																		<option value="3 Years">3 Years</option>
																		<option value="4 Years">4 Years</option>
																		<option value="5 Years">5 Years</option>
																		<option value="6 Years">6 Years</option>
																		<option value="7 Years">7 Years</option>
																		<option value="8 Years">8 Years</option>
																		<option value="9 Years">9 Years</option>
																		<option value="10 Years">10 Years</option>
																		<option value="11 Years">11 Years</option>
																		<option value="12 Years">12 Years</option>
																		<option value="13 Years">13 Years</option>
																		<option value="14 Years">14 Years</option>
																	</select><br>
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																	<label>Company Logo</label>
																	<div class="custom-file-upload">
																	<input type="file" name="file"  />																	
																<!-- <input type="file" id="file" name="myfiles[]" multiple /> -->
																	 </div>
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																	<label>Job Type</label> <select
																		class="wide form-control" name="jobtype">
																		<!-- <option data-display="Job Type">Full Time</option> -->
																		<option selected disabled value="">Select Job
																			Type</option>
																		<option value="Full Time">Full Time</option>
																		<option value="Part Time">Part Time</option>
																		<option value="Freelancer">Freelancer</option>
																	</select>
																</div>
																<div class="col-md-6 col-sm-6 col-xs-12 m-clear">
																	<label> Qualification Required</label><input
																		type="text" class="form-control" name="qualification"
																		placeholder="Enter Qualification Required">
																</div>
																<div class="col-md-6 col-sm-6 col-xs-12">
																	<label>Skills (Seperate with Comma)</label> <input
																		type="text" class="form-control" name="skills" placeholder="Skills">
																</div>
															</div>
														</div>
													</div>
													<br> <br>

													<!-- Company Address -->
													<div class="box">
														<div class="box-header">

															<h4 class="container-fluid mb-5 wow fadeIn">Company
																Address</h4>
														</div>
														<div class="box-body">
															<div class="row">
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Email</label> <input type="email"
																		class="form-control" name="email" placeholder="Email"><br>
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Phone Number</label> <input type="text"
																		class="form-control" name="phone" placeholder="Phone Number">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Company Website Link</label> <input type="text"
																		class="form-control" name="website" placeholder="Website Link">
																</div>
																 
																<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																	<label>Job Location</label> <select
																		class="wide form-control" name="joblocation">
																		<!-- <option data-display="Job Type">Full Time</option> -->
																		<option selected disabled value="">Select Job
																			joblocation</option>
																		<option value="Remote">Remote</option>
																		<option value="Work from office">Work from office</option>																		
																	</select>
																</div>																 														

															</div>
														</div>
													</div>
													<br> <br>

													<!-- Social Accounts -->
													<div class="box">
														<div class="box-header">
															<h4 class="container-fluid mb-5 wow fadeIn">Social
																Accounts</h4>

														</div>
														<div class="box-body">
															<div class="row">
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Facebook</label> <input type="text"
																		class="form-control" name="facebook"
																		placeholder="https://www.facebook.com"><br>
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Google +</label> <input type="text"
																		class="form-control" name="gmail"
																		placeholder="https://www.gmail.com">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Twitter</label> <input type="text" name="twitter"
																		class="form-control" placeholder="https://twitter.com">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>LinkedIn</label> <input type="text"
																		class="form-control" name="linkedin"
																		placeholder="https://www.linkedin.com">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Pinterest</label> <input type="text"
																		class="form-control" name="pinterest"
																		placeholder="https://www.pinterest.com">
																</div>
																<div class="col-md-4 col-sm-6 col-xs-12">
																	<label>Instagram</label> <input type="text"
																		class="form-control" name="instagram"
																		placeholder="http://instagram.com">
																</div>
															</div>
														</div>
													</div>
													<br> <br>
													<div class="text-center">
														<button type="submit" class="btn"
															style="color: white; background-color: #FF3E6C;">Submit</button>
													</div>
												</form>
											</div>
										</div>
									</div>



								</div>

								<div class="col-lg-0 col-md-6 col-sm-8 col-xs-12"></div>
							</div>
						</div>
					</section>

					<!-- <div class="d-grid gap-2 col-2 mx-auto">
						<button type="button" class="btn btn-info text-center"
							" data-toggle="modal" data-target="#myModal" id="id_postjob">Post New
							Jobs</button>
					</div> -->
					<br>

					<form action="">
						<div class="form-group"></div>
					</form>
				</section>



				<section id="section_2">
					<h6>Section No 2</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
					<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
					<script>
								$(document).ready(function() {
									//alert("hello")
									$('#viewAppliedCandidate').DataTable();
								});
							</script>

					<!-- Table = class="table table-success" -->
					<hr>
					<br>
					<table id="viewAppliedCandidate"
						class="table table-striped table-bordered table-sm"
						cellspacing="0" width="100%"background-color:red;>
						<thead>
							<tr>
								<th>Select</th>
								<th>Id</th>
								<th>Job Title</th>
								<th>Company Name</th>
								<th>Salary</th>								
								<th>Experience</th>
								<th>Qualification</th>
								<th>Skills</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Delete</th>
								<th>Edit</th>			
																
							</tr>
						</thead>

						<tbody>
							<c:forEach var="user" items="${users}">
								<tr>
									<!-- muldelete = added input tag only for select-->
									<td><div class="form-check">
											<input class="form-check-input" type="checkbox" name="check"
												value=${user.id}>
										</div></td>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>									
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/deletejspuser?id=${user.id }"><i
											class="fa-solid fa-trash-can"></i></a></td>
									<td><a href="/editjspuser?id=${user.id }"><i
											class="fa-solid fa-pen-to-square"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<button class="btn btn-primary">Multiple Delete</button>
				</section>

				<section id="section_3">
					<h6>Section No 3</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
					<button id="id_rqmtfillView">View RequirmentFullfilled
						Data</button>
					<button id="id_rqmtfillForm">Add Placed Candidate</button>

					<section id="section_rqmtfillView">
						<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
						<script>
								$(document).ready(function() {
									//alert("hello")
									$('#rqmtfillView').DataTable();
								});
							</script>

						<!-- Table = class="table table-success" -->
						<hr>
						<br>
						<table id="rqmtfillView"
							class="table table-striped table-bordered table-sm"
							cellspacing="0" width="100%"background-color:red;>
							<thead>
								<tr>
									<th>Select</th>
									<th>Id</th>
									<th>UserName</th>
									<th>First Name</th>
									<th>LastName</th>
									<th>Age</th>
									<th>Delete</th>
									<th>Edit</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="user" items="${users}">
									<tr>
										<!-- muldelete = added input tag only for select-->
										<td><div class="form-check">
												<input class="form-check-input" type="checkbox" name="check"
													value=${user.id}>
											</div></td>
										<td>${user.id}</td>
										<td>${user.username}</td>
										<td>${user.firstname}</td>
										<td>${user.lastname}</td>
										<td>${user.age}</td>
										<td><a href="/deletejspuser?id=${user.id }"><i
												class="fa-solid fa-trash-can"></i></a></td>
										<td><a href="/editjspuser?id=${user.id }"><i
												class="fa-solid fa-pen-to-square"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button class="btn btn-primary">Multiple Delete</button>
					</section>

					<section id="section_rqmtfillForm">
						<br>
						<hr>
						<br>
						<div class="card">
							<div class="card-body">

								<form>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputEmail4">Email</label> <input type="email"
												class="form-control" id="inputEmail4" placeholder="Email">
										</div>
										<div class="form-group col-md-6">
											<label for="inputPassword4">Password</label> <input
												type="password" class="form-control" id="inputPassword4"
												placeholder="Password">
										</div>
									</div>
									<div class="form-group">
										<label for="inputAddress">Address</label> <input type="text"
											class="form-control" id="inputAddress"
											placeholder="1234 Main St">
									</div>
									<div class="form-group">
										<label for="inputAddress2">Address 2</label> <input
											type="text" class="form-control" id="inputAddress2"
											placeholder="Apartment, studio, or floor">
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputCity">City</label> <input type="text"
												class="form-control" id="inputCity">
										</div>
										<div class="form-group col-md-4">
											<label for="inputState">State</label> <select id="inputState"
												class="form-control">
												<option selected>Choose...</option>
												<option>...</option>
											</select>
										</div>
										<div class="form-group col-md-2">
											<label for="inputZip">Zip</label> <input type="text"
												class="form-control" id="inputZip">
										</div>
									</div>
									<div class="form-group">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="gridCheck"> <label class="form-check-label"
												for="gridCheck"> Check me out </label>
										</div>
									</div>
									<button type="submit" class="btn btn-primary">Sign in</button>
								</form>
							</div>
						</div>
					</section>


				</section>


				<section id="section_4">
					<h6>Section No 4</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
					<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
					<script>
								$(document).ready(function() {
									//alert("hello")
									$('#studentprofiles').DataTable();
								});
							</script>

					<!-- Table = class="table table-success" -->
					<hr>
					<br>
					<table id="studentprofiles"
						class="table table-striped table-bordered table-sm"
						cellspacing="0" width="100%"background-color:red;>
						<thead>
							<tr>
								<th>Select</th>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="user" items="${users}">
								<tr>
									<!-- muldelete = added input tag only for select-->
									<td><div class="form-check">
											<input class="form-check-input" type="checkbox" name="check"
												value=${user.id}>
										</div></td>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/deletejspuser?id=${user.id }"><i
											class="fa-solid fa-trash-can"></i></a></td>
									<td><a href="/editjspuser?id=${user.id }"><i
											class="fa-solid fa-pen-to-square"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<button class="btn btn-primary">Multiple Delete</button>
				</section>


				<section id="section_5">
					<h6>Section No 5</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
				</section>


				<section id="section_6">
					<h6>Section No 6</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
				</section>
			</div>
		</div>
	</div>
	</div>

</body>

<%@ include file="j0_footer_main.jsp"%>
</html>