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
		<h4><a href="index">Home</a><label>/</label>Login</h4>
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
					<a href="<c:url value='/ContactUs'/>" class="forg-left">Forgot Password</a>
					<a href="register" class="forg-right">Register</a>
				<div class="clearfix"></div>
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
							
	$().UItoTop({ easingType: 'easeOutQuart' });
	});
</script>  -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a> 
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script> 
<!-- //for bootstrap working --> 
<%-- <script type='text/javascript' src="${js}/jquery.mycart.js"></script> 
<script type="text/javascript"> 
 $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
</script> --%>
<%@ include file="shared/footer.jsp" %>
</body>
</html>