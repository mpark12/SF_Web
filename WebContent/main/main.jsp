<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="apple-touch-icon" sizes="76x76" href="${path}/img/apple-icon.png">
	<link rel="icon" type="image/png" href="${path}/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Sneakers Finder</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="${path}/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${path}/css/material-kit.css" rel="stylesheet"/>

	<style type="text/css">
	</style>
	<script src="http://code.jquery.com/jquery-1.10.2.js">
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submitBtn").click(function(){
				if($("#name").val()!=null && $("#name").val()!="" 
					&& $("#email").val()!=null && $("#email").val()!="" 
					&& $("#content").val()!=null && $("#content").val()!=""){
					alert("Your message has been submitted successfully!");
					$("form").submit();	
				}else{
					alert("Complete all fields to submit.");
				}
			})
		});
	</script>
</head>
	
<body class="landing-page">
    <nav class="navbar navbar-transparent navbar-absolute">
    	<div class="container">
        	<!-- Brand and toggle get grouped for better mobile display -->
        	<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-doc">
            		<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
        		</button>
        		<a class="navbar-brand" href="${path}/main.do?method=main">Sneakers Finder</a>
    		</div>

        	<div class="collapse navbar-collapse" id="navigation-doc">
	    		<ul class="nav navbar-nav">
					<li class=""><a href="${path}/main.do?method=basketball">Basketball</a></li>
	        		<li><a href="${path}/main.do?method=running">Running</a></li>
	        		<li><a href="#">Training</a></li>
	        		<li><a href="#">Golf</a></li>
	        		<li><a href="#">Soccer</a></li>
	        		<li><a href="#">Tennis</a></li>
	        		<li><a href="#">lifestyle</a></li>
	        		<li class="dropdown">
	        			<a target="_black" class="dropdown-toggle" data-toggle="dropdown">Links to sources<b class="caret"></b></a>
	        			<ul class="dropdown-menu">
						  <li><a href="https://www.adidas.com" target="_black">Adidas</a></li>
						  <li><a href="https://www.underarmour.com" target="_black">UnderArmour</a></li>
						  <li><a href="https://www.nike.com" target="_black">Nike</a></li>
						  <li class="divider"></li>
						  <li><a href="https://www.footlocker.com" target="_black">Foot Locker</a></li>
						  <li class="divider"></li>
					      <li><a href="https://www.sneakernews.com" target="_black">Sneaker News</a></li>
					      <li class="divider"></li>
					      <li><a href="https://www.weartesters.com" target="_black">Wear Testers</a></li>
	        			</ul>
	        		</li>
	    		</ul>
    		</div>
    		
		</div>
    </nav>

    <div class="wrapper">
        <div class="header header-filter" style="background-image: url('${path}/img/basketballcourt1.jpg');">
            <div class="container">
                <div class="row">
					<div class="col-md-6">
						<br><br>
						<h1 class="title">Find the sneakers <br>all over the world <br>with ease!</h1>
	                    <br />
	                    <a href="https://www.youtube.com/user/sneakernews" class="btn btn-primary btn-raised btn-lg" target="_blank">
							<i class="fa fa-play"></i> Watch video
						</a>
					</div>
                </div>
            </div>
        </div>	

		<div class="main main-raised">
			<div class="container">
		    	<div class="section text-center section-landing">
	                <div class="row">
	                    <div class="col-md-8 col-md-offset-2">
	                        <h2 class="title">Let's find some shoes!!</h2>
	                        <h5 class="description">This is the place where you can find info and details of sneakers at a glance. <br>We will keep you engaged by providing the latest information.</h5>
	                    </div>
	                </div>

					<div class="features">
						<div class="row">
		                    <div class="col-md-4">
								<div class="info">
									<div class="icon icon-primary">
										<i class="material-icons">chat</i>
									</div>
									<h4 class="info-title">Collect</h4>
									<p>We collect every single sneakers on the web into our lists!</p>
								</div>
		                    </div>
		                    <div class="col-md-4">
								<div class="info">
									<div class="icon icon-success">
										<i class="material-icons">verified_user</i>
									</div>
									<h4 class="info-title">Features</h4>
									<p>We will provide key features and information of each sneakers.</p>
								</div>
		                    </div>
		                    <div class="col-md-4">
								<div class="info">
									<div class="icon icon-danger">
										<i class="material-icons">fingerprint</i>
									</div>
									<h4 class="info-title">Reviews</h4>
									<p>You can go to videos and blogs of wear-testers right away!<br>Just click the button we put beside every thumbnails.</p>
								</div>
		                    </div>
		                </div>
					</div>
	            </div>

	        	<div class="section text-center">
	                <h2 class="title">Here is our team</h2>

					<div class="team">
						<div class="row">
							<div class="col-md-4">
			                    <div class="team-player">
			                        <img src="${path}/img/basketballcourt6.jpg" alt="Thumbnail Image" class="img-raised img-rounded">
			                        <h4 class="title">Gigi Hadid <br />
										<small class="text-muted">Co-founder</small>
									</h4>
			                        <p class="description">You can write here details about one of your team members. You can give more details about what they do. Feel free to add some <a href="#">links</a> for people to be able to follow them outside the site.</p>
									<a href="#pablo" class="btn btn-simple btn-just-icon"><i class="fa fa-twitter"></i></a>
									<a href="#pablo" class="btn btn-simple btn-just-icon"><i class="fa fa-instagram"></i></a>
									<a href="#pablo" class="btn btn-simple btn-just-icon btn-default"><i class="fa fa-facebook-square"></i></a>
			                    </div>
			                </div>
			                <div class="col-md-4">
			                    <div class="team-player">
			                        <img src="${path}/img/basketballcourt2.jpg" alt="Thumbnail Image" class="img-raised img-rounded">
			                        <h4 class="title">Christian Louboutin<br />
										<small class="text-muted">Designer & Developer</small>
									</h4>
			                        <p class="description">You can write here details about one of your team members. You can give more details about what they do. Feel free to add some <a href="#">links</a> for people to be able to follow them outside the site.</p>
									<a href="#pablo" class="btn btn-simple btn-just-icon"><i class="fa fa-twitter"></i></a>
									<a href="#pablo" class="btn btn-simple btn-just-icon"><i class="fa fa-linkedin"></i></a>
			                    </div>
			                </div>
			                <div class="col-md-4">
			                    <div class="team-player">
			                        <img src="${path}/img/basketballcourt5.jpg" alt="Thumbnail Image" class="img-raised img-rounded">
			                        <h4 class="title">Kendall Jenner<br />
										<small class="text-muted">Co-founder</small>
									</h4>
			                        <p>You can write here details about one of your team members. You can give more details about what they do. Feel free to add some <a href="#">links</a> for people to be able to follow them outside the site.</p>
									<a href="#pablo" class="btn btn-simple btn-just-icon"><i class="fa fa-google-plus"></i></a>
									<a href="#pablo" class="btn btn-simple btn-just-icon"><i class="fa fa-youtube-play"></i></a>
									<a href="#pablo" class="btn btn-simple btn-just-icon btn-default"><i class="fa fa-twitter"></i></a>
			                    </div>
			                </div>
						</div>
					</div>

	            </div>


				<div class="section landing-section">
	                <div class="row">
	                    <div class="col-md-8 col-md-offset-2">
	                        <h2 class="text-center title">Talk to us</h2>
							<h4 class="text-center description">If you do not see the sneakers that you want, leave us a message.<br> We will get back to you ASAP!</h4>
	                        <form class="contact-form" method="post" action="${path}/main.do?method=inquiry">
	                            <div class="row">
	                                <div class="col-md-6">
										<div class="form-group label-floating">
											<label class="control-label">Your Name</label>
											<input type="name" class="form-control" name="name" id="name">
										</div>
	                                </div>
	                                <div class="col-md-6">
										<div class="form-group label-floating">
											<label class="control-label">Your Email</label>
											<input type="email" class="form-control" name="email" id="email">
											<span class="material-icons form-control-feedback">clear</span>
										</div>
	                                </div>
	                            </div>

								<div class="form-group label-floating">
									<label class="control-label">Your Message</label>
									<textarea class="form-control" rows="4" name="content" id="content"></textarea>
								</div>
							</form>
	                            <div class="row">
	                                <div class="col-md-4 col-md-offset-4 text-center">
	                                    <button class="btn btn-primary btn-raised" id="submitBtn">
											Submit
										</button>
	                                </div>
	                            </div>
	                    </div>
	                </div>

	            </div>
<!-- end of sendletter -->
	        </div>

		</div>

<!-- footer -->
		<footer class="footer footer-transparent">
        <div class="container">
            <nav class="pull-left">
                <ul>
					<li>
						<a href="${path}/main.do?method=main">
							Sneakers Finder
						</a>
					</li>
					<li>
						<a href="${path}/main.do?method=signup" target="_black">
						   Follow Us
						</a>
					</li>
					<li>
						<a href="#" target="_black">
						   Blog
						</a>
					</li>
					<li>
						<a href="#" target="_black">
							Licenses
						</a>
					</li>
                </ul>
            </nav>
            <div class="social-area pull-right">
                <a class="btn btn-social btn-twitter btn-simple" href="https://twitter.com/" target="_black">
                    <i class="fa fa-twitter"></i>
                </a>
                <a class="btn btn-social btn-facebook btn-simple" href="https://www.facebook.com/" target="_black">
                    <i class="fa fa-facebook-square"></i>
                </a>
                <a class="btn btn-social btn-google btn-simple" href="https://plus.google.com/" target="_black">
                    <i class="fa fa-google-plus"></i>
                </a>
            </div>
            <div class="copyright">
                &copy; 2017 Sneakers Finder
            </div>
        </div>
    </footer>
<!-- end footer -->

	</div>
</body>

	<!--   Core JS Files   -->
	<script src="${path}/js/jquery.min.js" type="text/javascript"></script>
	<script src="${path}/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${path}/js/material.min.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="${path}/js/nouislider.min.js" type="text/javascript"></script>

	<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
	<script src="${path}/js/bootstrap-datepicker.js" type="text/javascript"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="${path}/js/material-kit.js" type="text/javascript"></script>

</html>