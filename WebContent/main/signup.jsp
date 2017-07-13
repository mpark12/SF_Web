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
			$("#signupBtn").click(function(){
				if($("input[name=name]").val()!=null && $("input[name=name]").val()!="" 
					&& $("input[name=email]").val()!=null && $("input[name=email]").val()!="" 
					&& $("input[name=password]").val()!=null && $("input[name=password]").val()!=""){
					alert("You are subscribed successfully!");
					$("form").submit();	
				}else{
					alert("Complete all fields to submit.");
				}
			})
		});
	</script>
</head>
<body class="signup-page">
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
		<div class="header header-filter" style="background-image: url('${path}/img/city.jpg'); background-size: cover; background-position: top center;">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div class="card card-signup">
							<form class="form" method="post" action="${path}/main.do?method=signupProc">
								<div class="header header-primary text-center">
									<h4>Sign Up</h4>
									<div class="social-line">
										<a href="#pablo" class="btn btn-simple btn-just-icon">
											<i class="fa fa-facebook-square"></i>
										</a>
										<a href="#pablo" class="btn btn-simple btn-just-icon">
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#pablo" class="btn btn-simple btn-just-icon">
											<i class="fa fa-google-plus"></i>
										</a>
									</div>
								</div>
								<p class="text-divider">For Subscription</p>
								<div class="content">

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">face</i>
										</span>
										<input type="text" class="form-control" placeholder="Name..." name="name">
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">email</i>
										</span>
										<input type="email" class="form-control" placeholder="Email..." name="email">
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<input type="password" placeholder="Password..." class="form-control" name="password"/>
									</div>

									<!-- If you want to add a checkbox to this form, uncomment this code-->

									<div class="checkbox">
										<label>
											<input type="checkbox" name="optionsCheckboxes" checked>
											Agree to the terms
										</label>
									</div> 
								</div>
							</form>
								<div class="footer text-center">
									<button class="btn btn-simple btn-primary btn-lg" id="signupBtn">Get Started</button>
								</div>
						</div>
					</div>
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