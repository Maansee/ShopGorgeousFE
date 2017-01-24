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

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Add New Products</h3>
				<c:url var="addAction" value="editProduct/{productid}"></c:url> 
					<form:form action="${contextPath}/addproduct" modelAttribute="Product" method="post" enctype="multipart/form-data">

						<form:label path="productid">Product ID</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="productid" readonly="true" />
							<div class="clearfix"></div>
						</div>


						<form:label path="productname">Product Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							<form:input type="text" path="productname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="productprice">Product Price</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="productprice" />
							<div class="clearfix"></div>
						</div>

						<form:label path="productdescription">Product Description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
							<form:input type="text" path="productdescription" />
							<div class="clearfix"></div>
						</div>

						<form:label path="category_name">Category Name</form:label>
						<div class="key">
							<form:input class="form-control" items="${Catgname}"
								path="category_name" />
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
	</div>

<%@include file="shared/footer.jsp"%>
<%-- 	<script src="${js}/app.js"></script> --%>
</body>
</html>

