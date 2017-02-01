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

<body ng-app="prodapp" ng-controller="myprodController"
	ng-init="listProduct()">

	<div>
		<br>
		<div align="center">
			<input type="text" ng-model="searchConditionprod"
				placeholder="Search Products....">
		</div>


		<div class="content">
			<div class="login">
				<div class="main-agi">
					<div class="form-w3agile">
						<h3>Product List</h3>
						<div class="table-responsive">
							<table class="tg" border = 1>
								<tr>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="80">Product ID</th>
									</security:authorize>
									<th width="160">Product Name</th>
									<th width="120">Product Description</th>
									<th width="160">Category Name</th>
									
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="120">Supplier Name</th>
									</security:authorize>
									<th width="120">Product Price</th>
									<th width="120">Product Image</th>
									<th width="40">Info</th>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="60">Edit</th>
										<th width="60">Delete</th>
									</security:authorize>
								</tr>
								<%-- 						<c:forEach items="${productList}" var="p"> --%>
								<tr ng-repeat="p in products | filter:searchConditionprod">
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td>{{p.productid}}</td>
									</security:authorize>
									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>"></a>
											{{p.productname}}</td>
									<td>{{p.productdescription}}</td>
									<td>{{p.category_name}}</td>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td>{{p.supplier_name}}</td>
									</security:authorize>
									<td>{{p.productprice}}</td>
									<c:url value="/resources/images/{{p.productname}}.jpg"
										var="imgg" />

									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>"></a>
											<img src="${imgg}" alt="prodimage" height="80" width="80" /></td>

									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>"><span
											class="glyphicon glyphicon-info-sign"></span></a></td>



									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td><a href="<c:url value='/editproduct/{{p.productid}}' />">Edit</a></td>
										<td><a href="<c:url value='/removeproduct/{{p.productid}}' />">Delete</a></td>

									</security:authorize>
								</tr>
								<%-- 							</c:forEach> --%>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- 	<h3>Product List</h3> -->

<!-- <table class="tg" border=1 align="center"> -->
<!-- 	<tr> -->
	
<!-- 		<th width="80">Product ID</th> -->
<!-- 		<th width="120">Product Name</th> -->
<!-- 		<th width="120">Product Description</th> -->
<!-- 		<th width="120">Product Image</th> -->
		
<!-- 		<th width="60">Edit</th> -->
<!-- 		<th width="60">Delete</th> -->
<!-- 	</tr> -->
<!-- 	<c:forEach items="${productList}" var="p"> -->
<!-- 		<tr> -->

<!-- 			<td><c:out value="${p.productid}" /></td> -->
<!-- 			<td><c:out value="${p.productname}" /></td> -->
<!-- 			<td><c:out value="${p.productdescription}" /></td> -->
			
<!-- 			<c:url value="/resources/images/${p.productname}.jpg" var="imgg" /> -->

<!-- 			<td> <img src="${imgg}" alt="prodimage" height="80" width="80" /></td> -->
			
<!-- 			<td><a href="<c:url value='/editproduct/${p.productid}' />">Edit</a></td> -->
<!-- 			<td><a href="<c:url value='/removeproduct/${p.productid}' />">Delete</a></td> -->
<!-- 		</tr> -->
<!-- 	</c:forEach> -->
<!-- </table> -->
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
</script>
 --><a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
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
<!-- </script> --> --%>
<%@include file="shared/footer.jsp"%>
<script src="${js}/app.js"></script>
</body>
</html>