<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!doctype html>
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
	href="<c:url value="/resources/mira/assets/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/owl.carousel.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/pe-icon-7-stroke.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/font-awesome.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/meanmenu.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/shortcodes/shortcode.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/style.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/mira/assets/css/responsive.css"></c:url>">
<script
	src="<c:url value="/resources/mira/assets/js/vendor/modernizr-2.8.3.min.js" />"></script>
</head>
<body>

	<%-- <c:url value="/checkout" var="saveSanpham" />  --%>

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
                                            <li class="checkout m-0"><a href="${pageContext.request.contextPath }/shoppingcart/receipt">checkout <i class="pe-7s-angle-right"></i></a></li>
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
		<!-- breadcrumb start -->
		<div class="breadcrumb-area">
			<div class="container-fluid text-center">
				<div class="breadcrumb-stye gray-bg ptb-100">
					<h2 class="page-title">cart page</h2>
					<ul>
						<li><a href="#">home</a></li>
						<li class="active">cart</li>
					</ul>
				</div>
			</div>
		</div>
		<br />
		<div class="container-fluid">
		<div class="container">
		<div class="header">
				<div class="row">

				<div class="header-s">
						<p>Sản phẩm đã được đặt thành công !</p>
						<p>Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi .</p>
				</div>

					<div class="header-s">
						<img
							src="<c:url value="https://cachbothuocla.vn/wp-content/uploads/2019/03/tick-xanh.png"/>"
							height="80px" />
					</div>

				</div>
			</div>
			</div>
		
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<!-- contact-area start -->



	<!-- contact-area end -->



	<!-- shopping-cart-area end -->
	<footer class="footer-area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 col-sm-5">
					<div class="footer-logo">
						<a href="#"><img src="resources/mira/assets/img/logo/logo.png"
							alt=""></a>
						<p>Lorem ipsum dolor sit amet tempor, consectetur adipisicing.</p>
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
					© 2017 <a href="https://freethemescloud.com/" target="_blank">Free
						themes Cloud</a> . All Rights Reserved.
				</p>
			</div>
		</div>
	</footer>
	<!-- Modal -->
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
								<form action="#">
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
	<!-- Modal end -->
	</div>










	<!-- all js here -->
	<script
		src="<c:url value="/resources/mira/assets/js/vendor/jquery-1.12.0.min.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/jquery.meanmenu.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/isotope.pkgd.min.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/imagesloaded.pkgd.min.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/jquery.counterup.min.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/waypoints.min.js"/>"></script>
	<script src="<c:url value="/resources/mira/assets/js/ajax-mail.js"/>"></script>
	<script
		src="<c:url value="/resources/mira/assets/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/mira/assets/js/plugins.js"/>"></script>
	<script src="<c:url value="/resources/mira/assets/js/main.js"/>"></script>
</body>
</html>
