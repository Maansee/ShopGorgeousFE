<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />



<!DOCTYPE html>
<html lang="en">
<head>
<title>Empty Cart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>

</head>

<style>



.metro {
	display: inline-block;
	padding: 10px;
	margin: 10px;
	background: green;
	/* Font styles */
	color: white;
	font-weight: bold;
	text-decoration: none;
	text-align: center;
	vertical-align: middle;
}

.progress {
	width: 70%;
}
</style>
<body>

	<%@ include file="/WEB-INF/views/shared/header.jsp"%>
	<br>
	<br>
	<div align="center">
		<div class="metro">
			<h1>
				<font color="white">Your cart is empty!!!</font>
			</h1>
		</div>
		
		

		<div class="progress">
			<div class="progress-bar progress-bar-danger" style="width: 100%"></div>
		</div>
	</div>
	
			<div class="newimage">
			<div class="col-md2 ">
				<a href="<c:url value='/productlist'/>">
					<img src="${img}/empty-cart.jpg" class="img-responsive img1" alt="" align ="middle">
					<div class="big-sale2">
							
					</div>
				</a>
			</div>

		</div>
		<div class="clearfix"></div>
		
		<div align="center">
											<c:url value="/productlist" var="url"></c:url>
											<a href="${url}" class="btn btn-success">Continue Shopping</a>
											</div>
											<br> <br>
		
	
</body>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a> 
<script src="${js}/bootstrap.js"></script> 
<script type='text/javascript' src="${js}/jquery.mycart.js"></script> 
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>
</html>