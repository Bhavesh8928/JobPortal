<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="j1_header_main.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- CDN FOR SWEET ALERT  -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
<%-- <h2>${sesUser}</h2> --%>
	<!-- <script>swal("${sesUser}", " Registered Successfully", "success");</script> -->
	<div class="container">

		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="myform form ">
					<form action="signupStudentData" method="post" name="login"
						style="background-color: rgba(240, 240, 240, 0.35); border-radius: 10px; border: 2px solid rgb(19, 18, 18); padding: 30px; margin-top: 100px;">
						<h1 style="text-align: center;">SignUp Form</h1>
						<br>
						<div class="form-group">
							<input type="text" name="firstname"
								class="form-control my-input" id="fname"
								placeholder=" First Name" required>
						</div>
						<br>

						<div class="form-group">
							<input type="text" name="lastname" class="form-control my-input"
								id="lname" placeholder="Last Name" required>
						</div>
						<br>

						<div class="form-group">
							<input type="email" name="email" class="form-control my-input"
								id="email" placeholder="Email" required>
						</div>
						<br>
						
						<!-- <label><strong>Age:</strong>&nbsp;
							<input type="int" name="age" placeholder="Enter Age" required> 
						</label> -->
						
						<div class="form-group">
							<input type="number" name="phone" id="phone" maxlength="10" required
								class="form-control my-input" placeholder="Phone">
						</div>
						<br>

						<div class="form-group">
							<input type="text" name="password" class="form-control my-input"
								id="password" placeholder="Password" required>
						</div>
						<br>

						<div class="form-group">
							<input type="text" name="repassword"
								class="form-control my-input" id="confirm_password"
								placeholder="Retype Password" required>
						</div>
						<br>

						<div class="text-center ">
							<button type="submit" class=" btn btn-primary btn btn-block">Create
								Your Account</button>
						</div>
						<div class="col-md-12 ">
							<div class="login-or">
								<hr class="hr-or">
								<span class="span-or">or</span>
							</div>
						</div>
						<div class="form-group">
							<a class="btn btn-block g-button" href="login"> <i
								class="fa fa-google"></i> Back to Login
							</a>
						</div>
						<p class="small mt-3">
							By signing up, you are indicating that you have read and agree to
							the <a href="#" class="ps-hero__content__link">Terms of Use</a>
							and <a href="#">Privacy Policy</a>.
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
 
	<!-- CODE for password retype validation -->
	<script>
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");

		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Passwords Don't Match");
			} else {
				confirm_password.setCustomValidity('');
			}
		}
		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script> 

	
</body>
<%@ include file="j0_footer_main.jsp"%>
</html>