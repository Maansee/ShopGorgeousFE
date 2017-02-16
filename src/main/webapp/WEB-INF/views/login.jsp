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
		<h3 >Login</h3>
		<h4><a href="<c:url value='/index'/>">Home</a><label>/</label>Login</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!--login-->

	<div class="login">
	
		<div class="main-agileits">
				<div class="form-w3agile">
					<h3>Login</h3>
					<c:if test="${not empty error}">
						<div class=error style="color: #ff0000">${error}</div>
					</c:if>
					<c:if test="${not empty logout}">
					<div class=logout style="color:#ff0000"> ${logout} </div>
					</c:if>
					<br>
					<form action="<c:url value="j_spring_security-check"/>" method="post">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Name" name="j_User_id" path="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Password" name="j_User_password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
						
						<input type="submit" value="Login"><input type="hidden" name="${csrf.parametername}" value="${_csrf.token}" />
						
						
					</form>
				</div>
				<div class="forg">
					<a href="<c:url value='/contact'/>" class="forg-left">Forgot Password</a>
					<a href="register" class="forg-right">Register</a>
				<div class="clearfix"></div>
				</div>
			</div>
		</div>

<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a> 

<script src="${js}/bootstrap.js"></script> 

<%@ include file="shared/footer.jsp" %>
</body>
</html>