<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Success</title>
<!-- font awesome -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<h1>SignUp Successful</h1>
	<br>
	<h1 style="text-align: center;">
		<b>YOUR DETAILS</b>
	</h1>
	<!-- SCRIPTLET FOR REGISTER SUCCESS MESSAGE = START -->
	<%
	String sesUser = (String) session.getAttribute("sesUser");
	if (sesUser == null) {

	} else {
	%>
	<script>
		swal("Registration Successful", "${sesUser.firstname}", "success");
	</script>
	<%
	session.setAttribute("sesUser", null);
	}
	%>

	<!-- SCRIPTLET FOR REGISTER SUCCESS MESSAGE = END -->

	&nbsp;&nbsp;&nbsp;
	<h2>
		<b>Welcome &nbsp;${sesUser.firstname}</b>
	</h2>
	<br>
	<h3>
		<b>First Name:- </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sesUser.firstname}
	</h3>
	<h3>
		<b>Last Name:- </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sesUser.lastname}
	</h3>
	<h3>
		<b>Email:- </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sesUser.email}
	</h3>
	<h3>
		<b>Phone:- </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sesUser.phone}
	</h3>
	<h3>
		<b>Password:- </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sesUser.password}
	</h3>
	<hr
		style="height: 3px; border-width: 0; color: black; background-color: black;">

</body>
</html>