<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="resources/user/css/vendor/owl.carousel.css?v=1">
	<link rel="stylesheet" type="text/css" href="resources/user/css/vendor/magnific-popup.css?v=1">
	<link rel="stylesheet" type="text/css" href="resources/user/css/vendor/jquery.range.css?v=1">
	<link rel="stylesheet" type="text/css" href="resources/user/css/style.css?v=1">
	<style type="text/css">
		
		.featured-form input[type="text"] {
			margin-bottom: 5px;
		}
		
		.profile-info .profile-data .westeros-form textarea {
			margin-bottom: 5px;
		}
		
		.featured-form small {
			visibility: hidden;
		    font-size: 16px;
		    margin-left: 10px;
		    font-weight: bold;
		    color: red;
		    font-family: sans-serif;
		}
		
		.featured-form small.error {
			visibility: visible;
		    font-size: 16px;
		    margin-left: 10px;
		    font-weight: bold;
		    color: red;
		    font-family: sans-serif;
		}
	
	</style>
	<!-- favicon -->
	<link rel="icon" href="favicon.ico">
	<title> Nhóm 6 </title>
</head>
<body>
	<!-- HEADER -->
	<header>
		<div id="header-top-wrap">
			<!-- HEADER TOP -->
			<section id="header-top" class="clearfix">
				<p class="contact">
					Có thắc mắc hãy liên hệ chúng tôi:
					<a href="mailto:nhom6@fpt.edu.vn">nhom6@fpt.edu.vn</a>
				</p>

				<p class="login">
					Chào mừng bạn, hãy
					<a href="login.htm">Đăng nhập</a>
				</p>
			</section>
			<!-- /HEADER TOP -->
		</div>
			
		<div id="header-bottom-wrap">
			<!-- HEADER BOTTOM -->
			<section id="header-bottom">
			
				<!-- LOGO -->
				<div class="logo-container">
					<a href="index.htm">
						<figure class="logo">
							<img src="resources/user/images/logo.png" alt="logo">
							<figcaption>Westeros</figcaption>
						</figure>
					</a>
				</div>
				<!-- /LOGO -->
				
				<form class="westeros-form" action="productCate.htm" method="GET">
					<label for="categories" class="select-block">
						<select name="categories" id="categories">
							<option value="0">Tất cả cá loại</option>
							
							<c:forEach var="dsLoai" items="${dsLoai}">
							<option value="${dsLoai.id}">${dsLoai.tenloaisp}</option>	
							</c:forEach>
						</select>
						<!-- SVG ARROW -->
						<svg class="svg-arrow select-arrow">
							<use xlink:href="#svg-arrow"></use>
						</svg>
						<!-- /SVG ARROW -->
					</label>
					<input type="text" name="search" id="search" placeholder="Nhập từ khóa tìm kiếm">
					<input type="image" src="resources/user/images/icons/search-icon.png" alt="search-icon">
				</form>

				<!-- WESTEROS DROPDOWN CONTAINER-->
				<div class="westeros-dropdown-container">
					<!-- CART CONTROL -->
					<div class="cart-control westeros-dropdown-control">
						<!-- SVG ORDER BOX -->
						<svg class="svg-order-box">
							<use xlink:href="#svg-order-box"></use>
						</svg>
						<!-- /SVG ORDER BOX -->

						<!-- SVG ARROW -->
						<svg class="svg-arrow select-arrow">
							<use xlink:href="#svg-arrow"></use>
						</svg>
						<!-- /SVG ARROW -->
						<h6>Giỏ hàng của bạn</h6>
						<p class="cart-content-short"> ( <c:out value="${sessionScope.myCartNum}"/> ) </p>
						<p class="cart-content-long"> <c:out value="${sessionScope.myCartNum}"/>  sản phẩm </p>
						
						<p class="highlighted" style="margin-left: 10px;"> <fmt:formatNumber maxFractionDigits="0" value="${sessionScope.myCartTotal}"/> &#8363 </p>
					</div>
					<!-- /CART CONTROL -->

					<!-- CART -->
					<ul class="cart westeros-dropdown">
					
						<c:forEach var="map" items="${sessionScope.myCartItems}">
						<!-- CART ITEM -->
						<li class="item clearfix">
							<div class="picture">
								<figure class="liquid">
									<img src="resources/image/<c:out value="${map.value.sanpham.image}"></c:out>" alt="product1"/>
								</figure>
							</div>
							<div class="description">
								<p class="highlighted category">${map.value.sanpham.tensanpham}</p>
								<h6> <c:out value="${map.value.sanpham.tensanpham}"/></h6>
							</div>
							<div class="quantity">
								<h6> <c:out value="${map.value.quantity}"/> </h6>
							</div>
							<div class="price">
								<p class="highlighted"> <fmt:formatNumber maxFractionDigits="0" value="${map.value.sanpham.gia * map.value.quantity}"/> &#8363 </p>
							</div>
							<a href="cart/remove/${map.value.sanpham.id}.htm?path=0">
								<img src="resources/user/images/items/remove.png" alt="remove"/>
							</a>
						</li>
						<!-- /CART ITEM -->
						</c:forEach>

						<!-- TOTAL -->
						<li class="total clearfix">
							<div>
								<p class="highlighted"><fmt:formatNumber maxFractionDigits="0"  value="${sessionScope.myCartTotal}"/> &#8363 </p>
							</div>
							<div>
								<h6>Tổng tiền</h6>
							</div>	
						</li>
						<!-- /TOTAL -->

						<!-- ORDER -->
						<li class="order clearfix">
							<a href="checkout.htm" class="button"> Đặt hàng </a>
							<a href="cart.htm" class="button secondary"> Đến giỏ hàng </a>
						</li>
						<!-- /ORDER -->
					</ul>
					<!-- /CART -->
				</div>
				<!-- /WESTEROS DROPDOWN CONTAINER -->
			</section>
			<!-- /HEADER BOTTOM -->
		</div>

		<!-- WESTEROS SEPARATOR -->
		<ul class="westeros-separator small">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<!-- /WESTEROS SEPARATOR -->
	</header>
	<!-- /HEADER -->

	<!-- MAIN MENU -->
	<nav id="main-menu">
		<img class="pull-nav" src="resources/user/images/icons/pull-icon.png" alt="pull-icon">
		<ul>
			<li><a href="index.htm">Trang chủ</a></li>			
			<li><a href="productCate?categories=1&search=&x=17&y=24">Laptop</a></li>
			<li><a href="productCate?categories=3&search=&x=17&y=24">Điện thoại</a></li>			
			<li><a href="productCate?categories=4&search=&x=17&y=24">Máy tính bảng</a></li>
			<li><a href="aboutme.htm">Về chúng tôi</a></li>
		</ul>
	</nav>
	<!-- /MAIN MENU -->