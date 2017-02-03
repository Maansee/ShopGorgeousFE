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
		<h3 >Register</h3>
		<h4><a href="index">Home</a><label>/</label>Register</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--login-->

	<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Register</h3>
<%-- 					<form action="#" method="post"> --%>
					<c:url var="addAction" value="/Register/add"></c:url>
					<form:form action="saveuser" commandName="Userdata">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Name" name="username" path="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
<%-- 							<form:input type="text" path="name" /> --%>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<input  type="text" value="Email" name="Mailid" path="mailid" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
<%-- 							<form:input type="text" path="mailid" /> --%>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Password" name="Password" path="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
<%-- 							<form:input type="text" path="password" /> --%>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-mobile-phone" aria-hidden="true"></i>
							<input  type="text" value="Mobile" name="Mobile" path="mobile" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile';}" required="">
<%-- 							<form:input type="text" path="mobile" /> --%>
							<div class="clearfix"></div>
						</div>
<!-- 						<input type="submit" value="Submit"> -->
					
				</div>
				
			</div>
		</div>
<!-- 	<br> -->
<!--billing address -->

						<div class="login">
					<div class="main-agileits">
					<div class="form-w3agile form1">
						<h3>Billing Address</h3>
						
						<form:label path="billingAddress.flatno">Flat No</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-home" aria-hidden="true"></i>
							<form:input type="text" path="billingAddress.flatno" />
							<div class="clearfix"></div>
						</div>
						<form:label path="billingAddress.buildingname">Building Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
							<form:input path="billingAddress.buildingname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.localityname">Locality Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-road" aria-hidden="true"></i>
							<form:input path="billingAddress.localityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.landmark">Landmark</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-picture" aria-hidden="true"></i>
							<form:input type="text" path="billingAddress.landmark" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.cityname">City Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="billingAddress.cityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.statename">State Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="billingAddress.statename" />
							<div class="clearfix"></div>
						</div>


						<form:label path="billingAddress.countryname">Country Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-globe" aria-hidden="true"></i>
							<form:input path="billingAddress.countryname" />
							<div class="clearfix"></div>
						</div>


						<form:label path="billingAddress.zipcode">Zip Code</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input path="billingAddress.zipcode" />
							<div class="clearfix"></div>
						</div>
						<br>
<!-- 						shipping address -->

						<h3>Shipping Address</h3>
						<form:label path="shippingAddress.flatno">Flat No</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-home" aria-hidden="true"></i>
							<form:input type="text" path="shippingAddress.flatno" />
							<div class="clearfix"></div>
						</div>
						<form:label path="shippingAddress.buildingname">Building Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
							<form:input path="shippingAddress.buildingname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.localityname">Locality Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-road" aria-hidden="true"></i>
							<form:input path="shippingAddress.localityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.landmark">Landmark</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-picture" aria-hidden="true"></i>
							<form:input type="text" path="shippingAddress.landmark" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.cityname">City Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="shippingAddress.cityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.statename">State Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="shippingAddress.statename" />
							<div class="clearfix"></div>
						</div>


						<form:label path="shippingAddress.countryname">Country Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-globe" aria-hidden="true"></i>
							<form:input path="shippingAddress.countryname" />
							<div class="clearfix"></div>
						</div>


						<form:label path="shippingAddress.zipcode">Zip Code</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input path="shippingAddress.zipcode" />
							<div class="clearfix"></div>
						</div>

<%-- 						<form:input type="hidden" path="cart.totalprice" value="0" /> --%>

						<input type="submit" value="Submit">
					
				</div>
				</form:form>
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
</script> -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a> 
<!-- //smooth scrolling -->
 <!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script> 
<!-- //for bootstrap working --> 
<script type='text/javascript' src="${js}/jquery.mycart.js"></script> 
<!-- <script type="text/javascript"> 
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
</script> -->
<%@ include file="shared/footer.jsp" %>
</body>
</html>