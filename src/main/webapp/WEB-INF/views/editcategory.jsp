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
<%-- 					<c:url var="addAction" value="/editCategory/{category_id}"></c:url> --%>
					<form:form action="${contextPath}/addCategory" modelAttribute="Category" method="post">
						<form:label path="category_id">Category ID</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="category_id" readonly="true"/>
							<div class="clearfix"></div>
						</div>
						<form:label path="category_name">Category Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
							<form:input path="category_name" />
							<div class="clearfix"></div>
						</div>

						<form:label path="category_description">Category description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
							<form:input path="category_description" />
							<div class="clearfix"></div>


						</div>
						<input type="submit" value="Submit">
						</form:form>
				</div>

			</div>

		</div>
	</div>




</body>
<%@ include file="shared/footer.jsp" %>
</html>