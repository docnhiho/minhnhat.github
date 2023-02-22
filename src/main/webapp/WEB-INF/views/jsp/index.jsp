<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Mushtaq</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->

<!-- all css here -->
<link rel="stylesheet"
	href="resources/mira/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/mira/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="resources/mira/assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet"
	href="resources/mira/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/mira/assets/css/meanmenu.css">
<link rel="stylesheet"
	href="resources/mira/assets/css/shortcodes/shortcode.css">
<link rel="stylesheet" href="resources/mira/assets/css/style.css">
<link rel="stylesheet" href="resources/mira/assets/css/responsive.css">
<script src="resources/mira/assets/js/vendor/modernizr-2.8.3.min.js"></script>



</head>
<body>
    <c:url value="/sanpham-details/" var="urlDetails"/>


	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Add your site or application content here -->
	<div class="waraper">
		<header>
			<div class="header-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-xs-4">
							<div class="logo">
								<a href="<c:url value="/"/>"><img
									src="resources/mira/assets/img/logo/mush.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-6 col-sm-4  col-xs-2 text-center">
							<div class="main-menu display-inline">
								<nav>
									<ul class="menu">
										<li><a href="<c:url value="/"/>">HOME </a></li>
										<li><a href="${pageContext.request.contextPath }/shoppingcart/cart">CART </a></li>
										<li><a href="<c:url value="/about-us"/>">ABOUT US</a></li>
										<li><a href="<c:url value="/blog"/>">BLOG </a>
								                </li>
									</ul>
								</nav>
							</div>
						</div>
						 <div class="col-md-3 col-lg-3 col-xs-6 col-sm-6 text-right text-sm text-res">
                                <div class="cart-user-language">
                                    <div class="shopping-cart ml-30">
                                        <a class="top-cart" href="${pageContext.request.contextPath }/shoppingcart/cart"><i class="pe-7s-cart"></i></a>
                                        <ul>
                                            <li>
                                             <c:forEach var="it" items="${sessionScope.cart}">
                                             <c:set var="s" value="${s + it.sanpham.gia * it.quantity }"></c:set>
                                                <div class="cart-img">
                                                   <span> <a href="#"><img src="<%=request.getContextPath()%>/resources/images/${it.sanpham.image}" width="50" class="img-responsive" alt=""></a></span>
                                                </div>
                                                <div class="cart-content">
                                                    <span><b><a href="#"><c:out value="${it.sanpham.tensanpham}"/> x<c:out value="${it.quantity}"/>  </a></b></span>
                                                    <span class="cart-price"> <fmt:formatNumber value="${it.sanpham.gia}" /> VND </span>
                                                </div>
                                                <div class="cart-del"><a href="${pageContext.request.contextPath }/shoppingcart/delete/${it.sanpham.id }">
                                                    <i class="pe-7s-close-circle"></i></a>
                                                </div>
                                                </c:forEach>
                                            </li>
                                         
                                            <li>                                                
                                                <hr class="shipping-border" />
                                                <div class="shipping">
                                                    <span class="f-left"> Total </span>
                                                    <span class="f-right cart-price"><fmt:formatNumber value="${s}"/> VND</span> 
                                                </div>
                                            </li>
                                            <li class="checkout m-0"><a href="${pageContext.request.contextPath }/shoppingcart/receipt">Đặt Hàng <i class="pe-7s-angle-right"></i></a></li>
                                        </ul>							
                                    </div>                                                                  
                                </div>
                            </div>
					</div>
					<div class="mobile-menu"></div>
				</div>
			</div>
		</header>
		<!-- header end -->
		<!-- slider start -->
		<div class="slider-area text-center">
			<div class="container-fluid">
				<div class="slider-active">
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg-2.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg-3.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg-4.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg-5.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg-6.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
					<div class="single-slider slider-opacity ptb-250"
						style="background-image: url(resources/mira/assets/img/bg/bg-7.jpg)">
						<div class="slider-text">
							<h2>Mushtaq Shop</h2>
							<h3>WE MAKE CLOTHES YOU MAKE FASHION</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider end -->
		
		<!-- shop area start -->
		<c:url value="/add" var="urlDetails"/>
		
		<div class="shop-area pt-100 pb-70">
			<div class="container-fluid">
				<div class="shop-title-text text-center">
					<h2>awesome collection 2020</h2>
					<p>WE MAKE CLOTHES YOU MAKE FASHION</p>
				</div>
				<div class="shop-style-all mt-50">
					<div class="row">
						<div class="grid">
								<c:forEach var="sanpham" items="${listSanpham}">
									<div class="col-md-3 col-sm-6 col-xs-12 grid-item cat1">
										<div class="shop hover-style mb-30">

											<div class="shop-img">
												<div class="shop-single-img">
													<a href="#"> <img
														src="resources/images/${sanpham.image}" alt="" />
													</a>
													<div class="shop-title title-style-1">
														<h3>
															<a>${sanpham.tensanpham}</a>
														</h3>
														<span class="new-price"><fmt:formatNumber value="${sanpham.gia}" /><th>VND</th>
														</span> 

													</div>
													<div class="product-cart">
														<a href="${pageContext.request.contextPath}/shoppingcart/ordernow/${sanpham.id}"><i class="pe-7s-cart"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
					</div>
				</div>
			</div>
		</div>
		<!-- shop area end -->
		
		<!-- banner area start -->
		<div class="banner-area pb-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-4">
						<div class="single-banner">
							<a href="#"><img src="resources/mira/assets/img/banner/ban1.jpeg"
								alt=""></a>
							<div class="single-banner-title">
								<h3>woman fashion</h3>
								<a href="#">shop now</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="single-banner">
							<a href="#"><img src="resources/mira/assets/img/banner/ban2.jpeg"
								alt=""></a>
							<div class="single-banner-title">
								<h3>trendy fashion</h3>
								<a href="#">shop now</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="single-banner">
							<a href="#"><img src="resources/mira/assets/img/banner/ban3.jpeg"
								alt=""></a>
							<div class="single-banner-title">
								<h3>mordern fashion</h3>
								<a href="#">shop now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- banner area end -->
		<!-- blog area start -->
		<div class="blog-area pb-70">
			<div class="container-fluid">
				<div class="section-title text-center mb-50">
					<h3>Latest News</h3>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit
						esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
						occaecat cupidatat non proident.</p>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="single-blog mb-30">
							<a href="blog-details.html"> <img
								src="resources/mira/assets/img/blog/id1.jpg" alt="">
							</a>
							<div class="blog-title">
								<span>December 8, 2017</span>
								<h3>
									<a href="blog-details.html">Lorem Ipsum is simply dummy</a>
								</h3>
								<a href="blog-details.html">read more</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="single-blog mb-30">
							<a href="blog-details.html"> <img
								src="resources/mira/assets/img/blog/id2.jpg" alt="">
							</a>
							<div class="blog-title">
								<span>December 8, 2017</span>
								<h3>
									<a href="blog-details.html">Lorem Ipsum is simply dummy</a>
								</h3>
								<a href="blog-details.html">read more</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="single-blog mb-30">
							<a href="blog-details.html"> <img
								src="resources/mira/assets/img/blog/id3.jpg" alt="">
							</a>
							<div class="blog-title">
								<span>December 8, 2017</span>
								<h3>
									<a href="blog-details.html">Lorem Ipsum is simply dummy</a>
								</h3>
								<a href="blog-details.html">read more</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="single-blog mb-30">
							<a href="blog-details.html"> <img
								src="resources/mira/assets/img/blog/id4.jpg" alt="">
							</a>
							<div class="blog-title">
								<span>December 8, 2017</span>
								<h3>
									<a href="blog-details.html">Lorem Ipsum is simply dummy</a>
								</h3>
								<a href="blog-details.html">read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- blog area end -->
		<!-- footer area end -->
		<footer class="footer-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2 col-sm-5">
						<div class="footer-logo">
							<a href="#"><img src="resource/mira/assets/img/logo/logo.png"
								alt=""></a>
							<p>Lorem ipsum dolor sit amet tempor, consectetur
								adipisicing.</p>
							<ul>
								<li><a
									href="https://www.facebook.com/devitems/?ref=bookmarks"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/devitemsllc"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="https://www.google.com/"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a href="https://www.linkedin.com/"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a href="https://www.instagram.com/devitems/"><i
										class="fa fa-instagram"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-7 col-sm-7">
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="footer-title res-mrg">
									<h3>categories</h3>
									<div class="footer-menu">
										<ul>
											<li><a href="shop.html"> Clothing</a></li>
											<li><a href="shop.html"> Shoes</a></li>
											<li><a href="shop.html">Watches</a></li>
											<li><a href="shop.html">Jewelry</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="footer-title res-mrg">
									<h3>Support</h3>
									<div class="footer-menu">
										<ul>
											<li><a href="#">Careers</a></li>
											<li><a href="#">Sale products</a></li>
											<li><a href="#">Terms & Condition</a></li>
											<li><a href="#">Delivery Inforamtion</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 hidden-sm">
								<div class="footer-title res-mrg">
									<h3>Quick Links</h3>
									<div class="footer-menu">
										<ul>
											<li><a href="login.html">Login</a></li>
											<li><a href="wishlist.html">Wishlist</a></li>
											<li><a href="cart.html">My Cart</a></li>
											<li><a href="checkout.html">Checkout</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12">
						<div class="footer-title res-mrg-2">
							<h3>newsletter</h3>
							<div class="footer-newsletter">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et.</p>
								<div id="mc_embed_signup" class="subscribe-form">
									<form
										action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
										method="post" id="mc-embedded-subscribe-form"
										name="mc-embedded-subscribe-form" class="validate"
										target="_blank" novalidate>
										<div id="mc_embed_signup_scroll" class="mc-form">
											<input type="email" value="" name="EMAIL" class="email"
												placeholder="Your email address" required>
											<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
											<div class="mc-news" aria-hidden="true">
												<input type="text"
													name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1"
													value="">
											</div>
											<div class="clear">
												<input type="submit" value="Subscribe" name="subscribe"
													id="mc-embedded-subscribe" class="button">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="footer-bottom text-center ptb-20">
					<p>
						© 2017 <a href="https://devitems.com/" target="_blank">DevItems</a>
						. All Rights Reserved.
					</p>
				</div>
			</div>
		</footer>
		<!-- Modal -->
		<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">x</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="modal-img">
							<a href="shop.html"><img
								src="resources/mira/assets/img/shop/7.jpg" alt="" /></a>
						</div>
						<div class="modal-pro-content">
							<h3>
								<a href="single-product.html">Phasellus Vel Hendrerit</a>
							</h3>
							<div class="pro-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>
							</div>
							<span>(2 customer reviews)</span>
							<div class="price">
								<span>$70.00</span> <span class="old">$80.11</span>
							</div>
							<p>Pellentesque habitant morbi tristique senectus et netus et
								malesuada fames ac turpis egestas. Vestibulum tortor quam,
								feugiat vitae, ultricies eget, tempor sit amet.</p>
							<form action="#">
								<input type="number" value="1" />
								<button>Add to cart</button>
							</form>
							<div class="product_meta">
								<span class="posted_in">Categories: <a rel="tag" href="#">Albums</a>,
									<a rel="tag" href="#">Music</a></span> <span class="tagged_as">Tags:
									<a rel="tag" href="#">Albums</a>, <a rel="tag" href="#">Music</a>
								</span>
							</div>
							<div class="social">
								<a href="https://www.facebook.com/devitems/?ref=bookmarks"><i
									class="fa fa-facebook"></i></a> <a
									href="https://twitter.com/devitemsllc"><i
									class="fa fa-twitter"></i></a> <a href="https://www.google.com/"><i
									class="fa fa-google-plus"></i></a> <a
									href="https://www.instagram.com/"><i
									class="fa fa-instagram"></i></a> <a
									href="https://www.pinterest.com/devitemsllc/"><i
									class="fa fa-pinterest"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal end -->
		<!-- loginModal -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">x</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="login">
							<div class="login-form-container">
								<div class="login-text">
									<h2>login</h2>
									<span>Please login using account detail bellow.</span>
								</div>
								<div class="login-form">
									<form action="#" method="post">
										<input type="text" name="user-name" placeholder="Username">
										<input type="password" name="user-password"
											placeholder="Password">
										<div class="button-box">
											<div class="login-toggle-btn">
												<input type="checkbox" id="remember"> <label
													for="remember">Remember me</label> <a href="#">Forgot
													Password?</a>
											</div>
											<button type="submit" class="default-btn floatright">Login</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- loginModal end -->
	</div>





	<!-- all js here -->
	<script src="resources/mira/assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="resources/mira/assets/js/bootstrap.min.js"></script>
	<script src="resources/mira/assets/js/jquery.counterup.min.js"></script>
	<script src="resources/mira/assets/js/jquery.meanmenu.js"></script>
	<script src="resources/mira/assets/js/owl.carousel.min.js"></script>
	<script src="resources/mira/assets/js/isotope.pkgd.min.js"></script>
	<script src="resources/mira/assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="resources/mira/assets/js/waypoints.min.js"></script>
	<script src="resources/mira/assets/js/ajax-mail.js"></script>
	<script src="resources/mira/assets/js/plugins.js"></script>
	<script src="resources/mira/assets/js/main.js"></script>


</body>
</html>