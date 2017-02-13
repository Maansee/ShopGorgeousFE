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


<%@ include file="shared/header.jsp"%>
<h3>Supplier List</h3>

<table class="tg" border=1 align="center">
	<tr>
		<th width="80">Supplier ID</th>
		<th width="120">Supplier Name</th>
		<th width="120">Supplier Address</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${supplierList}" var="sup">
		<tr>

			<td><c:out value="${sup.supplier_id}" /></td>
			<td><c:out value="${sup.supplier_name}" /></td>
			<td><c:out value="${sup.supplier_address}" /></td>
			<td><a href="<c:url value='/editsupplier/${sup.supplier_id}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removesupplier/${sup.supplier_id}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>

<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
<%@ include file="shared/footer.jsp"%>
</body>
</html>