<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- CDN FOR SWEET ALERT  -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
	<h1>File uploaded successfully</h1>
	<!--  <script>${jsCode} </script> -->
	 
	        <!-- SCRIPTLET FOR LOGIN FAIL MESSAGE = START -->         
	               
                  <%-- <% String sesuser=(String)session.getAttribute("sesuser");
						if(sesuser==null)
						  {
									
						  }
						else
						  {
										
							%>									
							<script >swal("<%=sesuser%>", " Wrong Credential!", "error");</script>
							<% 
							session.setAttribute("sesuser", null);
						  }
							 %> --%>
							 
                   <!-- SCRIPTLET FOR LOGIN FAIL MESSAGE = END -->

	<script>
		if (localStorage.getItem("successMessage") === null) 
		{

		} else {
			// Display success message
			swal("Success!",
					"User ${userName} has been registered successfully!",
					"success");

			// Set flag in local storage
			localStorage.setItem("successMessage", true);
		}
		session.setAttribute(localStorage.getItem("successMessage"), null);
	</script>

	<button onclick="clearSuccessFlag()">Clear Success Flag</button>
	<script>
		function clearSuccessFlag() {
			localStorage.removeItem("successMessage");
		}
	</script>

	<c:if test="${not empty successMessage}">
		<script>
			swal({
				title : "Success!",
				text : "User ${userName} has been registered successfully!",
				icon : "success",
				button : "OK",
			});
		</script>
	</c:if>

	<!-- <script>swal("${jsCode}", " Registered Successfully", "success");</script>  -->
</body>
</html>