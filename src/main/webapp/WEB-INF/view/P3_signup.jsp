<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	
	<!-- CDN FOR SWEET ALERT  -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
    <title>SignUp Form</title>
  </head>
   <body background="https://assets-global.website-files.com/5e39e095596498a8b9624af1/5fdcabfbe1fbb07ad27b11ac_New-Nested-symbols.jpg">
	 
    <div class="container-fluid" id='container'>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12"></div>
            <!-- Form Design start -->
            
            <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12">   
 
 					 <!-- method is post because data should be hidden  -->
                <form action="P4_signupServer.jsp" method="post"
                style="background-color:  rgba(240, 241, 240, 0.3);border: 2px solid black; border-radius: 10px; 
                margin-top: 40px; padding-left: 50px; padding-right: 50px; padding-bottom: 30px"  >
                <!-- style="background-color: rgb(240, 240, 177); border:1px solid rgb(19, 18, 18); padding: 30px; margin-top:60px;" > -->
                    
                    <!-- SCRIPTLET FOR REGISTRATION SUCCESSFUL MESSAGE = START -->
                  <% String sesreg=(String)session.getAttribute("sesreg");
						if(sesreg==null)
						  {
						 			
						 		
						  }
						else
						  {
										
				            %>							
							<script>swal("Registration Sucessfull..!", "<%=sesreg%>",  "success");</script>							
							<% 
							session.setAttribute("sesreg", null);
						 }
							%>
				 <!-- SCRIPTLET FOR REGISTRATION SUCCESSFUL MESSAGE = END -->		
                  
                    
                    <div class="form-group">                       
              
                      <br>       
                         <label><strong>Full Name:
                          </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="text" name="name" placeholder="Enter Name" required>
                      </label>                         
                      <br>
                      <br>
                      
                      <label><strong>Email ID:
                          </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="text" name="email" placeholder="Enter Email" required>
                      </label>                          
                      <br>
                      <br>
                      
                      <label><strong>Phone No.:
                          </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="text" name="mobileNumber" placeholder="Enter Mobile Number" required>
                      </label>                           
                      <br>
                      <br>
                                          
                      <div class="form-group">
                          <label for="sel1"><strong>Security Questions:
                              </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <select  name="secutityQuestion">
                                <option value="What was your first car ?">What was your first car ?</option>
						     	<option value="What is the name of your first pet ?">What is the name of your first pet ?</option>
						     	<option value="What elementary school did you attend ?">What elementary school did you attend ?</option>
						     	<option value="What is the name of the town where you were born ?">What is the name of the town where you were born ?</option>    			     
						     </select>
                          </label>                               
                      </div>
                      <br> 
                      
                      <label><strong>Answers:
                          </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="text" name="answer" placeholder="Enter Answer">
                      </label>
                      <br>                           
                      <br>
                      
                       <label><strong>Password:
                          </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="password" name="password" placeholder="Enter Password">
                      </label>
                      <br>                           
                      <br>                      
                      
          			 <hr style="height:3px; border-width:0; color:black;  background-color:black;">
          			 
                      <button class="btn btn-warning" type="submit" style="text-align: center;">SIGNUP</button>                       
                      <a href="P1_loginPage.jsp" class="btn btn-secondary" style="margin-left: 400px">Back To Login</a>  
					<br>
                    </div>
                </form>

            </div>

            <!-- Form Design End -->
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 ">
              <div class='whysign'>  
				  <%
				    String msg = request.getParameter("msg");				
				  %>	
		         <br>
		         <br>
		         <br>
		         <h1>Online Shopping</h1>    
		         <h6>Online shopping is a form of electronic commerce which allows consumers to directly buy goods or
		          services from a seller over the Internet using a web browser or a mobile app. Consumers find a product 
		          of interest by visiting the website of the retailer directly or by searching among alternative vendors
		           using a shopping search engine, which displays the same product's availability and pricing at different 
		           e-retailers. As of 2020, customers can shop online using a range of different computers and devices, 
		           including desktop computers, laptops, tablet computers and smartphones.</h6>
              </div>   
    		</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>