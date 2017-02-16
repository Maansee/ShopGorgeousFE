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


<%@include file = "shared/header.jsp" %>


 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Contact</h3>
		<h4><a href="<c:url value='/index'/>">Home</a><label>/</label>Contact</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- contact -->
<div class="contact">
	<div class="container">
		<div class="spec ">
			<h3>Contact</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
		</div>
		<div class=" contact-w3">	
			<div class="col-md-5 contact-right">	
				
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3773.8483294603675!2d72.82773081489906!3d18.938106387167206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7d1de706c5523%3A0xf6e8e25e40bc7c3b!2sFashion+Street!5e0!3m2!1sen!2sin!4v1486987891342" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="col-md-7 contact-left">
				<h4>Contact Information</h4>
				
				<ul class="contact-list">
					<li> <i class="fa fa-map-marker" aria-hidden="true"></i> Fashion Street, Marine Lines, Mumbai, Maharashtra 400020</li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com">shopgorgeous@gmail.com</a></li>
					<li> <i class="fa fa-phone" aria-hidden="true"></i>+91 1111116965</li>
				</ul>
			
				
				
			</div>
			
		<div class="clearfix"></div>
	</div>
	</div>
</div>
<!-- //contact -->

<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
<%@include file = "shared/footer.jsp" %>  
</body>
</html>