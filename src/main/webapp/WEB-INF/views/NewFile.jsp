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
		<h3>Product Details</h3>
		<h4><a href="index">Home</a><label>/</label>Product Details</h4>
		<div class="clearfix"> </div>
	</div>
</div>


		<div class="single">
			<div class="container">
						<div class="single-top-main">
	   		<div class="col-md-5 single-top">
	   		<div class="single-w3agile">
							
<div id="picture-frame">
			<img src="images/si.jpg" data-src="images/si-1.jpg" alt="" class="img-responsive"/>
		</div>
										<script src="js/jquery.zoomtoo.js"></script>
								<script>
			$(function() {
				$("#picture-frame").zoomToo({
					magnify: 1
				});
			});
		</script>
		
		
		
	
			<div class="col-md-7 single-top-left ">
								<div class="single-right">
				<h3>${productObject.productname}</h3>
				<h4>${productObject.category_name}</h4>
				
					
				 
				<div class="block block-w3">
					<div class="starbox small ghosting"> </div>
				</div>
				<p class="price item_price">Rs.${productObject.productprice}</p>
								<div class="quick_desc">
									<p>
										<span>Quick Overview{{20+50}} : </span>
										${productObject.productdescription}
									</p>
				
			   	
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>
					
				 
			  <security:authorize access="hasRole('ROLE_USER')">

										<a ng-click="addToCart(${productObject.productid})"
											data-text="Add To Cart" class="my-cart-btn1"> </button>Add
											To Cart</a>
									</security:authorize>

									<c:url value="/productlist" var="url"></c:url>


									<a href="${url}" class="btn btn-default"> Continue shopping</a>
								</div>
							</div>
						</div>
			   
			<div class="clearfix"> </div>
			</div>
		 

			</div>
		   <div class="clearfix"> </div>
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
		<%@include file="shared/footer.jsp"%>
		<script src="${js}/jquery.zoomtoo.js"></script>
		<script src="${js}/cartcontroller.js"></script>
		<script src="${js}/app.js"></script>
</body>
</html>