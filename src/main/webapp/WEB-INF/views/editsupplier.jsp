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
<!-- smooth scrolling -->
<!-- <script type="text/javascript">
	$(document).ready(function() {

			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script> -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
 <!-- //for bootstrap working --> 
<%-- <script type='text/javascript' src="${js}/jquery.mycart.js"></script> 
<script type="text/javascript"> 
	$(function() {

		var goToCartIcon = function($addTocartBtn) {
			var $cartIcon = $(".my-cart-icon");
			var $image = $(
					'<img width="30px" height="30px" src="'
							+ $addTocartBtn.data("image") + '"/>').css({
				"position" : "fixed",
				"z-index" : "999"
			});
			$addTocartBtn.prepend($image);
			var position = $cartIcon.position();
			$image.animate({
				top : position.top,
				left : position.left
			}, 500, "linear", function() {
				$image.remove();
			});
		}

		$('.my-cart-btn').myCart({
			classCartIcon : 'my-cart-icon',
			classCartBadge : 'my-cart-badge',
			affixCartIcon : true,
			checkoutCart : function(products) {
				$.each(products, function() {
					console.log(this);
				});
			},
			clickOnAddToCart : function($addTocart) {
				goToCartIcon($addTocart);
			},
			getDiscountPrice : function(products) {
				var total = 0;
				$.each(products, function() {
					total += this.quantity * this.price;
				});
				return total * 1;
			}
		});

	});
<!-- </script>--%>

</body>
<%@ include file="shared/footer.jsp" %>
</html>