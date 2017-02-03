<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<spring:url value="/resources/video" var="video" />
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Shop Gorgeous: The Beauty Store</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${css}/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${css}/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="${js}/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${js}/move-top.js"></script>
<script type="text/javascript" src="${js}/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="${css}/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="${js}/jstarbox.js"></script>
	<link rel="stylesheet" href="${css}/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>
<a href="offer"><img src="${img}/download.png" class="img-head" alt=""></a>
<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="index"><b>S<br>H<br>O<br>P</b>Gorgeous<span>The Best Beauty Store</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">
					<!-- <li><a href="wishlist" ><i class="fa fa-heart" aria-hidden="true"></i>Wishlist</a></li> -->
<!-- 					<li><a href="login" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li> -->
<!-- when user logged in -->
						<c:if test="${pageContext.request.userPrincipal.name != null }">

							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value='/Logout'/>">Logout</a></li>

						</c:if>


						<!-- when user not logged in -->
						<c:if test="${pageContext.request.userPrincipal.name == null }">
							<li><a href="<c:url value='/login'/>"><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
							<li><a href="<c:url value='/register'/>"><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
						</c:if>
<!-- 					<li><a href="register" ><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li> -->
					<li><a href="shipping" ><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
				</ul>	
			</div>
			
			
			
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
		

				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li ><a href="index" class="hyper "><span>Home</span></a></li>	
							
							<li class = " "><a href="about" class="hyper"><span>About Us</span></a></li>
							
							<li  class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>Products<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
			
												<li><a href="productlist"><i class="fa fa-angle-right" aria-hidden="true"></i>Show all Products</a></li>
											<!-- 	<li><a href="products"><i class="fa fa-angle-right" aria-hidden="true"></i>Cosmetics</a></li>
												<li><a href="products"> <i class="fa fa-angle-right" aria-hidden="true"></i>Aromatics</a></li>
												<li><a href="products"><i class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
												<li><a href="products"><i class="fa fa-angle-right" aria-hidden="true"></i>Accessories</a></li> -->
										
											</ul>
										
										</div>
							
										<div class="col-sm-3 w3l">
											<a href="products"><img src="${img}/cosmetics.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
							
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span>Admin<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="newproduct"><i class="fa fa-angle-right" aria-hidden="true"></i>Add Products</a></li>
												<li><a href="supplier"><i class="fa fa-angle-right" aria-hidden="true"></i>Add Suppliers</a></li>
												<li><a href="category"><i class="fa fa-angle-right" aria-hidden="true"></i>Add Category</a></li>
												
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="productlist"><i class="fa fa-angle-right" aria-hidden="true"></i>Show Products</a></li>
												<li><a href="supplierlist"><i class="fa fa-angle-right" aria-hidden="true"></i>Show Suppliers </a></li>
												<li><a href="categorylist"><i class="fa fa-angle-right" aria-hidden="true"></i>Show Categories </a></li>
												
										
											</ul>
										</div>
										<div class="clearfix"></div>
										
									</div>	
								</ul>
							</li>
							

							
							
							<li><a href="contact" class="hyper"><span>Contact Us</span></a></li>
						</ul>
					</div>
					</nav>
					 <div class="cart" >
						
						<span class="fa fa-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"><a href="<c:url value='/cart/getCartId'/>"> Cart 
					</a></span></span><span>
					</div>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!---->
  
  <%-- <div class="header-right2">
						<div class="cart box_1">
						<a>
							<a href="<c:url value='/cart/getCartId'/>"> Cart <img src="${img}/bag.png" alt="" allign="center" />
							</a>
						</a>
						</div>
						</div>
					</div> --%>
  <script src="${js}/angular.min.js"></script>