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
		<h3 >Supplier</h3>
		<h4><a href="index">Home</a><label>/</label>Supplier</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--login-->

	<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Supplier</h3>
<%-- 					<form action="#" method="post"> --%>
					<c:url var="addAction" value="/Supplier/add"></c:url>  
					<form:form action="addSupplier" commandName="Supplierdata">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Supplier Name" name="supplier_name" path="supplier_name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Supplier Name';}" required="">
<%-- 							<form:input type="text" path="supplier_name" /> --%>
							<div class="clearfix"></div>
						</div>
						
						
						<div class="key">
							<i class="fa fa-address-card-o" aria-hidden="true"></i>
							<input  type="text" value="Supplier Address" name="supplier_address" path="supplier_address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Supplier Address';}" required="">
<%-- 							<form:input type="text" path="supplier_address" /> --%>
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Submit">
					</form:form>
				</div>
				
			</div>
		</div>
		

<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
<%@ include file="shared/footer.jsp" %>
</body>
</html>