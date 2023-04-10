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
					href="#"><i class="fa-solid fa-cog mr-1"></i> <span id="id_2">Candidates
					</span></a>
					<hr></li>
				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-shield mr-1"></i> <span
						id="id_3">style="text-align: center;"</span> </a>
					<hr></li>
				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_4">Notification</span>
				</a>
					<hr></li>
				<li class="nav-item"><a data-toggle="tab" class="nav-link"
					href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_5">Login</span>
				</a>
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


							<table id="example" class="display" style="width: 100%">
								<thead>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>
										<th>Age</th>
										<th>Start date</th>
										<th>Salary</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011-04-25</td>
										<td>$320,800</td>
									</tr>
									<tr>
										<td>Michael Bruce</td>
										<td>Javascript Developer</td>
										<td>Singapore</td>
										<td>29</td>
										<td>2011-06-27</td>
										<td>$183,000</td>
									</tr>
									<tr>
										<td>Donna Snider</td>
										<td>Customer Support</td>
										<td>New York</td>
										<td>27</td>
										<td>2011-01-25</td>
										<td>$112,000</td>
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
<%@ include file="footer_main.jsp"%>
</html>