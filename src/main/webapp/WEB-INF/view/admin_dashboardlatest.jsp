<!doctype html>
<html lang="en">
<head>
<%@ include file="j1_header_main.jsp"%>
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


<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css'>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,500"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="style.css">



<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600&display=swap"
	rel="stylesheet">

<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
</script>


<script>
$(document).ready(function(){
	$(".btn-group .btn").click(function(){
		var inputValue = $(this).find("input").val();
		if(inputValue != 'all'){
			var target = $('table tr[data-status="' + inputValue + '"]');
			$("table tbody tr").not(target).hide();
			target.fadeIn();
		} else {
			$("table tbody tr").fadeIn();
		}
	});
	// Changing the class of status label to support Bootstrap 4
    var bs = $.fn.tooltip.Constructor.VERSION;
    var str = bs.split(".");
    if(str[0] == 4){
        $(".label").each(function(){
        	var classStr = $(this).attr("class");
            var newClassStr = classStr.replace(/label/g, "badge");
            $(this).removeAttr("class").addClass(newClassStr);
        });
    }
});
</script>


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
					<!-- <h6>Section No 1</h6> -->
				<!-- 	Design model here - start -->
				<button>hii</button>
				
				
				
				
				<!-- 	Design model here - end -->
					
					
					
					
					<form action="">
						<div class="form-group">
							<table id="dtBasicExample"
								class="table table-striped table-bordered table-sm"
								cellspacing="0" width="100%"background-color:red;>
								<thead>
									<tr>

										<div class="d-grid gap-2 col-2 mx-auto">
											<button type="button" class="btn btn-success text-center"
												" data-toggle="modal" data-target="#exampleModalCenter">
												Post New Jobs</button>
										</div>


										<div class="modal fade" id="exampleModalCenter" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalCenterTitle"
											aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLongTitle">New
															Post Job</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">

														<!-- ======================= Create Job ===================== -->

														<div class=".container-sm" data-aos="fade-up">
															<form class="c-form">
																<!-- General Information -->
																<div class="box">
																	<div class="box-header">
																		<h4 class="container-fluid bg-primary mb-5 wow fadeIn">General
																			Information</h4>
																	</div>
																	<div class="box-body">
																		<div class="row">
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Job Title</label> <input type="text"
																					class="form-control" placeholder="Job Title">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Company Name</label> <input type="text"
																					class="form-control" placeholder="Company Name">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Category</label> <select
																					class="wide form-control">
																					<option data-display="Location">Information
																						Of Technology</option>
																					<option value="1">Hardware</option>
																					<option value="2">Machanical</option>
																				</select>
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>Description</label> <input type="text"
																					class="form-control" placeholder="Description">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Salary Range</label> <select
																					class="wide form-control">
																					<option data-display="Salary Range">2,0000</option>
																					<option value="1">3,0000</option>
																					<option value="2">4,0000</option>
																				</select>
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>No. Of Vacancy</label> <input type="text"
																					class="form-control" placeholder="No. Of Vacancy">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>Experience</label> <select
																					class="wide form-control">
																					<option data-display="Experience">0 To 6
																						Month</option>
																					<option value="1">1 Year</option>
																					<option value="2">2 Year</option>
																				</select>
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>Company Logo</label>
																				<div class="custom-file-upload">
																					<input type="file" id="file" name="myfiles[]"
																						multiple />
																				</div>
																			</div>
																			<!-- <div class="col-md-4 col-sm-6 col-xs-12 m-clear">
              <label>Job Type</label>
              <select class="wide form-control">
                <option data-display="Job Type">Full Time</option>
                <option value="1">Part Time</option>
                <option value="2">Freelancer</option>
              </select>
            </div> -->
																			<div class="col-md-6 col-sm-6 col-xs-12 m-clear">
																				<label>Qualification Required</label> <input
																					type="text" class="form-control"
																					placeholder="Qualification">
																			</div>
																			<div class="col-md-6 col-sm-6 col-xs-12">
																				<label>Skills(Seperate with Comma)</label> <input
																					type="text" class="form-control"
																					placeholder="Skills">
																			</div>
																		</div>
																	</div>
																</div>

																<!-- Company Address -->
																<div class="box">
																	<div class="box-header">

																		<h4 class="container-fluid bg-primary mb-5 wow fadeIn">Company
																			Address</h4>
																	</div>
																	<div class="box-body">
																		<div class="row">
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Email</label> <input type="email"
																					class="form-control" placeholder="Email">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Phone Number</label> <input type="text"
																					class="form-control" placeholder="Phone Number">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Website Link</label> <input type="text"
																					class="form-control" placeholder="Website Link">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Address</label> <input type="text"
																					class="form-control" placeholder="Address">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>City</label> <select
																					class="wide form-control">
																					<option data-display="State">Afghanistan</option>
																					<option value="1">Albania</option>
																					<option value="2">Algeria</option>
																					<option value="3">Brazil</option>
																					<option value="4">Burundi</option>
																					<option value="5">Bulgaria</option>
																					<option value="6">Germany</option>
																					<option value="7">Grenada</option>
																					<option value="8">Guatemala</option>
																					<option value="9" disabled>Iceland</option>
																				</select>
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>State</label> <select
																					class="wide form-control">
																					<option data-display="State">Afghanistan</option>
																					<option value="1">Albania</option>
																					<option value="2">Algeria</option>
																					<option value="3">Brazil</option>
																					<option value="4">Burundi</option>
																					<option value="5">Bulgaria</option>
																					<option value="6">Germany</option>
																					<option value="7">Grenada</option>
																					<option value="8">Guatemala</option>
																					<option value="9" disabled>Iceland</option>
																				</select>
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>Country</label> <select
																					class="wide form-control">
																					<option data-display="State">Afghanistan</option>
																					<option value="1">Albania</option>
																					<option value="2">Algeria</option>
																					<option value="3">Brazil</option>
																					<option value="4">Burundi</option>
																					<option value="5">Bulgaria</option>
																					<option value="6">Germany</option>
																					<option value="7">Grenada</option>
																					<option value="8">Guatemala</option>
																					<option value="9" disabled>Iceland</option>
																				</select>
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12 m-clear">
																				<label>Zip Code</label> <input type="text"
																					class="form-control" placeholder="Zip Code">
																			</div>
																		</div>
																	</div>
																</div>

																<!-- Social Accounts -->
																<div class="box">
																	<div class="box-header">
																		<h4 class="container-fluid bg-primary mb-5 wow fadeIn">Social
																			Accounts</h4>

																	</div>
																	<div class="box-body">
																		<div class="row">
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Facebook</label> <input type="text"
																					class="form-control"
																					placeholder="https://www.facebook.com">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Google +</label> <input type="text"
																					class="form-control"
																					placeholder="https://www.gmail.com">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Twitter</label> <input type="text"
																					class="form-control"
																					placeholder="https://twitter.com">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>LinkedIn</label> <input type="text"
																					class="form-control"
																					placeholder="https://www.linkedin.com">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Pinterest</label> <input type="text"
																					class="form-control"
																					placeholder="https://www.pinterest.com">
																			</div>
																			<div class="col-md-4 col-sm-6 col-xs-12">
																				<label>Instagram</label> <input type="text"
																					class="form-control"
																					placeholder="http://instagram.com">
																			</div>
																		</div>
																	</div>
																</div>
																<div class="text-center">
																	<button type="submit" class="btn btn-primary">Submit</button>
																</div>
															</form>
														</div>
														</section>

														<!-- ====================== End Create Job ================ -->
													</div>
													<th><h6>Company Name</h6></th>
													<th class="th-sm">Location</th>
													<th class="th-sm">Experience</th>
													<th class="th-sm">Qualification</th>
													<th class="th-sm">Skills</th>
													<th class="th-sm">Resume</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
									</tr>
									<tr>
										<td>Garrett Winters</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>63</td>
										<td>2011/07/25</td>
										<td>$170,750</td>
									</tr>
									<tr>
										<td>Ashton Cox</td>
										<td>Junior Technical Author</td>
										<td>San Francisco</td>
										<td>66</td>
										<td>2009/01/12</td>
										<td>$86,000</td>
									</tr>
									<tr>
										<td>Cedric Kelly</td>
										<td>Senior Javascript Developer</td>
										<td>Edinburgh</td>
										<td>22</td>
										<td>2012/03/29</td>
										<td>$433,060</td>
									</tr>
									<tr>
										<td>Airi Satou</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>33</td>
										<td>2008/11/28</td>
										<td>$162,700</td>
									</tr>
									<tr>
										<td>Brielle Williamson</td>
										<td>Integration Specialist</td>
										<td>New York</td>
										<td>61</td>
										<td>2012/12/02</td>
										<td>$372,000</td>
									</tr>
									<tr>
										<td>Herrod Chandler</td>
										<td>Sales Assistant</td>
										<td>San Francisco</td>
										<td>59</td>
										<td>2012/08/06</td>
										<td>$137,500</td>
									</tr>
									<tr>
										<td>Rhona Davidson</td>
										<td>Integration Specialist</td>
										<td>Tokyo</td>
										<td>55</td>
										<td>2010/10/14</td>
										<td>$327,900</td>
									</tr>
									<tr>
										<td>Colleen Hurst</td>
										<td>Javascript Developer</td>
										<td>San Francisco</td>
										<td>39</td>
										<td>2009/09/15</td>
										<td>$205,500</td>
									</tr>
								
								</tbody>
								<tfoot>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>
										<th>Age</th>
										<th>Start date</th>
										<th>Salary</th>
									</tr>
								</tfoot>
							</table>
						</div>

					</form>
					<script>	$(document).ready(function () {
  $('#dtBasicExample').DataTable();
  $('.dataTables_length').addClass('bs-select');
});</script>
				</section>

				<section id="section_2">
					<h6>Section No 2</h6>
					<form action="">
						<div class="form-group"></div>

						<div class="container-xl">
							<div class="table-responsive">
								<div class="table-wrapper">
									<div class="table-title">
										<div class="row">
											<div class="col-sm-4">
												<h2>
													<b>Details</b>
												</h2>
											</div>
											<div class="col-sm-8">
												<a href="#" class="btn btn-primary"><i
													class="material-icons">&#xE863;</i> <span>Refresh
														List</span></a> <a href="#" class="btn btn-secondary"><i
													class="material-icons">&#xE24D;</i> <span>Export to
														Excel</span></a>
											</div>
										</div>
									</div>
									<div class="table-filter">
										<div class="row">
											<div class="col-sm-3">
												<div class="show-entries">
													<span>Show</span> <select class="form-control">
														<option>5</option>
														<option>10</option>
														<option>15</option>
														<option>20</option>
													</select> <span>entries</span>
												</div>
											</div>
											<div class="col-sm-9">
												<button type="button" class="btn btn-primary">
													<i class="fa fa-search"></i>
												</button>
												<div class="filter-group">
													<label>Name</label> <input type="text" class="form-control">
												</div>
												<div class="filter-group">
													<label>Location</label> <select class="form-control">
														<option>All</option>
														<option>Berlin</option>
														<option>London</option>
														<option>Madrid</option>
														<option>New York</option>
														<option>Paris</option>
													</select>
												</div>
												<div class="filter-group">
													<label>Status</label> <select class="form-control">
														<option>Any</option>

														<option>Placed</option>
														<option>Pending</option>
														<option>Cancelled</option>
													</select>
												</div>
												<span class="filter-icon"><i class="fa fa-filter"></i></span>
											</div>
										</div>
									</div>
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>#</th>

												<th>Name</th>
												<th>Location</th>
												<th>date</th>
												<th>Status</th>

												<!-- 	<th>Action</th> -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td><a href="" data-toggle="modal"
													data-target="#viewapply"><img
														src="/examples/images/avatar/1.jpg" class="avatar"
														alt="Avatar"> Michael Holz</a></td>
												<td>London</td>
												<td>Jun 15, 2017</td>
												<td><span class="status text-success">&bull;</span>
													Delivered</td>

												<td><a href="" data-toggle="modal"
													data-target="#viewapply" class="view" title="View Details"
													data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
											</tr>
											<tr>
												<td>2</td>
												<td><a href="" data-toggle="modal"
													data-target="#viewapply"><img
														src="/examples/images/avatar/1.jpg" class="avatar"
														alt="Avatar"> Lina</a></td>
												<td>London</td>
												<td>Jun 15, 2017</td>
												<td><span class="status text-success">&bull;</span>
													Delivered</td>

												<td><a href="" data-toggle="modal"
													data-target="#viewapply" class="view" title="View Details"
													data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
											</tr>
											<tr>
												<td>3</td>
												<td><a href="#"><img
														src="/examples/images/avatar/3.jpg" class="avatar"
														alt="Avatar"> Antonio Moreno</a></td>
												<td>Berlin</td>
												<td>Jul 04, 2017</td>
												<td><span class="status text-danger">&bull;</span>
													Cancelled</td>

												<td><a href="#" class="view" title="View Details"
													data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
											</tr>
											<tr>
												<td>4</td>
												<td><a href="#"><img
														src="/examples/images/avatar/4.jpg" class="avatar"
														alt="Avatar"> Mary Saveley</a></td>
												<td>New York</td>
												<td>Jul 16, 2017</td>
												<td><span class="status text-warning">&bull;</span>
													Pending</td>

												<td><a href="#" class="view" title="View Details"
													data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
											</tr>
											<tr>
												<td>5</td>
												<td><a href="#"><img
														src="/examples/images/avatar/5.jpg" class="avatar"
														alt="Avatar"> Martin Sommer</a></td>
												<td>Paris</td>
												<td>Aug 04, 2017</td>
												<td><span class="status text-success">&bull;</span>
													Delivered</td>

												<td><a href="#" class="view" title="View Details"
													data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
											</tr>
										</tbody>
									</table>
									<!-- Modal -->
									<div class="modal fade" id="viewapply" tabindex="4"
										role="dialog" aria-labelledby="exampleModalCenterTitle"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<!-- <h5 class="modal-title" id="exampleModalLongTitle">Modal
														title</h5> -->
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">

													<!-- ================ Employer Profile ======================= -->
													<section class="padd-top-80 padd-bot-50">
														<div class=".container-sm">
															<div class="user_acount_info">
																<div class="col-md-3 col-sm-5">
																	<div class="emp-pic">
																		<img class="img-responsive width-270"
																			src="https://img.lovepik.com/free-png/20211112/lovepik-sexually-apathetic-beauty-makeup-png-image_400899772_wh1200.png"
																			alt="">
																	</div>
																</div>
																<div class="col-md-9 col-sm-7">
																	<div class="emp-des">
																		<h3>Daniel Dicoss</h3>
																		<span class="theme-cl">Account Manager</span>
																		<ul class="employer_detail_item">
																			<li><i class="ti-credit-card padd-r-10"></i>MT-587,
																				Near Bue Market Qch52, New York</li>
																			<li><i class="ti-world padd-r-10"></i>https://www.example.com</li>
																			<li><i class="ti-mobile padd-r-10"></i>91 234
																				567 8765</li>
																			<li><i class="ti-email padd-r-10"></i>mail@example.com</li>
																			<li><i class="ti-pencil-alt padd-r-10"></i>Bachelor
																				Degree</li>
																			<li><i class="ti-shield padd-r-10"></i>3 Year
																				Exp.</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</section>
													<!-- ================ End Employer Profile ======================= -->

												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>

												</div>
											</div>
										</div>
									</div>
									<div class="clearfix">
										<div class="hint-text">
											Showing <b>5</b> out of <b>25</b> entries
										</div>
										<ul class="pagination">
											<li class="page-item disabled"><a href="#">Previous</a></li>
											<li class="page-item"><a href="#" class="page-link">1</a></li>
											<li class="page-item"><a href="#" class="page-link">2</a></li>
											<li class="page-item"><a href="#" class="page-link">3</a></li>
											<li class="page-item active"><a href="#"
												class="page-link">4</a></li>
											<li class="page-item"><a href="#" class="page-link">5</a></li>
											<li class="page-item"><a href="#" class="page-link">6</a></li>
											<li class="page-item"><a href="#" class="page-link">7</a></li>
											<li class="page-item"><a href="#" class="page-link">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
</script>


					</form>
				</section>

				<section id="section_3">
					<h6>Section No 3</h6>
					<form action="">
						<div class="form-group">

							<div class="container-xl">
								<div class="table-responsive">
									<div class="table-wrapper">
										<div class="table-title">
											<div class="row">
												<div class="col-sm-5">
													<h2>
														<b>Management</b>
													</h2>
												</div>
												<div class="col-sm-7">
													<a href="#" class="btn btn-secondary"><i
														class="material-icons">&#xE147;</i> <span>Add New
															User</span></a> <a href="#" class="btn btn-secondary"><i
														class="material-icons">&#xE24D;</i> <span>Export to
															Excel</span></a>
												</div>
											</div>
										</div>
										<table class="table table-striped table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th>Name</th>
													<th>Date Created</th>
													<th>Role</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><a href="#"><img
															src="/examples/images/avatar/1.jpg" class="avatar"
															alt="Avatar"> Michael Holz</a></td>
													<td>04/10/2013</td>
													<td>Admin</td>
													<td><span class="status text-success">&bull;</span>
														Active</td>
													<td><a href="#" class="settings" title="Settings"
														data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
														<a href="#" class="delete" title="Delete"
														data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td><a href="#"><img
															src="/examples/images/avatar/2.jpg" class="avatar"
															alt="Avatar"> Paula Wilson</a></td>
													<td>05/08/2014</td>
													<td>Publisher</td>
													<td><span class="status text-success">&bull;</span>
														Active</td>
													<td><a href="#" class="settings" title="Settings"
														data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
														<a href="#" class="delete" title="Delete"
														data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td><a href="#"><img
															src="/examples/images/avatar/3.jpg" class="avatar"
															alt="Avatar"> Antonio Moreno</a></td>
													<td>11/05/2015</td>
													<td>Publisher</td>
													<td><span class="status text-danger">&bull;</span>
														Suspended</td>
													<td><a href="#" class="settings" title="Settings"
														data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
														<a href="#" class="delete" title="Delete"
														data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td><a href="#"><img
															src="/examples/images/avatar/4.jpg" class="avatar"
															alt="Avatar"> Mary Saveley</a></td>
													<td>06/09/2016</td>
													<td>Reviewer</td>
													<td><span class="status text-success">&bull;</span>
														Active</td>
													<td><a href="#" class="settings" title="Settings"
														data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
														<a href="#" class="delete" title="Delete"
														data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td><a href="#"><img
															src="/examples/images/avatar/5.jpg" class="avatar"
															alt="Avatar"> Martin Sommer</a></td>
													<td>12/08/2017</td>
													<td>Moderator</td>
													<td><span class="status text-warning">&bull;</span>
														Inactive</td>
													<td><a href="#" class="settings" title="Settings"
														data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
														<a href="#" class="delete" title="Delete"
														data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
													</td>
												</tr>
											</tbody>
										</table>
										<div class="clearfix">
											<div class="hint-text">
												Showing <b>5</b> out of <b>25</b> entries
											</div>
											<ul class="pagination">
												<li class="page-item disabled"><a href="#">Previous</a></li>
												<li class="page-item"><a href="#" class="page-link">1</a></li>
												<li class="page-item"><a href="#" class="page-link">2</a></li>
												<li class="page-item active"><a href="#"
													class="page-link">3</a></li>
												<li class="page-item"><a href="#" class="page-link">4</a></li>
												<li class="page-item"><a href="#" class="page-link">5</a></li>
												<li class="page-item"><a href="#" class="page-link">Next</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>




						</div>
					</form>
				</section>


				<section id="section_4">
					<h6>Section No 4</h6>
					<form action="">
						<div class="form-group"></div>
					</form>
				</section>


				<section id="section_5">
					<!-- <h6>Section No 5</h6> -->
					<form action="">
						<div class="form-group">
							<a href="" id="#Client" class="btn btn-primary btn-lg active" role="button"
								aria-pressed="true">Clients</a> 
								<a href="" id="#Student" class="btn btn-primary btn-lg active" role="button"
								aria-pressed="true">Students</a>


						</div>
						<div class="container-xl">
							<div class="table-responsive">
								<div class="table-wrapper">
									<div class="table-title">
										<div class="row">
											<div class="col-sm-6">
												<h2>Manage</h2>
											</div>
											<div class="col-sm-6">
												<div class="btn-group" id="#Client" data-toggle="buttons">
													<label class="btn btn-info active"> <input
														type="radio" name="status" value="all" checked="checked">
														All
													</label> <label class="btn btn-success"> <input
														type="radio" name="status" value="active"> Active
													</label> <label class="btn btn-warning"> <input
														type="radio" name="status" value="inactive">
														Inactive
													</label> <label class="btn btn-danger"> <input type="radio"
														name="status" value="expired"> Expired
													</label>
												</div>
											</div>
										</div>
									</div>
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>#</th>
												<!--  <th>Domain</th> -->
												<th>Created&nbsp;On</th>
												<th>Status</th>
												<th>Server&nbsp;Location</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr data-status="active">
												<td>1</td>
												<!--     <td><a href="#">loremvallis.com</a></td> -->
												<td>04/10/2013</td>
												<td><span class="label label-success">Active</span></td>
												<td>Buenos Aires</td>
												<!--  <td><a href="#" class="btn btn-sm manage">Manage</a></td> -->
											</tr>
											<tr data-status="inactive">
												<td>2</td>
												<!-- <td><a href="#">quisquamut.net</a></td> -->
												<td>05/08/2014</td>
												<td><span class="label label-warning">Inactive</span></td>
												<td>Australia</td>
												<!--  <td><a href="#" class="btn btn-sm manage">Manage</a></td> -->
											</tr>
											<tr data-status="active">
												<td>3</td>
												<!--  <td><a href="#">convallissed.com</a></td> -->
												<td>11/05/2015</td>
												<td><span class="label label-success">Active</span></td>
												<td>United Kingdom</td>
												<!-- <td><a href="#" class="btn btn-sm manage">Manage</a></td> -->
											</tr>
											<tr data-status="expired">
												<td>4</td>
												<!--   <td><a href="#">phasellusri.org</a></td> -->
												<td>06/09/2016</td>
												<td><span class="label label-danger">Expired</span></td>
												<td>Romania</td>
												<!-- <td><a href="#" class="btn btn-sm manage">Manage</a></td> -->
											</tr>
											<tr data-status="inactive">
												<td>5</td>
												<!--   <td><a href="#">facilisleo.com</a></td> -->
												<td>12/08/2017</td>
												<td><span class="label label-warning">Inactive</span></td>
												<td>Germany</td>
												<!--  <td><a href="#" class="btn btn-sm manage">Manage</a></td> -->
											</tr>
										</tbody>
									</table>

								</div>
							</div>
						</div>
			</div>
			</form>
			</section>


			<section id="section_6">
				<!-- <h6>Section No 6</h6> -->
				<form action="">
					<div class="form-group">

						<div class="text-center">
							<!-- Button HTML (to Trigger Modal) -->
							<a href="#myModal" class="trigger-btn" data-toggle="modal">Confirm
								signout</a>
						</div>

						<!-- Modal HTML -->
						<div id="myModal" class="modal fade">
							<div class="modal-dialog modal-confirm">
								<div class="modal-content">
									<div class="modal-header">
										<div class="icon-box">
											<i class="material-icons">&#xE876;</i>
										</div>
										<h1 class="modal-title w-100">......See You Soon!.....</h1>
									</div>
									<div class="modal-body">
										<p class="text-center">Your Signout has been Done.</p>
									</div>
									<div class="modal-footer">
										<button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
									</div>
								</div>
							</div>
						</div>
					</div>



				</form>
			</section>
</body>
<%@ include file="j0_footer_main.jsp"%>
</html>