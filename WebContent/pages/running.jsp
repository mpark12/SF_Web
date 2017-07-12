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
			
		});
	</script>
</head>

<body class="profile-page">
	<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    	<div class="container">
        	<!-- Brand and toggle get grouped for better mobile display -->
        	<div class="navbar-header">
	    		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
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
    	</div>
    </nav>

    <div class="wrapper">
		<div class="header header-filter" style="background-image: url('${path}/img/basketballcourt1.jpg');">
			<div class="container">
                
            </div>
		</div>

		<div class="main main-raised">
			<d	iv class="profile-content">
	            <div class="container">

					<div class="row">
	                    <div class="profile">
	                       
	                        <div class="name">
	                            <h3 class="">Basketball Shoes</h3>
								<h5>SEARCH RESULTS</h5>
	                        </div>
	                    </div>
	                </div>


<!-- shoes thumbnails -->	
	                <div class="row">
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes1.jpg" alt="...">
							     <div class="caption">
							     	<h3>Ultra Boost</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/ultraboost-shoes/BA8923.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										 Details
										</button>
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes2.jpg" alt="...">
							     <div class="caption">
							     	<h3>Pure Boost</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/pureboost-shoes/BA8900.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes3.jpg" alt="...">
							     <div class="caption">
							     	<h3>Alphabounce</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/alphabounce-engineered-mesh-shoes/BB9040.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes4.jpg" alt="...">
							     <div class="caption">
							     	<h3>Air Max</h3>
							        <p>Nike Men's Running</p>
							        <p><a href="http://store.nike.com/us/en_us/pd/air-max-2017-mens-running-shoe/pid-11235172/pgid-11289589" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes1.jpg" alt="...">
							     <div class="caption">
							     	<h3>Ultra Boost</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/ultraboost-shoes/BA8923.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										 Details
										</button>
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes2.jpg" alt="...">
							     <div class="caption">
							     	<h3>Pure Boost</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/pureboost-shoes/BA8900.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes3.jpg" alt="...">
							     <div class="caption">
							     	<h3>Alphabounce</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/alphabounce-engineered-mesh-shoes/BB9040.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes4.jpg" alt="...">
							     <div class="caption">
							     	<h3>Air Max</h3>
							        <p>Nike Men's Running</p>
							        <p><a href="http://store.nike.com/us/en_us/pd/air-max-2017-mens-running-shoe/pid-11235172/pgid-11289589" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes1.jpg" alt="...">
							     <div class="caption">
							     	<h3>Ultra Boost</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/ultraboost-shoes/BA8923.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										 Details
										</button>
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes2.jpg" alt="...">
							     <div class="caption">
							     	<h3>Pure Boost</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/pureboost-shoes/BA8900.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes3.jpg" alt="...">
							     <div class="caption">
							     	<h3>Alphabounce</h3>
							        <p>Adidas Men's Running</p>
							        <p><a href="http://www.adidas.com/us/alphabounce-engineered-mesh-shoes/BB9040.html" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                    <div class="col-sm-3">
	                    	 <div class="thumbnail">
						     <img src="${path}/img/runshoes4.jpg" alt="...">
							     <div class="caption">
							     	<h3>Air Max</h3>
							        <p>Nike Men's Running</p>
							        <p><a href="http://store.nike.com/us/en_us/pd/air-max-2017-mens-running-shoe/pid-11235172/pgid-11289589" class="btn btn-primary" role="button" target="_black">BUY</a> 
						        		<!-- Button trigger modal -->
										<button class="btn btn-default" data-toggle="modal" data-target="#myModal">
										
										  Details
										</button>
										<!-- Modal Core -->
										
									</p>
							     </div>
						     </div>
	                    </div>
	                 
	                </div>
<!-- end of shoes thumbnails -->	                

	            </div>
	        </div>
		</div>
	</div>
	
<!-- Modal Core -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
		      </div>
		      <div class="modal-body">
		        m decided to leave for the far World of Grammar.
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary btn-simple" data-dismiss="modal">Close</button>
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
						<a href="#" target="_black">
						   About Us
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