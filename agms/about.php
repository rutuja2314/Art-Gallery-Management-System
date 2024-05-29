<?php
session_start();
error_reporting(0);

include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Art Gallery Management System | About Us Page</title>
    
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;500;600;700&display=swap" rel="stylesheet">
   </head>
<body>
      <!--headder-->
    <?php include_once('includes/header.php');?>
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.html">Home</a>
                  <span>/ /</span>
               </li>
               <li>About</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--About -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3"><?php  echo $row['PageTitle'];?></h3>
            <div class="about-innergrid-agile text-center">
               <h4>Welcome To Our Gallery</h4>
               <p class="mb-3"> <?php  echo $row['PageDescription'];?>
               </p><br><?php } ?>
               <div class=" img-toy-w3l-top">
               </div>
            </div>
            <div class="about-sub-inner text-center mt-lg-4 mt-3">
               <h4>Art Gallery
               </h4>
               <div class="row">
                  <div class="col-lg-4 col-md-4 abut-gride">
                     <span class="fas fa-truck"></span>
                     <h5>Shipping</h5>
                     <p class="mt-3"> Explore our shipping options to ensure your artwork arrives safely and promptly. From local deliveries to international shipments, we offer reliable services tailored to your needs. Rest assured, your precious pieces will be handled with care every step of the way.
                     </p>
                  </div>
                  <div class="col-lg-4 col-md-4 abut-gride">
                     <span class="fas fa-phone-volume"></span>  
                     <h5>Support</h5>
                     <p class="mt-3"> For assistance, please contact our dedicated support team via email at support@gallery.com or by phone at 91+ 1234567890. Our team is available during gallery opening hours to assist with any inquiries regarding exhibitions, ticketing, or general information about our featured artists.
                     </p>
                  </div>
                  <div class="col-lg-4 col-md-4 abut-gride">
                     <span class="fas fa-undo"></span>
                     <h5> Return</h5>
                     <p class="mt-3"> Experience the joy of hassle-free returns with our art gallery's flexible policy. If you're not completely satisfied with your purchase, simply return it within 30 days for a full refund or exchange. Your satisfaction is our top priority.
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//about -->

   <!--<?php include_once('includes/footer.php');?>-->
      <!-- //Modal 1-->
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <!-- cart-js -->
      <script src="js/minicart.js"></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!-- //cart-js -->
      <!-- start-smoth-scrolling -->
      <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         
         
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working-->      <!-- //OnScroll-Number-Increase-JavaScript -->
   </body>
</html>