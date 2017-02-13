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
    <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >About</h3>
		<h4><a href="index">Home</a><label>/</label>About</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- about -->
	<div class="about-w3 ">

			
			<!--about-->
			<div class="container">
		<div  class="about">
	<div class="spec ">
				<h3>About</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>
			
			<div class="col-md-4 about-right">
			<img class="img-responsive" src="${img}/ab.png" alt="">
			</div>
			<div class="col-md-4 about-left">
				<p>This Beauty Store was founded in 2016 to offer a wide range of the best beauty products, at the best prices. Run by a small dedicated team, we aim to offer a safe, enjoyable and personal shopping experience. Please enjoy our wide range of products including Fragrances, Skincare, Hair Care, Make Up, Nails, Body and Sun & Tanning.</p>
			</div>
			<div class="col-md-4 about-right">
			<img class="img-responsive" src="${img}/ab1.png" alt="">
			</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//about-->
	
	
<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script><%@ include file="shared/footer.jsp" %>
</body>
</html>