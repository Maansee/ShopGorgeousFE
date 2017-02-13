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

	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Supplier</h3>
<%-- 					<c:url var="addAction" value="/editsupplier/{supplier_id}"></c:url> --%>
					<form:form action="${contextPath}/addSupplier" modelAttribute="Supplier" method="post">
						<form:label path="supplier_id">Supplier ID</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="supplier_id" readonly="true"/>
							<div class="clearfix"></div>
						</div>
						<form:label path="supplier_name">Supplier Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
							<form:input path="supplier_name" />
							<div class="clearfix"></div>
						</div>

						<form:label path="supplier_address">Supplier Address</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
							<form:input path="supplier_address" />
							<div class="clearfix"></div>


						</div>
						<input type="submit" value="Submit">
						</form:form>
				</div>

			</div>

		</div>
	</div>


<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
</body>
<%@ include file="shared/footer.jsp" %>
</html>