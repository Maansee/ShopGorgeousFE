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


<%@ include file="shared/header.jsp" %>
<html>
<style>
body{
background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
background-size: cover;
font-family: 'Open Sans',sans-serif;
background-attachment: fixed;
}
</style>
<body ng-app="myapp" ng-controller="productsController">





	<c:url value="/resources/images/${productObject.productname}.jpg"
		var="imgg" />


	<!--content-->
	<div class="content">
		<!--single-->
		<div class="single-wl3">
			<div class="container">
				<div class="single-grids">
					<div class="col-md-9 single-grid">
						<div clas="single-top">
							<div class="single-left">
								<div class="flexslider">


									<div id="picture-frame">
										<img src="${imgg}" alt="" data-imagezoom="true"
											class="img-responsive">
									</div>
									<script src="${js}/jquery.zoomtoo.js"></script>

								</div>
							</div>
							<div class="single-right">
								<h4>${productObject.productname}</h4>
								<h5>${productObject.category_name}</h5>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<p class="price item_price">Rs.
									${productObject.productprice}</p>
								
								<div class="quick_desc">
									<p>
										<span>Quick Overview : </span>
										${productObject.productdescription}
									</p>
								</div>
								<div class="color-quality">


									<security:authorize access="hasRole('ROLE_USER')">

										<a ng-click="addToCart(${productObject.productid})"
											data-text="Add To Cart" button class="btn btn-danger my-cart-btn my-cart-b">Add
											To Cart</a>
									</security:authorize>
									
									
									<c:url value="/productlist" var="url"></c:url>


									<a href="${url}" class="btn btn-danger my-cart-btn my-cart-b"> Continue shopping</a>
									
									
								</div>
							</div>
						</div>


					</div>
					
					<div class="clearfix"></div>
				</div>
			</div>



		</div>
		<br>
		

<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
		<%@include file="shared/footer.jsp"%>
		<script src="${js}/jquery.zoomtoo.js"></script>
		<script src="${js}/cartcontroller.js"></script>
<br>		
</body>
</html>