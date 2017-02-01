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


<%@include file = "shared/header.jsp" %>

 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Contact</h3>
		<h4><a href="index">Home</a><label>/</label>Contact</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- contact -->
<div class="contact">
	<div class="container">
		<div class="spec ">
			<h3>Contact</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
		</div>
		<div class=" contact-w3">	
			<div class="col-md-5 contact-right">	
				<img src="${img}/cac.jpg" class="img-responsive" alt="">
				<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2482.432383990807!2d0.028213999961443994!3d51.52362882484525!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1423469959819" style="border:0"></iframe>
			</div>
			<div class="col-md-7 contact-left">
				<h4>Contact Information</h4>
				
				<ul class="contact-list">
					<li> <i class="fa fa-map-marker" aria-hidden="true"></i> M G Road, Fort ,Mumbai - 400001</li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com">shopgorgeous@gmail.com</a></li>
					<li> <i class="fa fa-phone" aria-hidden="true"></i>+91 1111116965</li>
				</ul>
				<div id="container">
					<!--Horizontal Tab-->
					<div id="parentHorizontalTab">
						<ul class="resp-tabs-list hor_1">
							<li><i class="fa fa-envelope" aria-hidden="true"></i></li>
							<li> <i class="fa fa-map-marker" aria-hidden="true"></i> </span></li>
							<li> <i class="fa fa-phone" aria-hidden="true"></i></li>
						</ul>
						<div class="resp-tabs-container hor_1">
							<div>
								<form action="#" method="post">
									<input type="text" value="Name" name="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
									<input type="email" value="Email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
									<textarea name="Message..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
									<input type="submit" value="Submit" >
								</form>
							</div>
							<div>
								<div class="map-grid">
								<h5>Our Branches</h5>
									<ul>
										<li><i class="fa fa-arrow-right" aria-hidden="true"></i>New York, USA.</li>
										<li><i class="fa fa-arrow-right" aria-hidden="true"></i>Beijing, PRC.</li>
										<li><i class="fa fa-arrow-right" aria-hidden="true"></i>Vancouver, Canada.</li>
										<li><i class="fa fa-arrow-right" aria-hidden="true"></i>London, UK.</li>
									</ul>
								</div>
							</div>
							<div>
								<div class="map-grid">
									<h5>Contact Me Through</h5>
									<ul>
										<li>Mobile No : +123 456 7890</li>
										<li>Office No : +123 222 2222</li>
										<li>Home No : +123 456 7890</li>
										<li>Fax No : +123 456 7890</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!--Plug-in Initialisation-->
				<script type="text/javascript">
				$(document).ready(function() {
					//Horizontal Tab
					$('#parentHorizontalTab').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion
						width: 'auto', //auto or any width like 600px
						fit: true, // 100% fit in a container
						tabidentify: 'hor_1', // The tab groups identifier
						activate: function(event) { // Callback function if tab is switched
							var $tab = $(this);
							var $info = $('#nested-tabInfo');
							var $name = $('span', $info);
							$name.text($tab.text());
							$info.show();
						}
					});

					// Child Tab
					$('#ChildVerticalTab_1').easyResponsiveTabs({
						type: 'vertical',
						width: 'auto',
						fit: true,
						tabidentify: 'ver_1', // The tab groups identifier
						activetab_bg: '#fff', // background color for active tabs in this group
						inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
						active_border_color: '#c1c1c1', // border color for active tabs heads in this group
						active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
					});

					//Vertical Tab
					$('#parentVerticalTab').easyResponsiveTabs({
						type: 'vertical', //Types: default, vertical, accordion
						width: 'auto', //auto or any width like 600px
						fit: true, // 100% fit in a container
						closed: 'accordion', // Start closed if in accordion view
						tabidentify: 'hor_1', // The tab groups identifier
						activate: function(event) { // Callback function if tab is switched
							var $tab = $(this);
							var $info = $('#nested-tabInfo2');
							var $name = $('span', $info);
							$name.text($tab.text());
							$info.show();
						}
					});
				});
			</script>
				
			</div>
			
		<div class="clearfix"></div>
	</div>
	</div>
</div>
<!-- //contact -->

<!-- //footer-->
<!-- tabs -->
script src="${js}/easyResponsiveTabs.js" type="text/javascript"></script> 
<script type="text/javascript"> 
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
		type: 'default', //Types: default, vertical, accordion           
		width: 'auto', //auto or any width like 600px
 			fit: true   // 100% fit in a container
 			});
		});				
</script> 
<!-- //tabs --> 
<!-- smooth scrolling --> 
<script type="text/javascript"> 
	$(document).ready(function() {

			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
							
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
</script> 
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a> 
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>
<!-- //for bootstrap working --> 
<script type='text/javascript' src="${js}/jquery.mycart.js"></script> 
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
 </script> 
<%@include file = "shared/footer.jsp" %>  
</body>
</html>