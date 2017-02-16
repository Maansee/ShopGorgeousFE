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
		<h3 >Category</h3>
		<h4><a href="<c:url value='/index'/>">Home</a><label>/</label>Category</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--login-->

	<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Category</h3>
<%-- 					<form action="#" method="post"> --%>
					<c:url var="addAction" value="/Category/add"></c:url>  
					<form:form action="addCategory" commandName="Categorydata">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Category Name" name="category_name" path="category_name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Category Name';}" required="">
<%-- 							<form:input type="text" path="category_name" /> --%>
							<div class="clearfix"></div>
						</div>
						
						
						<div class="key">
							<i class="fa fa-info" aria-hidden="true"></i>
							<input  type="text" value="Category Description" name="category_description" path="category_description" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Category Description';}" required="">
<%-- 							<form:input type="text" path="category_description" /> --%>
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