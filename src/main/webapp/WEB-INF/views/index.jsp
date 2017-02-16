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

<div data-vide-bg="${video}/video">
    <div class="container">
		<div class="banner-info">
			<h2>Come and re-discover yourself </h2>	
		
		</div>	
    </div>
</div>

    <script>window.jQuery || document.write('<script src="${js}/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="${js}/jquery.vide.min.js"></script>


<!--content-->
<div class="content-mid">
	<div class="container">
		
		<div class="col-md-4 m-w3ls">
			<div class="col-md1 ">
				<a href="<c:url value='/productlist'/>">
					<img src="${img}/co.jpg" class="img-responsive img" alt="">
					<div class="big-sa">
						
						
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4 m-w3ls1">
			<div class="col-md ">
				<a href="<c:url value='/productlist'/>">
					<img src="${img}/co1.jpg" class="img-responsive img" alt="">
					<div class="big-sale">
						<div class="big-sale1">
							
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4 m-w3ls">
			<div class="col-md2 ">
				<a href="<c:url value='/productlist'/>">
					<img src="${img}/co2.jpg" class="img-responsive img1" alt="">
					<div class="big-sale2">
							
					</div>
				</a>
			</div>

		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--content-->
  <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
         <a href="<c:url value='/productlist'/>"> <img class="first-slide" src="${img}/ba1.jpg" alt="First slide"></a>
       
        </div>
        <div class="item">
         <a href="<c:url value='/productlist'/>"> <img class="second-slide " src="${img}/ba2.jpg" alt="Second slide"></a>
         
        </div>
        <div class="item">
          <a href="<c:url value='/productlist'/>"><img class="third-slide " src="${img}/ba3.jpg" alt="Third slide"></a>
          
        </div>
        
        <div class="item">
          <a href="<c:url value='/productlist'/>"><img class="fourth-slide " src="${img}/ba4.png" alt="Third slide"></a>
          
        </div>
        
       
      </div>
    
    </div><!-- /.carousel -->


<!-- //footer-->

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working --> 
<script src="${js}/bootstrap.js"></script>

</body>
<%@ include file="shared/footer.jsp" %>
</html>
