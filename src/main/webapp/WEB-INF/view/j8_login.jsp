<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>					
<%@ include file="j1_header_main.jsp"%>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="myform form">
					<form action="loginStudent" 
						style="background-color: rgba(240, 240, 240, 0.35); border-radius: 10px; border: 2px solid rgb(19, 18, 18); padding: 30px; margin-top: 100px;">
						<h1 style="text-align: center;">Login Page</h1>
						<br>
						<div class="form-group">
							<input type="text" name="email" class="form-control my-input"
								id="email" placeholder="Email" required>
						</div>
						<br>

						<div class="form-group">
							<input type="text" name="password" class="form-control my-input"
								id="pwd" placeholder="Password" required>
						</div>
						<br>

						<div class="text-center ">
							<button type="submit" class=" btn btn-primary btn btn-block">Login</button>
						</div>
						<div class="col-md-12 ">
							<div class="login-or">
								<hr class="hr-or">
								<span class="span-or">or</span>
							</div>
						</div>
						<div class="form-group">
							<a class="btn btn-block g-button" href="jobportal"> <i
								class="fa fa-google"></i> Back to Home
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
</body>
<%@ include file="j0_footer_main.jsp"%>
</html>