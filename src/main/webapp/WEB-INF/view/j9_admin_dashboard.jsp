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
					<!-- <h6>Section No 1</h6> -->
					<form action="">
						<div class="form-group">
						<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%" background-color:red;>
  <thead>
    <tr>
						
				<div class="d-grid gap-2 col-2 mx-auto">		
<button type="button" class="btn btn-success text-center" " data-toggle="modal" data-target="#exampleModalCenter">
 Post New Jobs
</button></div>
			<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content col-md-12 ml-auto">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">New Post Job</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
            <h4 class="container-fluid bg-primary mb-5 wow fadeIn">General Information</h4>
        </div>
        <div class="box-body">
          <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Job Title</label>
              <input type="text" class="form-control" placeholder="Job Title">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Company Name</label>
              <input type="text" class="form-control" placeholder="Company Name">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Category</label>
              <select class="wide form-control">
                <option data-display="Location">Information Of Technology</option>
                <option value="1">Hardware</option>
                <option value="2">Machanical</option>
              </select>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 m-clear">
              <label>Description</label>
              <input type="text" class="form-control" placeholder="Description">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Salary Range</label>
              <select class="wide form-control">
                <option data-display="Salary Range">2,0000</option>
                <option value="1">3,0000</option>
                <option value="2">4,0000</option>
              </select>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 m-clear">
              <label>No. Of Vacancy</label>
              <input type="text" class="form-control" placeholder="No. Of Vacancy">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 m-clear">
              <label>Experience</label>
              <select class="wide form-control">
                <option data-display="Experience">0 To 6 Month</option>
                <option value="1">1 Year</option>
                <option value="2">2 Year</option>
              </select>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 m-clear">
              <label>Company Logo</label>
              <div class="custom-file-upload">
                <input type="file" id="file" name="myfiles[]" multiple />
              </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 m-clear">
              <label>Job Type</label>
              <select class="wide form-control">
                <option data-display="Job Type">Full Time</option>
                <option value="1">Part Time</option>
                <option value="2">Freelancer</option>
              </select>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 m-clear">
              <label>Qualification Required</label>
              <input type="text" class="form-control" placeholder="Qualification">
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <label>Skills(Seperate with Comma)</label>
              <input type="text" class="form-control" placeholder="Skills">
            </div>
          </div>
        </div>
      </div>
      
      <!-- Company Address -->
      <div class="box">
        <div class="box-header">
        
          <h4 class="container-fluid bg-primary mb-5 wow fadeIn">Company Address</h4>
        </div>
        <div class="box-body">
          <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Email</label>
              <input type="email" class="form-control" placeholder="Email">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Phone Number</label>
              <input type="text" class="form-control" placeholder="Phone Number">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Website Link</label>
              <input type="text" class="form-control" placeholder="Website Link">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Address</label>
              <input type="text" class="form-control" placeholder="Address">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>City</label>
              <select class="wide form-control">
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
              <label>State</label>
              <select class="wide form-control">
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
              <label>Country</label>
              <select class="wide form-control">
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
              <label>Zip Code</label>
              <input type="text" class="form-control" placeholder="Zip Code">
            </div>
          </div>
        </div>
      </div>
      
      <!-- Social Accounts -->
      <div class="box">
        <div class="box-header">
            <h4 class="container-fluid bg-primary mb-5 wow fadeIn">Social Accounts</h4> 
       
        </div>
        <div class="box-body">
          <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Facebook</label>
              <input type="text" class="form-control" placeholder="https://www.facebook.com">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Google +</label>
              <input type="text" class="form-control" placeholder="https://www.gmail.com">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Twitter</label>
              <input type="text" class="form-control" placeholder="https://twitter.com">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>LinkedIn</label>
              <input type="text" class="form-control" placeholder="https://www.linkedin.com">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Pinterest</label>
              <input type="text" class="form-control" placeholder="https://www.pinterest.com">
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
              <label>Instagram</label>
              <input type="text" class="form-control" placeholder="http://instagram.com">
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


      <th class="th-sm">Company Name

      </th>
      <th class="th-sm">Location

      </th>
      <th class="th-sm">Experience

      </th>
      <th class="th-sm">Qualification

      </th>
      <th class="th-sm">Skills

      </th>
      <th class="th-sm">Resume

      </th>
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
    <tr>
      <td>Sonya Frost</td>
      <td>Software Engineer</td>
      <td>Edinburgh</td>
      <td>23</td>
      <td>2008/12/13</td>
      <td>$103,600</td>
    </tr>
    <tr>
      <td>Jena Gaines</td>
      <td>Office Manager</td>
      <td>London</td>
      <td>30</td>
      <td>2008/12/19</td>
      <td>$90,560</td>
    </tr>
    <tr>
      <td>Quinn Flynn</td>
      <td>Support Lead</td>
      <td>Edinburgh</td>
      <td>22</td>
      <td>2013/03/03</td>
      <td>$342,000</td>
    </tr>
    <tr>
      <td>Charde Marshall</td>
      <td>Regional Director</td>
      <td>San Francisco</td>
      <td>36</td>
      <td>2008/10/16</td>
      <td>$470,600</td>
    </tr>
    <tr>
      <td>Haley Kennedy</td>
      <td>Senior Marketing Designer</td>
      <td>London</td>
      <td>43</td>
      <td>2012/12/18</td>
      <td>$313,500</td>
    </tr>
    <tr>
      <td>Tatyana Fitzpatrick</td>
      <td>Regional Director</td>
      <td>London</td>
      <td>19</td>
      <td>2010/03/17</td>
      <td>$385,750</td>
    </tr>
    <tr>
      <td>Michael Silva</td>
      <td>Marketing Designer</td>
      <td>London</td>
      <td>66</td>
      <td>2012/11/27</td>
      <td>$198,500</td>
    </tr>
    <tr>
      <td>Paul Byrd</td>
      <td>Chief Financial Officer (CFO)</td>
      <td>New York</td>
      <td>64</td>
      <td>2010/06/09</td>
      <td>$725,000</td>
    </tr>
    <tr>
      <td>Gloria Little</td>
      <td>Systems Administrator</td>
      <td>New York</td>
      <td>59</td>
      <td>2009/04/10</td>
      <td>$237,500</td>
    </tr>
    <tr>
      <td>Bradley Greer</td>
      <td>Software Engineer</td>
      <td>London</td>
      <td>41</td>
      <td>2012/10/13</td>
      <td>$132,000</td>
    </tr>
    <tr>
      <td>Dai Rios</td>
      <td>Personnel Lead</td>
      <td>Edinburgh</td>
      <td>35</td>
      <td>2012/09/26</td>
      <td>$217,500</td>
    </tr>
    <tr>
      <td>Jenette Caldwell</td>
      <td>Development Lead</td>
      <td>New York</td>
      <td>30</td>
      <td>2011/09/03</td>
      <td>$345,000</td>
    </tr>
    <tr>
      <td>Yuri Berry</td>
      <td>Chief Marketing Officer (CMO)</td>
      <td>New York</td>
      <td>40</td>
      <td>2009/06/25</td>
      <td>$675,000</td>
    </tr>
    <tr>
      <td>Caesar Vance</td>
      <td>Pre-Sales Support</td>
      <td>New York</td>
      <td>21</td>
      <td>2011/12/12</td>
      <td>$106,450</td>
    </tr>
    <tr>
      <td>Doris Wilder</td>
      <td>Sales Assistant</td>
      <td>Sidney</td>
      <td>23</td>
      <td>2010/09/20</td>
      <td>$85,600</td>
    </tr>
    <tr>
      <td>Angelica Ramos</td>
      <td>Chief Executive Officer (CEO)</td>
      <td>London</td>
      <td>47</td>
      <td>2009/10/09</td>
      <td>$1,200,000</td>
    </tr>
    <tr>
      <td>Gavin Joyce</td>
      <td>Developer</td>
      <td>Edinburgh</td>
      <td>42</td>
      <td>2010/12/22</td>
      <td>$92,575</td>
    </tr>
    <tr>
      <td>Jennifer Chang</td>
      <td>Regional Director</td>
      <td>Singapore</td>
      <td>28</td>
      <td>2010/11/14</td>
      <td>$357,650</td>
    </tr>
    <tr>
      <td>Brenden Wagner</td>
      <td>Software Engineer</td>
      <td>San Francisco</td>
      <td>28</td>
      <td>2011/06/07</td>
      <td>$206,850</td>
    </tr>
    <tr>
      <td>Fiona Green</td>
      <td>Chief Operating Officer (COO)</td>
      <td>San Francisco</td>
      <td>48</td>
      <td>2010/03/11</td>
      <td>$850,000</td>
    </tr>
    <tr>
      <td>Shou Itou</td>
      <td>Regional Marketing</td>
      <td>Tokyo</td>
      <td>20</td>
      <td>2011/08/14</td>
      <td>$163,000</td>
    </tr>
    <tr>
      <td>Michelle House</td>
      <td>Integration Specialist</td>
      <td>Sidney</td>
      <td>37</td>
      <td>2011/06/02</td>
      <td>$95,400</td>
    </tr>
    <tr>
      <td>Suki Burks</td>
      <td>Developer</td>
      <td>London</td>
      <td>53</td>
      <td>2009/10/22</td>
      <td>$114,500</td>
    </tr>
    <tr>
      <td>Prescott Bartlett</td>
      <td>Technical Author</td>
      <td>London</td>
      <td>27</td>
      <td>2011/05/07</td>
      <td>$145,000</td>
    </tr>
    <tr>
      <td>Gavin Cortez</td>
      <td>Team Leader</td>
      <td>San Francisco</td>
      <td>22</td>
      <td>2008/10/26</td>
      <td>$235,500</td>
    </tr>
    <tr>
      <td>Martena Mccray</td>
      <td>Post-Sales support</td>
      <td>Edinburgh</td>
      <td>46</td>
      <td>2011/03/09</td>
      <td>$324,050</td>
    </tr>
    <tr>
      <td>Unity Butler</td>
      <td>Marketing Designer</td>
      <td>San Francisco</td>
      <td>47</td>
      <td>2009/12/09</td>
      <td>$85,675</td>
    </tr>
    <tr>
      <td>Howard Hatfield</td>
      <td>Office Manager</td>
      <td>San Francisco</td>
      <td>51</td>
      <td>2008/12/16</td>
      <td>$164,500</td>
    </tr>
    <tr>
      <td>Hope Fuentes</td>
      <td>Secretary</td>
      <td>San Francisco</td>
      <td>41</td>
      <td>2010/02/12</td>
      <td>$109,850</td>
    </tr>
    <tr>
      <td>Vivian Harrell</td>
      <td>Financial Controller</td>
      <td>San Francisco</td>
      <td>62</td>
      <td>2009/02/14</td>
      <td>$452,500</td>
    </tr>
    <tr>
      <td>Timothy Mooney</td>
      <td>Office Manager</td>
      <td>London</td>
      <td>37</td>
      <td>2008/12/11</td>
      <td>$136,200</td>
    </tr>
    <tr>
      <td>Jackson Bradshaw</td>
      <td>Director</td>
      <td>New York</td>
      <td>65</td>
      <td>2008/09/26</td>
      <td>$645,750</td>
    </tr>
    <tr>
      <td>Olivia Liang</td>
      <td>Support Engineer</td>
      <td>Singapore</td>
      <td>64</td>
      <td>2011/02/03</td>
      <td>$234,500</td>
    </tr>
    <tr>
      <td>Bruno Nash</td>
      <td>Software Engineer</td>
      <td>London</td>
      <td>38</td>
      <td>2011/05/03</td>
      <td>$163,500</td>
    </tr>
    <tr>
      <td>Sakura Yamamoto</td>
      <td>Support Engineer</td>
      <td>Tokyo</td>
      <td>37</td>
      <td>2009/08/19</td>
      <td>$139,575</td>
    </tr>
    <tr>
      <td>Thor Walton</td>
      <td>Developer</td>
      <td>New York</td>
      <td>61</td>
      <td>2013/08/11</td>
      <td>$98,540</td>
    </tr>
    <tr>
      <td>Finn Camacho</td>
      <td>Support Engineer</td>
      <td>San Francisco</td>
      <td>47</td>
      <td>2009/07/07</td>
      <td>$87,500</td>
    </tr>
    <tr>
      <td>Serge Baldwin</td>
      <td>Data Coordinator</td>
      <td>Singapore</td>
      <td>64</td>
      <td>2012/04/09</td>
      <td>$138,575</td>
    </tr>
    <tr>
      <td>Zenaida Frank</td>
      <td>Software Engineer</td>
      <td>New York</td>
      <td>63</td>
      <td>2010/01/04</td>
      <td>$125,250</td>
    </tr>
    <tr>
      <td>Zorita Serrano</td>
      <td>Software Engineer</td>
      <td>San Francisco</td>
      <td>56</td>
      <td>2012/06/01</td>
      <td>$115,000</td>
    </tr>
    <tr>
      <td>Jennifer Acosta</td>
      <td>Junior Javascript Developer</td>
      <td>Edinburgh</td>
      <td>43</td>
      <td>2013/02/01</td>
      <td>$75,650</td>
    </tr>
    <tr>
      <td>Cara Stevens</td>
      <td>Sales Assistant</td>
      <td>New York</td>
      <td>46</td>
      <td>2011/12/06</td>
      <td>$145,600</td>
    </tr>
    <tr>
      <td>Hermione Butler</td>
      <td>Regional Director</td>
      <td>London</td>
      <td>47</td>
      <td>2011/03/21</td>
      <td>$356,250</td>
    </tr>
    <tr>
      <td>Lael Greer</td>
      <td>Systems Administrator</td>
      <td>London</td>
      <td>21</td>
      <td>2009/02/27</td>
      <td>$103,500</td>
    </tr>
    <tr>
      <td>Jonas Alexander</td>
      <td>Developer</td>
      <td>San Francisco</td>
      <td>30</td>
      <td>2010/07/14</td>
      <td>$86,500</td>
    </tr>
    <tr>
      <td>Shad Decker</td>
      <td>Regional Director</td>
      <td>Edinburgh</td>
      <td>51</td>
      <td>2008/11/13</td>
      <td>$183,000</td>
    </tr>
    <tr>
      <td>Michael Bruce</td>
      <td>Javascript Developer</td>
      <td>Singapore</td>
      <td>29</td>
      <td>2011/06/27</td>
      <td>$183,000</td>
    </tr>
    <tr>
      <td>Donna Snider</td>
      <td>Customer Support</td>
      <td>New York</td>
      <td>27</td>
      <td>2011/01/25</td>
      <td>$112,000</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Name
      </th>
      <th>Position
      </th>
      <th>Office
      </th>
      <th>Age
      </th>
      <th>Start date
      </th>
      <th>Salary
      </th>
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
                        <h2><b>Details</b></h2>
                    </div>
                    <div class="col-sm-8">						
                        <a href="#" class="btn btn-primary"><i class="material-icons">&#xE863;</i> <span>Refresh List</span></a>
                        <a href="#" class="btn btn-secondary"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
                    </div>
                </div>
            </div>
            <div class="table-filter">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="show-entries">
                            <span>Show</span>
                            <select class="form-control">
                                <option>5</option>
                                <option>10</option>
                                <option>15</option>
                                <option>20</option>
                            </select>
                            <span>entries</span>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button>
                        <div class="filter-group">
                            <label>Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="filter-group">
                            <label>Location</label>
                            <select class="form-control">
                                <option>All</option>
                                <option>Berlin</option>
                                <option>London</option>
                                <option>Madrid</option>
                                <option>New York</option>
                                <option>Paris</option>								
                            </select>
                        </div>
                        <div class="filter-group">
                            <label>Status</label>
                            <select class="form-control">
                                <option>Any</option>
                                <option>Delivered</option>
                                <option>Shipped</option>
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
                        <th>Customer</th>
                        <th>Location</th>
                        <th>Order Date</th>						
                        <th>Status</th>						
                        <th>Net Amount</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><a href="#"><img src="/examples/images/avatar/1.jpg" class="avatar" alt="Avatar"> Michael Holz</a></td>
                        <td>London</td>
                        <td>Jun 15, 2017</td>                        
                        <td><span class="status text-success">&bull;</span> Delivered</td>
                        <td>$254</td>
                        <td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><a href="#"><img src="/examples/images/avatar/2.jpg" class="avatar" alt="Avatar"> Paula Wilson</a></td>
                        <td>Madrid</td>                       
                        <td>Jun 21, 2017</td>
                        <td><span class="status text-info">&bull;</span> Shipped</td>
                        <td>$1,260</td>
                        <td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><a href="#"><img src="/examples/images/avatar/3.jpg" class="avatar" alt="Avatar"> Antonio Moreno</a></td>
                        <td>Berlin</td>
                        <td>Jul 04, 2017</td>
                        <td><span class="status text-danger">&bull;</span> Cancelled</td>
                        <td>$350</td>
                        <td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>                        
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><a href="#"><img src="/examples/images/avatar/4.jpg" class="avatar" alt="Avatar"> Mary Saveley</a></td>
                        <td>New York</td>
                        <td>Jul 16, 2017</td>						
                        <td><span class="status text-warning">&bull;</span> Pending</td>
                        <td>$1,572</td>
                        <td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><a href="#"><img src="/examples/images/avatar/5.jpg" class="avatar" alt="Avatar"> Martin Sommer</a></td>
                        <td>Paris</td>
                        <td>Aug 04, 2017</td>
                        <td><span class="status text-success">&bull;</span> Delivered</td>
                        <td>$580</td>
                        <td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a></td>
                    </tr>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item active"><a href="#" class="page-link">4</a></li>
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
					                
					                <table id="example" class="table table-success">
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


	<div class="container text-center" id="tasksDiv">
		<h3>All Users</h3>
		<hr>
		<div class="table-responsive">
			<table class="table table-success">
				<thead>
					<tr>
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