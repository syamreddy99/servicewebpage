<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Service Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Alegreya|Open+Sans|Tangerine:700"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
.button-container {
	display: flex;
	justify-content: center;
	gap: 20px;
}

button {
	background: none;
	border: none;
	cursor: pointer;
	display: flex;
	flex-direction: column;
	align-items: center;
	color: #333;
	font-size: 14px;
}

button:hover {
	color: #555;
}

svg {
	width: 50px;
	height: 35px;
}

span {
	margin-top: 5px;
}

/* Custom styles for specific icons */
#thumbs-up path {
	fill: #4CAF50; /* Green color for thumbs-up */
}

#thumbs-down path {
	fill: #000000; /* Black color for thumbs-down */
}

html {
	scroll-behavior: smooth;
}

.navbar-brand {
	animation: fadeIn 3s ease-in-out;
}

@
keyframes fadeIn { 0% {
	opacity: 0;
}

100
%
{
opacity
:
1;
}
}
.nav-link {
	transition: color 0.3s, transform 0.3s;
}

.nav-link:hover {
	color: #f86300 !important;
	transform: scale(1.1);
}

.btn-animated {
	position: relative;
	overflow: hidden;
	transition: background-color 0.3s;
}

.btn-animated::after {
	content: "";
	position: absolute;
	top: 50%;
	left: 50%;
	width: 300%;
	height: 300%;
	background: rgba(245, 1, 1, 0.3);
	transition: width 0.3s, height 0.3s, top 0.3s, left 0.3s;
	border-radius: 50%;
	z-index: 0;
	transform: translate(-50%, -50%);
}

.btn-animated:hover::after {
	width: 0;
	height: 0;
	top: 50%;
	left: 50%;
}

.btn-animated:hover {
	background-color: #0056b3;
}

.btn-animated span {
	position: relative;
	z-index: 1;
}

.carousel-item {
	height: 75vh;
	min-height: 300px;
	background: no-repeat center center scroll;
	background-size: cover;
}

.carousel-caption {
	background-color: rgba(0, 0, 0, 0.6);
	padding: 20px;
	border-radius: 10px;
	animation: fadeIn 1.5s;
}

.carousel-caption h3, .carousel-caption p {
	color: #fff;
	margin: 0;
}

.carousel-control-prev-icon, .carousel-control-next-icon {
	background-color: rgba(0, 0, 0, 0.5);
	border-radius: 50%;
}

.section {
	padding: 60px 0;
}

.fade-in-section {
	opacity: 0;
	transform: translateY(20px);
	visibility: hidden;
	transition: opacity 0.6s ease-out, transform 0.6s ease-out;
	will-change: opacity, visibility;
}

.fade-in-section.is-visible {
	opacity: 1;
	transform: none;
	visibility: visible;
}

.carousel-item-1 {
	background-image:
		url('https://images.pexels.com/photos/4672744/pexels-photo-4672744.jpeg');
}

.carousel-item-2 {
	background-image:
		url('https://as2.ftcdn.net/v2/jpg/07/25/01/07/1000_F_725010790_9WKa7GTCAN5bDvXUkylDi5vmpsWHxn1L.jpg');
}

.carousel-item-3 {
	background-image:
		url('https://images.pexels.com/photos/5256528/pexels-photo-5256528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
}

svg {
	cursor: pointer;
	fill: red;
	transition: transform 0.2s;
}

svg:hover {
	transform: scale(1.1);
}

.background {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: -1;
	overflow: hidden;
}

.background svg {
	position: absolute;
	width: 100%;
	height: 100%;
}

.contact-form {
	background: white;
	margin-top: 50px;
	margin-bottom: 50px;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
	opacity: 0;
	transform: translateY(30px);
	animation: fadeIn 1s forwards;
}

.contact-form h3 {
	margin-bottom: 30px;
	font-weight: 600;
	color: #007BFF;
}

.contact-form .form-group {
	position: relative;
}

.contact-form .form-control {
	border-radius: 0;
	box-shadow: none;
	border-color: #ced4da;
	transition: all 0.3s ease;
}

.contact-form .form-control:focus {
	border-color: #007BFF;
	box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
	transform: scale(1.02);
}

.contact-form .form-group i {
	position: absolute;
	right: 10px;
	top: 35px;
	color: #ced4da;
	transition: color 0.3s ease;
}

.contact-form .form-control:focus+i {
	color: #007BFF;
}

.btn-custom {
	background-color: #007BFF;
	color: white;
	border-radius: 0;
	padding: 10px;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

.btn-custom:hover {
	background-color: #0056b3;
	color: white;
	transform: scale(1.05);
}

.contact-form .alert {
	border-radius: 0;
	margin-top: 20px;
}

@
keyframes fadeIn {to { opacity:1;
	transform: translateY(0);
}

}
@
keyframes shake { 0% {
	transform: translateX(0);
}
25
%
{
transform
:
translateX(
-5px
);
}
50
%
{
transform
:
translateX(
5px
);
}
75
%
{
transform
:
translateX(
-5px
);
}
100
%
{
transform
:
translateX(
0
);
}
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><img
				src="https://images.pexels.com/photos/26180924/pexels-photo-26180924/free-photo-of-ogo-png.png?auto=compress&cs=tinysrgb&w=600&lazy=load"
				alt="Logo" width="100px" height="80px">
			<h1
					style="font-family: 'Tangerine', cursive; font-weight: bolder; color: green">Skin
					Care</h1></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#home"
						style="padding: 20px; color: black; font-weight: bold; font-size: larger;">Home</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"
						style="padding: 20px; color: black; font-weight: bold; font-size: larger;">
							Products </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="ActiveProducts.jsp">Chemical
								Products</a> <a class="dropdown-item" href="productsget.jsp">Natural
								Products</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"
						style="padding: 20px; color: black; font-weight: bold; font-size: larger;">
							Services </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">service1</a> <a
								class="dropdown-item" href="#">service2</a> <a
								class="dropdown-item" href="#">service3</a> <a
								class="dropdown-item" href="#">service4</a> <a
								class="dropdown-item" href="aboutus.html">About us</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#contact"
						style="padding: 20px; color: black; font-weight: bold; font-size: larger;">Contact</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp"
						style="padding: 20px;" id="loginBtn">
							<button type="button" class="btn btn-warning btn-animated"
								style="padding: 10px;">
								<span>LogIn</span>
							</button>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="padding: 20px;">
							<button id="welcomeBtn" type="button"
								class="btn btn-success btn-animated" style="padding: 10px;">
								<span>Welcome <%= session.getAttribute("userId") != null ? session.getAttribute("userId") : "Guest" %></span>
							</button>
					</a></li>
					<li class="nav-item">
						<div class="button-container">
							<button onclick="location.href='liked.jsp'" id="liked">
								<svg id="thumbs-up" width="50" height="35" viewBox="0 0 24 24"
									xmlns="http://www.w3.org/2000/svg">
                <path
										d="M2 20h2v-9H2v9zm20.83-9.24c-.36-.93-1.3-1.57-2.33-1.57h-5.15l.62-2.79.02-.27c0-.41-.17-.79-.44-1.06l-1-1-5.34 5.34c-.39.39-.63.92-.63 1.49V18c0 1.1.9 2 2 2h6c.93 0 1.78-.43 2.32-1.11l3.7-4.72c.34-.43.54-.97.54-1.54v-.58c0-.36-.1-.72-.28-1.03z" />
            </svg>
								<span>Liked</span>
							</button>
							<button onclick="location.href='disliked.jsp'" id="disliked">
								<svg id="thumbs-down" width="50" height="35" viewBox="0 0 24 24"
									xmlns="http://www.w3.org/2000/svg">
                <path
										d="M2 4h2v9H2V4zm20.83 9.24c-.36.93-1.3 1.57-2.33 1.57h-5.15l.62 2.79.02.27c0 .41-.17.79-.44 1.06l-1 1-5.34-5.34c-.39-.39-.63-.92-.63-1.49V6c0-1.1.9-2 2-2h6c.93 0 1.78.43 2.32 1.11l3.7 4.72c.34.43.54.97.54 1.54v.58c0 .36-.1.72-.28 1.03z" />
            </svg>
								<span>disliked</span>
							</button>
						</div>
					</li>


					<li class="nav-item dropdown" id="profileDropdown"
						style="display: none;"><a class="nav-link dropdown-toggle"
						href="#" id="navbarDropdownProfile" role="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						style="padding: 20px;"> <img
							src="https://images.pexels.com/photos/792381/pexels-photo-792381.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
							alt="Profile Picture"
							style="width: 50px; height: 50px; border-radius: 50%;">
					</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownProfile">
							<a class="dropdown-item" href="profile.jsp">Profile</a> <a
								class="dropdown-item" href="Setting.jsp">Settings</a> <a
								class="
                            dropdown-item" href="confirmlogout.html">Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active carousel-item-1">
				<div class="carousel-caption">
					<h3>Welcome to our service</h3>
					<p>We offer the best services in the industry</p>
				</div>
			</div>
			<div class="carousel-item carousel-item-2">
				<div class="carousel-caption">
					<h3>Our Products</h3>
					<p>Check out our wide range of products</p>
				</div>
			</div>
			<div class="carousel-item carousel-item-3">
				<div class="carousel-caption">
					<h3>Contact Us</h3>
					<p>Get in touch with us for more information</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	<img
		src="https://smytten-image.gumlet.io/storefront/1716368386_web%20pass%2079%20%283%29.jpg"
		alt="" style="padding-top: 35px;">


	</div>
	<div class="container" style="margin-top: 5%;">
		<div class="row">
			<div class="col-md-4">
				<div class="card h-100">
					<img
						src="https://smytten-image.gumlet.io/discover_product/1712148198_DAK0080AB18-D1.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">product1</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="similarprod.html" class="btn btn-primary">try!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card h-100">
					<img
						src="https://smytten-image.gumlet.io/discover_product/1635321470_DTSS0006B1.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">product2</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="similarprod.html" class="btn btn-primary">try!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card h-100">
					<img
						src="https://smytten-image.gumlet.io/discover_product/1608741905_D1_Masking%20Honey.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">product3</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="similarprod.html" class="btn btn-primary">try!</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<img
		src="https://smytten-image.s3.ap-southeast-1.amazonaws.com/storefront/1716298437_bath%20and%20body%20web.jpg?w=750"
		alt="" width="100%" style="padding-top: 30px;">
	</div>
	<div class="container" style="margin-top: 5%;">
		<div class="row">
			<div class="col-md-4">
				<div class="card h-100">
					<img
						src="https://smytten-image.gumlet.io/discover_product/1704260993_DBCD0010CB1_D1.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">product1</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="similarprod.html" class="btn btn-primary">try!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card h-100">
					<img
						src="https://smytten-image.gumlet.io/discover_product/1714637522_CARTBOM165_1.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">product2</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="similarprod.html" class="btn btn-primary">try!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card h-100">
					<img
						src="https://smytten-image.gumlet.io/discover_product/1684904168_DJTH0030BB4.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">product3</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="similarprod.html" class="btn btn-primary">try!</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section id="home" class="section fade-in-section">
		<div class="container">
			<h2>Welcome to Our Service Page</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Integer posuere erat a ante.</p>
		</div>
	</section>

	<section id="contact" class="section fade-in-section">
		<div class="container">
			<h2>Contact Us</h2>
			<p>If you have any questions, feel free to reach out to us.</p>
		</div>
	</section>

	<div id="home" class="container-fluid section bg-light">
		<h2>Home</h2>
		<p>Some content about home.</p>
	</div>
	<div class="background"></div>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="contact-form">
					<h3 class="text-center">Contact Us</h3>
					<form id="contactForm">
						<div class="form-group">
							<label for="name">Name</label> <input type="text"
								class="form-control" id="name" placeholder="Enter your name"
								required> <i class="fas fa-user"></i>
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" placeholder="Enter your email"
								required> <i class="fas fa-envelope"></i>
						</div>
						<div class="form-group">
							<label for="message">Message</label>
							<textarea class="form-control" id="message" rows="5"
								placeholder="Enter your message" required></textarea>
							<i class="fas fa-comment"></i>
						</div>
						<button type="submit" class="btn btn-custom btn-block">Submit</button>
					</form>
					<div id="formMessage" class="mt-3"></div>
				</div>
			</div>
		</div>
	</div>
	<script>
    $(document).ready(function() {
        var firstName = "<%= session.getAttribute("userId") != null ? session.getAttribute("userId") : "" %>";
        if (firstName) {
            $("#welcomeBtn span").text("Welcome " + firstName);
            $("#loginBtn").hide();
            $("#welcomeBtn").show();
            $("#profileDropdown").show();
            $("#liked").show();
            $("#disliked").show();
        } else {
            $("#loginBtn").show();
            $("#welcomeBtn").hide();
            $("#profileDropdown").hide();
            $("#liked").hide();
            $("#disliked").hide();
        }
    });
    </script>
	<script>
    // JavaScript to generate animated SVG background
    const background = document.querySelector('.background');
    const svgNS = "http://www.w3.org/2000/svg";

    for (let i = 0; i < 10; i++) {
        let circle = document.createElementNS(svgNS, "circle");
        circle.setAttribute("cx", Math.random() * 100 + '%');
        circle.setAttribute("cy", Math.random() * 100 + '%');
        circle.setAttribute("r", Math.random() * 100);
        circle.setAttribute("fill", `rgba(0, 123, 255, ${Math.random() * 0.5})`);
        background.appendChild(circle);

        // Animation for circles
        const animate = document.createElementNS(svgNS, "animateTransform");
        animate.setAttribute("attributeName", "transform");
        animate.setAttribute("attributeType", "XML");
        animate.setAttribute("type", "rotate");
        animate.setAttribute("from", "0 50 50");
        animate.setAttribute("to", "360 50 50");
        animate.setAttribute("dur", `${Math.random() * 5 + 5}s`);
        animate.setAttribute("repeatCount", "indefinite");
        circle.appendChild(animate);
    }

    document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault();

        // Fetch form values
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const message = document.getElementById('message').value;

        // Simple form validation
        if (name === '' || email === '' || message === '') {
            document.getElementById('formMessage').innerHTML = '<div class="alert alert-danger" style="animation: shake 0.5s;">Please fill in all fields.</div>';
            return;
        }

        // Here, you would normally send the form data to your server using an AJAX request.

        // Simulate a successful form submission
        document.getElementById('formMessage').innerHTML = '<div class="alert alert-success">Thank you for contacting us, ' + name + '! We will get back to you soon.</div>';

        // Clear the form
        document.getElementById('contactForm').reset();
    });
</script>

</body>
</html>
