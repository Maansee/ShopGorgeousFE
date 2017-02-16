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
		<h3 >Add New Products</h3>
		<h4><a href="<c:url value='/index'/>">Home</a><label>/</label>New Product</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Add a new product</h3>
<%-- 					<form action="#" method="post">  --%>
					<c:url var="addaction" value="/newproduct/add"></c:url>
					<form:form action="addproduct" commandName="Productdata" enctype="multipart/form-data">

						<%-- 						<form:label path="Product_id">Product ID</form:label> --%>
						<!-- 						<div class="key"> -->
						<!-- 							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i> -->
						<%-- 							<form:input type="text" path="Product_id" /> --%>
						<!-- 							<div class="clearfix"></div> -->
						<!-- 						</div> -->


						<form:label path="productname">Product Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							<form:input type="text" path="productname" name="productname" value="Product Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product Name';}" required=""/>
<%-- 							<input  type="text" value="Product Name" name="productname" path="productname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product Name';}" required=""> --%>
							<div class="clearfix"></div>
						</div>

						<form:label path="productprice">Product Price</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="productprice" name="productprice" value="Product Price" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product Price';}" required=""/>
<!-- 							<input  type="text" value="Product Price" name="productprice" path="productprice" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product Price';}" required=""> -->
							<div class="clearfix"></div>
						</div>



						<form:label path="productdescription">Product Description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
							<form:input type="text" path="productdescription"  name="productdescription" value="Product Description" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product Description';}" required=""/>
<!-- 							<input  type="text" value="Product Description" name="productdescription" path="productdescription" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product Description';}" required=""> -->
							<div class="clearfix"></div>
						</div>

						<form:label path="category_name">Category Name</form:label>
						<div class="key">
							<form:select class="form-control" items="${Catgname}"
								path="category_name"/>
							<div class="clearfix"></div>
						</div>

						<form:label path="supplier_name">Supplier Name</form:label>
						<div class="key">
							<form:select class="form-control" items="${Suplname}"
								path="supplier_name"/>
							<div class="clearfix"></div>
						</div>

						<form:label path="image">Product Image</form:label>
						<div class="key">
						<form:input class="form-control" type="file" path="image" />
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
<%@include file="shared/footer.jsp"%>
</body>
</html>