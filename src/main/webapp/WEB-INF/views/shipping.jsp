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
		<h3 >Shipping</h3>
		<h4><a href="<c:url value='/index'/>">Home</a><label>/</label>Shipping</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- faqs -->
	<div class="faq-w3 ">
		<div class="container">
			<div class="spec ">
			<h3>Shipping</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
				<div class="panel-group" id="accordion">
				<!-- First Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseOne">
								 <span>1.</span> What are the delivery charges?
							 </h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Minimum Rs. 75 for purchases below Rs.350. Above Rs. 350 no delivery charges.</p>
							</div>
						</div>
					</div>
					
					<!-- Second Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse"  data-target="#collapseTwo">
								<span>2.</span> How long will my order take to arrive?
							 </h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">								
								<p>Minimum 3 days depending where it has to be delivered.</p>
							</div>
						</div>
					</div>
					
					<!-- Third Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseThree">
								<span>3.</span> What if I have received the wrong product?
							 </h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Our shipments go through rigorous quality check processes before they leave our warehouse, however there is a slight possibility that the product could get damaged during shipment. If you have received an item in a damaged/defective condition you can create ticket below 
Note: If it is a case of replacement, it is subject to the availability of stock. In the case that a replacement may not be available, we will refund you the full amount.</p>
							</div>
						</div>
					</div>
					<!-- Fourth Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFour">
								<span>4.</span>Do you ship internationally?
							 </h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Yes. We do but only at selected places.</p>
							</div>
						</div>
					</div>
					
					
				</div>
		</div>	
	</div>
	<!-- // Terms of use -->


<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
</script><%@ include file="shared/footer.jsp" %> --%>
</body>
</html>