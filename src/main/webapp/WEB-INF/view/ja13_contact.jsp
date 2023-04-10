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
	<!-- Contact Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">Contact
				For Any Query</h1>
			<div class="row g-4">
				<div class="col-12">
					<div class="row gy-4">
						<div class="col-md-4 wow fadeIn" data-wow-delay="0.1s">
							<div class="d-flex align-items-center bg-light rounded p-4">
								<div
									class="bg-white border rounded d-flex flex-shrink-0 align-items-center justify-content-center me-3"
									style="width: 45px; height: 45px;">
									<i class="fa fa-map-marker-alt text-primary"></i>
								</div>
								<span>IT Park Road, Near Persistent, Gayatri Nagar,
									Nagpur, Maharashtra 440022</span>
							</div>
						</div>
						<div class="col-md-4 wow fadeIn" data-wow-delay="0.3s">
							<div class="d-flex align-items-center bg-light rounded p-4">
								<div
									class="bg-white border rounded d-flex flex-shrink-0 align-items-center justify-content-center me-3"
									style="width: 45px; height: 45px;">
									<i class="fa fa-envelope-open text-primary"></i>
								</div>
								<span>info@avestantechnologies.com</span>
							</div>
						</div>
						<div class="col-md-4 wow fadeIn" data-wow-delay="0.5s">
							<div class="d-flex align-items-center bg-light rounded p-4">
								<div
									class="bg-white border rounded d-flex flex-shrink-0 align-items-center justify-content-center me-3"
									style="width: 45px; height: 45px;">
									<i class="fa fa-phone-alt text-primary"></i>
								</div>
								<span>+918381009662</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
					<iframe class="position-relative rounded w-100 h-100"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3722.0161578480574!2d79.06408571493404!3d21.111921985953405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4bf03d200a0b9%3A0x6f7041800baaf0a4!2sBinary%20Code%20Technologies!5e0!3m2!1sen!2sin!4v1680169241196!5m2!1sen!2sin"
						frameborder="0" style="min-height: 400px; border: 0;"
						allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>


				</div>
				<div class="col-md-6">
					<div class="wow fadeInUp" data-wow-delay="0.5s">
						<!-- <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p> -->
						<form>
							<div class="row g-3">
								<div class="col-md-6">
									<div class="form-floating">
										<input type="text" class="form-control" id="name"
											placeholder="Your Name"> <label for="name">Your
											Name</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<input type="email" class="form-control" id="email"
											placeholder="Your Email"> <label for="email">Your
											Email</label>
									</div>
								</div>
								<div class="col-12">
									<div class="form-floating">
										<input type="text" class="form-control" id="subject"
											placeholder="Subject"> <label for="subject">Subject</label>
									</div>
								</div>
								<div class="col-12">
									<div class="form-floating">
										<textarea class="form-control"
											placeholder="Leave a message here" id="message"
											style="height: 150px"></textarea>
										<label for="message">Message</label>
									</div>
								</div>
								<div class="col-12">
									<button class="btn btn-primary w-100 py-3" type="submit">Send
										Message</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact End -->
</body>
<%@ include file="j0_footer_main.jsp"%>
</html>