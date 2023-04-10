<!doctype html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html lang="en">

<head>
<!-- 
<script>
    if(window.history.forward(1) !=null)
    window.history.forward(1);
</script> -->
<!-- To disable back button  -->
<%-- 	<%
		response.setHeader("Pragma","no-cache");
		response.setHeader("Cache-Control","no-store");
		response.setHeader("Expires","0");
		response.setDateHeader("Expires",-1);
	%> --%>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- JQUERY CDN    if doesn't worked bootstrap 2 jquery cnd at bottom then use this CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- FONT AWESOME CDN -->
<script src="https://kit.fontawesome.com/9ccd7bd56c.js"
	crossorigin="anonymous"></script>

<!-- CDN FOR SWEET ALERT  -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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

<title>Dashboard</title>
</head>

<body
	style="background-color: rgba(123, 143, 189, 0.5); background-size: fixed;">
	<div class="container-fluid">
		<div class="row">

			<div class="col col-lg-12 clmd-12 colsm-12 col-xs-12">
				<nav class="navbar navbar-expand-lg navbar-dark  mt-2"
					style="border-radius: 20px; background-color: rgba(103, 174, 130, 0.9);">

					<div class="wrapper-user">
						<img alt="user"
							src="https://img.favpng.com/14/3/22/stock-photography-computer-icons-user-png-favpng-TWgLj8kmcdnekcpWySfpV97h3.jpg"
							width="40px" height="40px" style="border-radius: 50px;">
					</div>
					
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>


					<%
					String iname = null; /* iname will be the name of file upload folder inside project  */
					/* This will bring user NAME from table*/
					String suser = (String) session.getAttribute("sesdash"); /* sesdash came from S_loginServer.jsp */
					%>

					&nbsp;&nbsp;&nbsp;
					<h3>
						<b>Welcome &nbsp;<%=suser%></b>
					</h3>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">

						</ul>
						<ul class="navbar-nav ml-auto ">


							<h6>
								<b>Date:-&nbsp;&nbsp;</b>
							</h6>
							<%
							Date dNow = new Date();
							/*  SimpleDateFormat ft = new SimpleDateFormat (" E, dd.MM.yyyy 'Time:-' hh:mm:ss a zzz"); */
							SimpleDateFormat ft = new SimpleDateFormat(" E, dd.MM.yyyy  ");
							String date = ft.format(dNow);
							out.print("<h6 align=\"center\">" + date + "</h6>");
							%>

							&nbsp;&nbsp;
							<h6>
								<b>Time:-&nbsp;&nbsp;</b>
							</h6>
							<%
							Date dNow1 = new Date();
							SimpleDateFormat ft1 = new SimpleDateFormat("  hh:mm:ss a zzz");
							out.print("<h6 align=\"center\">" + ft1.format(dNow1) + "</h6>");
							%>


							<li class="nav-item dropdown "><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true"> Admin </a>
								<div class="dropdown-menu " aria-labelledby="navbarDropdown">
									<a data-toggle="tab" class="dropdown-item" href="#home"><i
										class="fa-solid fa-cog mr-1"></i> Home</a> <a data-toggle="tab"
										class="dropdown-item" href="#messageUs"><i
										class="fa-solid fa-bell mr-1"></i> MessageUs</a>

									<div class="dropdown-divider"></div>
									<!-- HERE WE ADDED LOGIN PAGE ON LOGOUT  inside i tag icon is used-->
									<form>
										<a class="dropdown-item" href="P1_loginPage.jsp"><i
											class="fa-solid fa-user-lock mr-1"></i>logout</a>
									</form>
								</div></li>
						</ul>
					</div>
				</nav>

			</div>
		</div>

		<div class="row">
			<div
				class="col col-lg-2 col-md-2 col-sm-12 col-xs-12 d-md-block d-none mt-3 ml-2"
				style="background-color: rgba(230, 234, 197, 1); box-shadow: 2px 8px 9px black; border-radius: 10px;">
				<ul class="nav flex-column ">

					<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
						String sql1 = "select * from onlineshopping where name='" + suser + "'";
						PreparedStatement pst1 = con1.prepareStatement(sql1);
						ResultSet rs1 = pst1.executeQuery();
						while (rs1.next()) {
							String username = rs1.getString(2);
							if (username.equals("Admin")) {
					%>

					<script>
    		$(document).ready(function() 
    			{
				    $("#section_1").show();
					$("#section_2").hide();
					$("#section_3").hide();
					$("#section_4").hide();
					$("#section_5").hide();
					$("#section_6").hide();
					$("#section_11").hide();
					$("#section_22").hide();
					$("#section_33").hide();
					$("#section_44").hide();
					$("#section_55").hide();
					$("#section_66").hide(); 
					
					$("#id_1").click(function() 
							{
								$("#section_1").show();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").hide();
								$("#section_6").hide();
								$("#section_11").hide();
								$("#section_22").hide();
								$("#section_33").hide();
								$("#section_44").hide();
								$("#section_55").hide();
								$("#section_66").hide();
							});
					
					$("#id_2").click(function() 
						{
							$("#section_1").hide();
							$("#section_2").show();
							$("#section_3").hide();
							$("#section_4").hide();
							$("#section_5").hide();
							$("#section_6").hide();
							$("#section_11").hide();
							$("#section_22").hide();
							$("#section_33").hide();
							$("#section_44").hide();
							$("#section_55").hide();
							$("#section_66").hide();
						});
					
					$("#id_3").click(function() 
						{
							$("#section_1").hide();
							$("#section_2").hide();
							$("#section_3").show();
							$("#section_4").hide();
							$("#section_5").hide();
							$("#section_6").hide();
							$("#section_11").hide();
							$("#section_22").hide();
							$("#section_33").hide();
							$("#section_44").hide();
							$("#section_55").hide();
							$("#section_66").hide();
						});
					
					$("#id_4").click(function() 
							{
								$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").show();
								$("#section_5").hide();
								$("#section_6").hide();
								$("#section_11").hide();
								$("#section_22").hide();
								$("#section_33").hide();
								$("#section_44").hide();
								$("#section_55").hide();
								$("#section_66").hide();
							});
					
					$("#id_5").click(function() 
							{
								$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").show();
								$("#section_6").hide();
								$("#section_11").hide();
								$("#section_22").hide();
								$("#section_33").hide();
								$("#section_44").hide();
								$("#section_55").hide();
								$("#section_66").hide();
							});
					
					$("#id_6").click(function() 
							{
								$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").hide();
								$("#section_6").show();
								$("#section_11").hide();
								$("#section_22").hide();
								$("#section_33").hide();
								$("#section_44").hide();
								$("#section_55").hide();
								$("#section_66").hide();
							});
	
				});
    	</script>


					<li class="nav-item"><br> <a data-toggle="tab"
						class="nav-link active" href="#"><i
							class="fa-solid fa-user mr-1"></i> <span id="id_1"> Add
								New Product </span></a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-cog mr-1"></i> <span id="id_2">
								All products & Edit products </span></a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-shield mr-1"></i> <span
							id="id_3">Messages Received </span> </a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_4">Order
								Received</span> </a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-bell mr-1"></i> <span id="id_5">
								Cancle Order</span> </a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-money-check-alt mr-1"></i> <span
							id="id_6"> Delivered Order</span> </a>
						<hr> <%
 } // if closing
 else {
 %> <script>
    		    		$(document).ready(function() 
    		    			{
	    		    			$("#section_1").hide();
								$("#section_2").hide();
								$("#section_3").hide();
								$("#section_4").hide();
								$("#section_5").hide();
								$("#section_6").hide();
								$("#section_11").show();
								$("#section_22").hide();
								$("#section_33").hide();
								$("#section_44").hide();
								$("#section_55").hide();
								$("#section_66").hide();
    							
    							
    							$("#id_11").click(function() 
    									{
    								$("#section_1").hide();
    								$("#section_2").hide();
    								$("#section_3").hide();
    								$("#section_4").hide();
    								$("#section_5").hide();
    								$("#section_6").hide();
    								$("#section_11").show();
    								$("#section_22").hide();
    								$("#section_33").hide();
    								$("#section_44").hide();
    								$("#section_55").hide();
    								$("#section_66").hide();
    									});
    							
    							$("#id_22").click(function() 
    								{
    								$("#section_1").hide();
    								$("#section_2").hide();
    								$("#section_3").hide();
    								$("#section_4").hide();
    								$("#section_5").hide();
    								$("#section_6").hide();
    								$("#section_11").hide();
    								$("#section_22").show();
    								$("#sec_1").show();
    								$("#sec_2").hide();
    								$("#section_33").hide();
    								$("#section_44").hide();
    								$("#section_55").hide();
    								$("#section_66").hide();
    								});
    							
    							$("#id_33").click(function() 
    								{
    								$("#section_1").hide();
    								$("#section_2").hide();
    								$("#section_3").hide();
    								$("#section_4").hide();
    								$("#section_5").hide();
    								$("#section_6").hide();
    								$("#section_11").hide();
    								$("#section_22").hide();
    								$("#section_33").show();
    								$("#section_44").hide();
    								$("#section_55").hide();
    								$("#section_66").hide();
    								});
    							
    							$("#id_44").click(function() 
    									{
		    								$("#section_1").hide();
		    								$("#section_2").hide();
		    								$("#section_3").hide();
		    								$("#section_4").hide();
		    								$("#section_5").hide();
		    								$("#section_6").hide();
		    								$("#section_11").hide();
		    								$("#section_22").hide();
		    								$("#section_33").hide();
		    								$("#section_44").show();
		    								$("#section_55").hide();
		    								$("#section_66").hide();
    									});
    							
    							$("#id_55").click(function() 
    									{
		    								$("#section_1").hide();
		    								$("#section_2").hide();
		    								$("#section_3").hide();
		    								$("#section_4").hide();
		    								$("#section_5").hide();
		    								$("#section_6").hide();
		    								$("#section_11").hide();
		    								$("#section_22").hide();
		    								$("#section_33").hide();
		    								$("#section_44").hide();
		    								$("#section_55").show();
		    								$("#section_66").hide();
    									});
    							
    							$("#id_66").click(function() 
    									{
		    								$("#section_1").hide();
		    								$("#section_2").hide();
		    								$("#section_3").hide();
		    								$("#section_4").hide();
		    								$("#section_5").hide();
		    								$("#section_6").hide();
		    								$("#section_11").hide();
		    								$("#section_22").hide();
		    								$("#section_33").hide();
		    								$("#section_44").hide();
		    								$("#section_55").hide();
		    								$("#section_66").show();
    									});
    			
    						});
    		    	</script>
					<li class="nav-item"><br> <a data-toggle="tab"
						class="nav-link active" href="#"><i
							class="fa-solid fa-user mr-1"></i> <span id="id_11">Home</span></a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-cog mr-1"></i> <span id="id_22">
								My Cart </span></a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-shield mr-1"></i> <span
							id="id_33"> My Order </span> </a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-bell mr-1"></i> <span
							id="id_44"> Change Details</span> </a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-bell mr-1"></i> <span
							id="id_55"> Message Us</span> </a>
						<hr></li>
					<li class="nav-item"><a data-toggle="tab" class="nav-link"
						href="#"><i class="fa-solid fa-money-check-alt mr-1"></i> <span
							id="id_66"> About </span> </a>
						<hr> <%
 } //else closing
 } // while closing
 } // try closing
 catch (Exception ex) {
 out.println("exception" + ex);
 }
 %> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br></li>

				</ul>
			</div>

			<div class="col col-lg-9 col-md-9 col-sm-9 col-xs-9 ">

				<!-- S C R I P T L E T    F O R    A-D-M-I-N  => start  -->




				<!-- S C R I P T L E T    F O R    A-D-M-I-N  => end  -->

				<!-- S C R I P T L E T    F O R    U-S-E-R  => start  -->

				<!-- SCRIPTLET FOR PRODUCT ADDED SUCCESSFUL MESSAGE = START -->
				<%
				String sesProductAdded = (String) session
						.getAttribute("sesProductAdded"); /* sesProductAdded came from A_addNewProduct.jsp */
				if (sesProductAdded == null) {

				} else {
				%>
				<script>swal("Product added sucessfully", "<%=sesProductAdded%>
					",
							"success");
				</script>
				<%
				session.setAttribute("sesProductAdded", null);
				}
				%>
				<!-- SCRIPTLET FOR  PRODUCT ADDED  SUCCESSFUL MESSAGE = END -->

				<!-- EXISTING PRODUCT dismissible alert message START -->
				<%
				String existProduct = (String) session.getAttribute("existProduct");
				if (existProduct == null) {

				} else {
				%>
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong><%=existProduct%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<%
				session.setAttribute("existProduct", null); /* This is used to avoid message on refresh  */
				}
				%>

				<%
				String sesNewQty = (String) session.getAttribute("sesNewQty");
				if (sesNewQty == null) {

				} else {
				%>
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>and quantity is <%=sesNewQty%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<%
				session.setAttribute("sesNewQty", null); /* This is used to avoid message on refresh  */
				}
				%>
				<!-- EXISTING PRODUCT DELETE dismissible alert message START -->

				<!-- NEW PRODUCT dismissible alert message START -->
				<%
				String newProduct = (String) session.getAttribute("newProduct");
				if (newProduct == null) {

				} else {
				%>
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong><%=newProduct%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<%
				session.setAttribute("newProduct", null); /* This is used to avoid message on refresh  */
				}
				%>
				<!-- NEW PRODUCT DELETE dismissible alert message START -->

				<!-- NO PRODUCT dismissible alert message START -->
				<%
				String noProduct = (String) session.getAttribute("noProduct");
				if (noProduct == null) {

				} else {
				%>
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong><%=noProduct%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<%
				session.setAttribute("noProduct", null); /* This is used to avoid message on refresh  */
				}
				%>
				<!-- NO PRODUCT DELETE dismissible alert message START -->

				<!-- S C R I P T L E T    F O R    U-S-E-R  => end  -->




				<div class="card-body tab-content  mt-4 bg-light">

					<!-- F O R    D A S H B O A R D   O-N-E  => start  -->

					<section id="section_1">
						<!--  ADMIN = ADD NEW PRODUCT  -->
						<h6>You Can add new product here</h6>
						<form action="Pa12_addNewProduct.jsp" method="post"
							enctype="multipart/form-data">
							<div class="form-group">

								<%-- <%        /* CODE TO SHOW ID ON PAGE */
	            try
	            {
	            		Class.forName("com.mysql.jdbc.Driver");
	                	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","");
	                	String sql="select id from os_products";
	                	PreparedStatement pst=con.prepareStatement(sql);
	                	ResultSet rs=pst.executeQuery();
	                	while(rs.next())
	                	{	  	                		
	                      %>	                		
		                
             
			    <br>			    
			    <label><b>Product Id: </b></label>&nbsp;&nbsp;&nbsp;<input type="text" value="<%=rs.getInt(1)+1%>" name=id  disabled="disabled"> 
			     <% 
	                	}
	            		
	            }catch(Exception ex)
	            {
	            	out.println("exception "+ex);
	            }
	            %>  --%>


								<br> <br> <br>
								<input type="text" class="form-control" name="name"
									placeholder="Enter Name" required> <br>
								<input type="text" class="form-control" name="category"
									placeholder="Enter Category" required> <br>
								<input type="number" class="form-control" name="price"
									placeholder="Enter Price" required> <br>
								<input type="text" class="form-control" name="description"
									placeholder="Enter Description" required> <br> <label
									for="select"><strong>Active: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<select id="select" class="form-control" name="active" required>
										<option selected disabled value="">Select Status</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
								</select> </label> <br>
							</div>
							<div class="form-group">
								<label><strong>Attach File: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<input type="file" class="form-control" name="attach" required>
								<br>
								<hr>
								<button class="btn btn-primary" type="submit">
									ADD Product&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-circle-plus"></i>
								</button>
							</div>

						</form>
					</section>

					<section id="section_2">
						<!--  ADMIN = EDIT PRODUCTS -->
						<h6>All Products and edit products</h6>
						<hr>
						<form action="">
							<div class="form-group">

								<!-- 	HERE WE ARE ADDING PROFILE FILE AND DASHBOARD NAME OF USER = start -->

								<%
								int p_id = 0;
								String p_name = "";
								int p_price = 0;
								String p_description = "";
								try {
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
									/* THIS QUERY WILL SELECT IMAGE NAME FROM TABLE WHERE NAME = NAME OF LOGIN PERSON.. and dashname is that name  */
									String sql = "select * from os_products";
									PreparedStatement pst = con.prepareStatement(sql);
									ResultSet rs = pst.executeQuery();
									while (rs.next()) {
										p_id = rs.getInt(1);
										p_name = rs.getString(2);
										p_price = rs.getInt(4);
										p_description = rs.getString(6);
										iname = rs.getString(7);
								%>

								<div class="form-check-inline">
									<div class="card" style="width: 18rem" height="10px";">
										<img src="productpic/<%=iname%>" class="card-img-top"
											width="140px" height="300px"
											style="border-radius: 5px; border: 0.3px solid rgb(19, 18, 18);">
										<div class="card-body">
											<p class="card-text">
												<b><%=p_name%></b>
											</p>
											<!--insert product name  -->
											<p class="card-text">
											<h4><%=p_price%>
												Rs.
											</h4>
											</p>
											<a href="P8_description.jsp?id=<%=p_id%>" class="card-link"><b><i>Details</i></b></a>
										</div>
									</div>
								</div>

								<%
								} /*while closing */
								} /* try closing */

								catch (Exception ex) {
								out.println("exception" + ex);
								}
								%>
								<!-- 	HERE WE ARE ADDING PROFILE FILE AND DASHBOARD NAME OF USER = end -->

								<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
								<script>
									$(document).ready(function() {
										//alert("hello")
										$('#example').DataTable();
									});
								</script>

								<table id="example" class="table table-success">
									<thead>
										<tr>
											<th>Select</th>
											<!-- muldelete = added -->
											<th>Id</th>
											<th>Image</th>
											<th>Name</th>
											<th>Category</th>
											<th>Price</th>
											<!-- 	<th>Active Status</th>	        -->
											<th>Edit</th>
											<th>Delete</th>
										</tr>
									</thead>

									<tbody>
										<%
										try {
											Class.forName("com.mysql.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
											String sql = "select * from os_products";
											PreparedStatement pst = con.prepareStatement(sql);
											ResultSet rs = pst.executeQuery();
											while (rs.next()) {
										%>
										<tr>
											<!-- muldelete = added input tag only for select-->
											<td><div class="form-check">
													<input class="form-check-input" type="checkbox"
														name="check" value=<%=rs.getInt(1)%>>
												</div></td>
											<td><%=rs.getInt(1)%></td>
											<!--  This will insert ID from table -->
											<td>
												<div>
													<div class="card" style="width: 10rem" height="5px";">
														<img src="productpic/<%=rs.getString(7)%>"
															class="card-img-top" width="100px" height="140px"
															style="border-radius: 5px; border: 0.3px solid rgb(19, 18, 18);">
													</div>
												</div>

											</td>
											<td><%=rs.getString(2)%></td>
											<!--  This will insert NAME from table -->
											<td><%=rs.getString(3)%></td>
											<!--  This will insert Category from table -->
											<td><b><%=rs.getString(4)%></b>&nbsp;&nbsp;<i
												class="fa-solid fa-rupee-sign"></i></td>
											<!--  This will insert Price from table -->
											<%-- <td><%=rs.getString(5) %></td>	 <!--  This will insert Active Status from table -->	 --%>

											<!-- ICON IS ADDED IN i tag like <i class="fa-solid fa-pen-to-square"></i> -->
											<td><a href="Pa14_edit.jsp?id=<%=rs.getInt(1)%>"><i
													class="fa-solid fa-pen-to-square"></i></a></td>
											<td><a href="Pa16_delete.jsp?id=<%=rs.getInt(1)%>"><i
													class="fa-solid fa-trash-can"></i></a></td>
										</tr>
										<%
										}

										} catch (Exception ex) {
										out.println("exception " + ex);
										}
										%>
									</tbody>
									<tfoot>
										<tr>
											<th>Select</th>
											<!-- muldelete = added -->
											<th>Id</th>
											<th>Name</th>
											<th>Category</th>
											<th>Price</th>
											<!-- 	<th>Active Status</th>	        -->
											<th>Edit</th>
											<th>Delete</th>
										</tr>
									</tfoot>
								</table>
								<button class="btn btn-primary">Multiple Delete</button>

							</div>
						</form>
					</section>

					<section id="section_3">
						<!--  ADMIN = All Messages-->
						<h6>All Messages</h6>
						<form action="Pa17_allProductEditProduct.jsp">
							<div class="form-group">

								<input class="form-control" type="password" id="pass"
									name="pass" placeholder=" Enter current password"> <br>
								<input class="form-control" type="password" id="pass2"
									name="pass2" placeholder=" Enter New password">

							</div>
						</form>
					</section>

					<section id="section_4">
						<!--  ADMIN = Order Received -->
						<h6>Order Received</h6>
						<form action="">
							<div class="form-group"></div>
						</form>
					</section>

					<section id="section_5">
						<!--  ADMIN = Your Cancled Order -->
						<h6>Your Cancled Order</h6>
						<form action="">
							<div class="form-group"></div>
						</form>
					</section>

					<section id="section_6">
						<!--  ADMIN = -->
						<h6>Your Delivered Order</h6>
						<form action="">
							<div class="form-group"></div>
						</form>
					</section>

					<!-- F O R    D A S H B O A R D   O-N-E  => end  -->





					<!-- F O R    D A S H B O A R D   T-W-O  => start  -->

					<section id="section_11">
						<!--  USER =  H-O-M-E  -->
						<!--      <h6>Section H O M E</h6> -->
						<form action="">
							<div class="form-group">

								<!-- JAVA SCRIPT CODE FOR DATA TABLE PAGINATION  -->
								<script>
									$(document).ready(function() {
										//alert("hello")
										$('#example').DataTable();
									});
								</script>

								<table id="example" class="table table-success">
									<thead>
										<tr>
											<th>Sr. No.</th>
											<th>Id</th>
											<th>Images</th>
											<th>Name</th>
											<th>Category</th>
											<th>Price</th>
											<th>Add Product</th>
										</tr>
									</thead>

									<tbody>
										<%
										try {
											int sno1 = 1;
											Class.forName("com.mysql.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
											String sql = "select * from os_products";
											PreparedStatement pst = con.prepareStatement(sql);
											ResultSet rs = pst.executeQuery();
											while (rs.next()) {
												p_id = rs.getInt(1);
												p_name = rs.getString(2);
												p_price = rs.getInt(4);
												p_description = rs.getString(6);
												iname = rs.getString(7);
										%>

										<div class="form-check-inline">
											<!--  	<div class="card" style="width: 18rem;"> -->
											<div class="card" style="width: 18rem" height="10px";">
												<img src="productpic/<%=iname%>" class="card-img-top"
													width="140px" height="300px"
													style="border-radius: 5px; border: 0.3px solid rgb(19, 18, 18);">
												<div class="card-body">
													<p class="card-text">
														<b><%=p_name%></b>
													</p>
													<!--insert product name  -->
													<p class="card-text">
													<h4><%=p_price%>
														Rs.
													</h4>
													</p>
													<a href="Pa18_HomeAddToCart.jsp?ID_cart=<%=rs.getInt(1)%>"
														class="card-link"><b><i
															class="fa-solid fa-cart-plus">Add To Cart</i></b></a> <a
														href="P8_description.jsp?id=<%=p_id%>" class="card-link"><b><i>Details</i></b></a>

												</div>
											</div>
										</div>


										<tr>
											<td><%=sno1++%></td>
											<td><%=rs.getInt(1)%></td>
											<!--  This will insert ID from table -->

											<td>
												<div>
													<div class="card" style="width: 10rem" height="5px";">
														<img src="productpic/<%=rs.getString(7)%>"
															class="card-img-top" width="100px" height="140px"
															style="border-radius: 5px; border: 0.3px solid rgb(19, 18, 18);">
													</div>
												</div>

											</td>

											<td><%=rs.getString(2)%></td>
											<!--  This will insert NAME from table -->
											<td><%=rs.getString(3)%></td>
											<!--  This will insert Category from table -->
											<td><b><%=rs.getString(4)%></b>&nbsp;&nbsp;<i
												class="fa-solid fa-rupee-sign"></i></td>
											<!--  This will insert Price from table -->

											<!-- ICON IS ADDED IN i tag like <i class="fa-solid fa-pen-to-square"></i> -->
											<td><a
												href="Pa18_HomeAddToCart.jsp?ID_cart=<%=rs.getInt(1)%>">Add
													to cart&nbsp;<i class="fa-solid fa-cart-plus"></i>
											</a></td>
										</tr>
										<%
										}
										%>
									</tbody>
									<tfoot>
										<tr>
											<th>Sr. No.</th>
											<th>Id</th>
											<th>Images</th>
											<th>Name</th>
											<th>Category</th>
											<th>Price</th>
											<th>Add Product</th>
										</tr>

									</tfoot>
									<%
									} catch (Exception ex) {
									out.println("exception " + ex);
									}
									%>
								</table>
								<%--      
	          <!--  S E A R C H    B U T T O N    C-O-D-E  -->
	        <%
	           int id = (Integer) session.getAttribute("s_id");
	           String name = (String) session.getAttribute("s_name");
	           String category = (String) session.getAttribute("s_cat");
	           int price = (Integer) session.getAttribute("s_price");
	         %>  
	           <tr> 	
	            <td><%=id%></td>     <!--  This will insert ID from table -->
	   			<td><%=name%></td>   <!--  This will insert NAME from table -->
	   			<td><%=category%></td>	 <!--  This will insert Category from table -->
	   			<td><b><%=price %></b>&nbsp;&nbsp;<i class="fa-solid fa-rupee-sign"></i></td>	 <!--  This will insert Price from table -->   			   			   	
	   			<!-- ICON IS ADDED IN i tag like <i class="fa-solid fa-pen-to-square"></i> -->
	   			<td><a href="Pa18_HomeAddToCart.jsp?ID_cart=<%=id%>">Add to cart&nbsp;<i class="fa-solid fa-cart-plus"></i></a></td>	
	            <td><i class="fa fa-inr"></i> </i></td>
	            <td><a href="">Add to cart <i class='fas fa-cart-plus'></i></a></td>
	          </tr> 
	             --%>

								<!-- No need of this  <button class="btn btn-primary"> Continue Shopping</button>	     
	          -->

							</div>
						</form>
					</section>

					<section id="section_22">
						<!--  USER =   M-Y  C-A-R-T-->

						<section id="sec_1">
							<h6>Section M Y C A R T</h6>
							<!-- dont't add form tag else section not work and it refresh also n come to by default tag  -->
							<div class="form-group">
								<!--  PRODUCT QTY DECREASED dismissible alert message START -->
								<%
								String qtyDecrease = (String) session.getAttribute("qtyDecrease");
								if (qtyDecrease == null) {

								} else {
								%>
								<div class="alert alert-warning alert-dismissible fade show"
									role="alert">
									<strong><%=qtyDecrease%></strong>
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<%
								session.setAttribute("qtyDecrease", null); /* This is used to avoid message on refresh  */
								}
								%>

								<!--  PRODUCT QTY INCREASED dismissible alert message START -->
								<%
								String qtyIncrease = (String) session.getAttribute("qtyIncrease");
								if (qtyIncrease == null) {

								} else {
								%>
								<div class="alert alert-warning alert-dismissible fade show"
									role="alert">
									<strong><%=qtyIncrease%></strong>
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<%
								session.setAttribute("qtyIncrease", null); /* This is used to avoid message on refresh  */
								}
								%>

								<!--  ITEM REMOVED FROM CART dismissible alert message START -->
								<%
								String removeItem = (String) session.getAttribute("removeItem");
								if (removeItem == null) {

								} else {
								%>
								<div class="alert alert-warning alert-dismissible fade show"
									role="alert">
									<strong><%=removeItem%></strong>
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<%
								session.setAttribute("removeItem", null); /* This is used to avoid message on refresh  */
								}
								%>

								<!--  DETAILS SAVED AND PROCEED TO ORDER dismissible alert message START -->
								<%
								String sesSaveDetail = (String) session.getAttribute("sesSaveDetail");
								if (sesSaveDetail == null) {

								} else {
								%>
								<div class="alert alert-warning alert-dismissible fade show"
									role="alert">
									<strong><%=sesSaveDetail%></strong>
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<%
								session.setAttribute("sesSaveDetail", null); /* This is used to avoid message on refresh  */
								}
								%>

								<table class="table table-success">
									<tr>
										<th>Sr. No.</th>
										<th>ID</th>
										<th>Product Name</th>
										<th>Category</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total Price</th>
										<th>Remove Item</th>

									</tr>

									<%
									String emailGot = session.getAttribute("sesemail").toString(); /* sesemail came from S_loginServer.jsp */
									try {
										int sno1 = 0;
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
										String sql = "select * from mycart where email = '" + emailGot + "' ";
										PreparedStatement pst = con.prepareStatement(sql);
										ResultSet rs = pst.executeQuery();
										while (rs.next()) {
									%>
									<tr>
										<td><%=sno1 = sno1 + 1%></td>
										<!-- sr.no. is empty    -->
										<td><%=rs.getInt(2)%></td>
										<!--  This will insert ID from table -->
										<td><%=rs.getString(3)%></td>
										<!-- product name   -->
										<td><%=rs.getString(4)%></td>
										<!-- category name need to bring  -->
										<td><b><%=rs.getString(5)%></b>&nbsp;&nbsp;<i
											class="fa-solid fa-rupee-sign"></i></td>
										<!--  This will PRICE Price from table -->

										<%--  <td><a href="Pa19_decreaseQty.jsp?d_id=<%=rs.getString(2) %>"><i class="fa-solid fa-square-minus"></i></a>
		                				&nbsp;&nbsp;<%=rs.getString(6) %>&nbsp;&nbsp;
		                				<a href="Pa20_increaseQty.jsp?i_id=<%=rs.getString(2) %>"><i class="fa-solid fa-square-plus"></i></a></td>	 <!--  This will insert QUANTITY from table -->		                					                					                			
		                			 --%>

										<td><a
											href="Pa21_incDecQty.jsp?id=<%=rs.getString(2)%>&quantity=dec">
												<i class="fa-solid fa-square-minus"></i>
										</a> &nbsp;&nbsp;<%=rs.getString(6)%>&nbsp;&nbsp; <!--  This will insert QUANTITY from table -->

											<a
											href="Pa21_incDecQty.jsp?id=<%=rs.getString(2)%>&quantity=inc">
												<i class="fa-solid fa-square-plus"></i>
										</a></td>


										<%-- <td>
		                			  
		                			   <span id="spanminus" idplus=<%=rs.getString(2) %> quantity=dec ></span>
		                			      <i class="fa-solid fa-square-minus"></i></span>
		                			      		                			   
		                				&nbsp;&nbsp;<%=rs.getString(6) %>&nbsp;&nbsp;  <!-- This is quantity -->
		                				
		                				<span id="spanplus" idplus=<%=rs.getString(2) %> quantity=inc ></span>
		                			      <i class="fa-solid fa-square-plus"></i></span>
		                		   </td>	 --%>

										<td><%=rs.getString(7)%> <!--  This will insert TOTAL FINAL PRICE from table -->

											<!-- ICON IS ADDED IN i tag like <i class="fa-solid fa-pen-to-square"></i> -->
										<td><a
											href="Pa22_removeItemfromCart.jsp?ID_cart=<%=rs.getInt(2)%>">Remove&nbsp;<i
												class="fa-solid fa-trash-can"></i></a></td>
									</tr>
									<%
									}

									String product_id = request.getParameter("ID_cart"); /* ID_cart came from Userdashboard.jsp */
									String sql1 = "select sum(total) from mycart where email = '" + emailGot + "' ";
									PreparedStatement pst1 = con.prepareStatement(sql1);
									ResultSet rs1 = pst1.executeQuery();
									while (rs1.next()) //get price from os_products table by comparing ID
									{
									%>
								</table>
								<hr>
								<h4>
									Total Price :
									<%=rs1.getInt(1)%></h4>
								&nbsp;

								<%
								}

								} catch (Exception ex) {
								out.println("exception " + ex);
								}
								%>
								<button class="btn btn-primary" id="btn1" type="button"
									style="margin-left: 800px">Proceed Order</button>
								<div id="div1"></div>

							</div>
						</section>
						<!-- first section closing -->
						<!--      
  <script>
  $(document).ready(function()
	  {
	  
		  $("#spanminus").click(function()
					{
					   /*  alert("jquery is working");  */
					   var minusid1=$("#  ").val();			  
					   $.get("Pa21_incDecQty2.jsp",{minusid2:minusid1},function(data,status)
					   {
						    $("#sec_1").html(data);  						 				 
					   });						 
					}) //spanminus closing  */  
					
		 $("#spanplus").click(function()
			{			   
			   var plusid1=$("# ").val();			  
			   $.get("Pa21_incDecQty2.jsp",{plusid2:plusid1},function(data,status)
			   {
				    $("#sec_1").html(data);  
				 				 
			   });						 
			}) //spanplus closing  */  
		
	  });
  </script> -->

						<!-- P R O C E E D 	  O R D E R		 P-A-G-E -->

						<section id="sec_2">
							<!-- second section starting -->

							<table class="table table-success">
								<tr>
									<th>Sr. No.</th>
									<th>Product Name</th>
									<th>Category</th>
									<th>Price</th>
									<th>Total Price</th>
								</tr>
								<%
								try {
									int sno1 = 0;
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
									String sql = "select * from mycart where email = '" + emailGot + "' ";
									PreparedStatement pst = con.prepareStatement(sql);
									ResultSet rs = pst.executeQuery();
									while (rs.next()) {
								%>
								<tr>
									<td><%=sno1 = sno1 + 1%></td>
									<!-- sr.no. is empty    -->
									<td><%=rs.getString(3)%></td>
									<!-- product name   -->
									<td><%=rs.getString(4)%></td>
									<!-- category name need to bring  -->
									<td><b><%=rs.getString(5)%></b>&nbsp;&nbsp;<i
										class="fa-solid fa-rupee-sign"></i></td>
									<!--  This will PRICE Price from table -->
									<td><%=rs.getString(7)%> <!--  This will insert TOTAL FINAL PRICE from table -->
								</tr>
								<%
								}

								String product_id = request.getParameter("ID_cart"); /* ID_cart came from Userdashboard.jsp */
								String sql1 = "select sum(total) from mycart where email = '" + emailGot + "' ";
								PreparedStatement pst1 = con.prepareStatement(sql1);
								ResultSet rs1 = pst1.executeQuery();
								while (rs1.next()) //get price from os_products table by comparing ID
								{
								%>
								<hr>
								<tr>
									<th>Grand Total</th>
									<td>&nbsp;&nbsp;<b><%=rs1.getInt(1)%></b>&nbsp;&nbsp;<i
										class="fa-solid fa-rupee-sign"></i></td>
								</tr>

							</table>
							<hr>
							<h4>
								Grand Total :
								<%=rs1.getInt(1)%></h4>
							&nbsp;
							<%
							}

							} catch (Exception ex) {
							out.println("exception " + ex);
							}
							%>
							<br> <br> <br>
							<input type="text" name="address" id="address"
								placeholder="Enter Address" required>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="city" id="city" placeholder="Enter City"
								required> <br>
							<br>
							<input type="text" name="state" id="state"
								placeholder="Enter State" required>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="country" id="country"
								placeholder="Enter Country" required> <br> <br>
							<label for="select"><strong>Select Payment
									Methods:<br>
							</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select class="form-control" id="payment" required>
									<option selected disabled value="">Select Status</option>
									<option value="Cash_On_Delivery">Cash_On_Delivery</option>
									<option value="Gpay">Gpay</option>
									<option value="PhonePay">PhonePay</option>
									<option value="Paytm">Paytm</option>
									<option value="NetBanking">NetBanking</option>
							</select> </label>&nbsp;&nbsp;&nbsp;&nbsp;
							<lable>pay online on ID bhavesh@ybl of PhonePay</lable>
							<input type="text" name="transaction" id="transaction"
								placeholder="Enter Transaction Id" required> <br> <br>
							<input type="number" name="mobile" id="mobile"
								placeholder="Enter Mobile Number" required>
							<hr>
							<a href="" class="btn btn-primary" type="submit"
								style="margin-left: 700px">Back</a>
							<button class="btn btn-primary" type="submit"
								style="margin-left: 800px" id="btnproceed">Proceed to
								generate Bill and save</button>

						</section>
						<!-- second section closing -->

					</section>
					<!-- main section closing -->


					<section id="section_33">
						<!-- M Y     O R D E R	  P-A-G-E -->
						<h6>Section My Order</h6>
						<form action="">
							<div class="form-group">
								<table class="table table-success">
									<tr>
										<!-- sr. no., Order id, date with filter, customer name, payment method, Grand price -->
										<th>Sr. No.</th>
										<th>Product Name</th>
										<th>Category</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total Price</th>
										<th>Order Date</th>
										<th>Expected Delivery Date</th>
										<th>Payment Method</th>
										<th>Status</th>

									</tr>

									<%
									try {
										int sno3 = 1;
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "");
										String sql = "select * from mycart";
										PreparedStatement pst = con.prepareStatement(sql);
										ResultSet rs = pst.executeQuery();
										while (rs.next()) {
									%>
									<tr>
										<td><%=sno3++%></td>
										<!-- sr.no. is empty  -->
										<td><%=rs.getString(3)%></td>
										<!-- Product Name -->
										<td><%=rs.getString(4)%></td>
										<!-- Category  -->
										<td><%=rs.getInt(5)%></td>
										<!-- Price  -->
										<td><%=rs.getInt(6)%></td>
										<!-- Quantity -->
										<td><%=rs.getInt(7)%></td>
										<!-- Total Price -->
										<td><%=rs.getString(13)%></td>
										<!-- Order Date -->
										<td><%=rs.getString(14)%></td>
										<!-- Expected Delivery Date -->
										<td><%=rs.getString(15)%></td>
										<!-- Payment Method -->
										<td><%=rs.getString(17)%></td>
										<!-- Status -->

									</tr>
									<%
									}

									} catch (Exception ex) {
									out.println("exception " + ex);
									}
									%>

								</table>
							</div>
						</form>
					</section>

					<section id="section_44">
						<!--  USER = C H A N G E    D E T A I L S -->
						<h6>Section CHANGE DETAILS</h6>
						<form action="Pa24_Dash_changeDetails.jsp">
							<div class="form-group">
								<br> <br>
								<button class="btn btn-primary" type="submit">
									<b><h2>CLICK HERE TO PROCEED</h2></b>
								</button>

							</div>
						</form>
					</section>

					<section id="section_55">
						<!--  USER = Message Us -->
						<h6>Section Message Us</h6>

						<div class="form-group">
							<div id="divid"></div>
							<br>
							<input type="text" class="form-control" name="subject" id="sub"
								placeholder="Subject"> <br>
							<textarea type="text" class="form-control" rows="8"
								name="message" id="msg" placeholder="Enter your message here.."></textarea>

							<br>
							<hr>
							<button class="btn btn-primary" type="button" id="btnmsg">
								<b>Send</b>&nbsp;&nbsp;&nbsp; <i
									class="fa-solid fa-arrow-right-from-bracket"></i>
							</button>

						</div>

					</section>

					<script>
						$(document).ready(function() {
							$("#btnmsg").click(function() {
								/*  alert("jquery is working");  */
								var sub1 = $("#sub").val();
								var msg1 = $("#msg").val();
								$.get("Pa25_messageSent.jsp", {
									sub2 : sub1,
									msg2 : msg1
								}, function(data, status) {
									$("#divid").html(data);

								});

							}) //btnmsg closing  */  
						});
					</script>

					<section id="section_66">
						<!--  USER =  About US-->
						<h6>Section About US</h6>
						<form action="">
							<div class="form-group"></div>
						</form>
					</section>


					<!-- F O R    D A S H B O A R D   T-W-O  => end  -->



				</div>
				<!-- card body  -->
			</div>
			<!-- 2nd col of 2nd row  -->
		</div>
		<!-- 2nd row  -->
	</div>
	<!-- fluid container  -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script>
		$(document).ready(function() {
			$("#btn1").click(function() {
				/* alert("jquery is working"); */
				$("#sec_2").show();
				$("#sec_1").hide();
			})
			var payment;
			$("#payment").change(function() {
				payment = $("#payment").val();

			});
			$("#btnproceed").click(function() {
				/*  alert("jquery is working");  */
				var address = $("#address").val();
				var city = $("#city").val();
				var state = $("#state").val();
				var country = $("#country").val();
				var transaction = $("#transaction").val();
				var mobile = $("#mobile").val();
				$.get("Pa23_saveOrderDetails.jsp", {
					address1 : address,
					city1 : city,
					state1 : state,
					country1 : country,
					payment1 : payment,
					transaction1 : transaction,
					mobile1 : mobile
				}, function(data, status) {
					$("#sec_2").html(data);

				});

			}) //btnproceed closing  */  

		});
	</script>





	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>