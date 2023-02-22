<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

	<%@include file="head.jsp"%>

	<!-- SECTION-NAV -->
	<div id="section-nav-wrap">
		<section id="section-nav">
			<p><a href="index.htm">Trang chủ</a> / <a href="productCate.htm?categories=${product.loaisanpham}&search=&x=26&y=25"> ${product.loaisp} </a> / ${product.tensanpham}</p>
		</section>
	</div>
	<!-- /SECTION-NAV -->

	<!-- SHOP -->
	<div id="shop-wrap">
		<section id="shop" class="right expandible-sidebar">
			<!-- SIDEBAR CONTROL -->
			<div class="sidebar-control">
				<!-- SVG GEAR -->
				<svg class="svg-gear">
					<use xlink:href="#svg-gear"></use>	
				</svg>
				<!-- /SVG GEAR -->
			</div>
			<!-- /SIDEBAR CONTROL -->

			<!-- SHOP SIDEBAR -->
			<aside class="shop-sidebar">
				<!-- SIDEBAR CONTROL -->
				<svg class="svg-plus sidebar-control">
					<use xlink:href="#svg-plus"></use>
				</svg>
				<!-- /SIDEBAR CONTROL -->

				<figure>
					<img src="resources/user/images/banners/banner6.jpg" alt="advertising">
				</figure>
			</aside>
			<!-- /SHOP SIDEBAR -->

			<!-- SHOP PRODUCTS -->
			<div class="shop-products">
				<!-- COMPARE MODAL -->
				<div id="compare-modal" class="compare-modal mfp-with-anim mfp-hide">
					<img src="resources/user/images/icons/compare-modal-logo.png" alt="logo">
					<h5>Hãy chọn <span> sản phẩm</span></h5>
					<h6>Bạn có thể so sánh 3 sản phẩm</h6>
					<div class="options">
						<a class="button medium mfp-close">Tiếp tục mua</a>
						<a href="compare.htm" class="button medium compare">Đến trang so sánh</a>
					</div>
				</div>
				<!-- /COMPARE MODAL -->

				<!-- FULL VIEW -->
				<div class="product-quick-view full view">
					<!-- PRODUCT PICTURES -->
					<div class="product-pictures">
						<div class="product-photo">
							<figure class="liquid">
								<img src="resources/image/${product.image}" alt="product-image">
							</figure>
						</div>
						<ul class="picture-views">
							<!-- VIEW -->
							<li class="selected">
								<figure class="liquid">
									<img src="resources/image/${product.image}" alt="picture-view">
								</figure>
							</li>
							<!-- /VIEW -->

							<!-- VIEW -->
							<li>
								<figure class="liquid">
									<img src="resources/image/${product.image}" alt="picture-view">
								</figure>
							</li>
							<!-- /VIEW -->
						</ul>
					</div>
					<!-- /PRODUCT PICTURES -->

					<!-- PRODUCT DESCRIPTION -->
					<div class="product-description">
						<a href="productCate?categories=${product.loaisanpham}&search=&x=17&y=24"><p class="highlighted category">${product.loaisp}</p></a>
						<a href="#"><h6>${product.tensanpham}</h6></a>
						<!-- RATING -->
						<ul class="rating big">
							<li class="filled">
								<!-- SVG STAR -->
								<svg class="svg-star">
									<use xlink:href="#svg-star"></use>
								</svg>
								<!-- /SVG STAR -->
							</li>
							<li class="filled">
								<!-- SVG STAR -->
								<svg class="svg-star">
									<use xlink:href="#svg-star"></use>
								</svg>
								<!-- /SVG STAR -->
							</li>
							<li class="filled">
								<!-- SVG STAR -->
								<svg class="svg-star">
									<use xlink:href="#svg-star"></use>
								</svg>
								<!-- /SVG STAR -->
							</li>
							<li class="filled">
								<!-- SVG STAR -->
								<svg class="svg-star">
									<use xlink:href="#svg-star"></use>
								</svg>
								<!-- /SVG STAR -->
							</li>
							<li>
								<!-- SVG STAR -->
								<svg class="svg-star">
									<use xlink:href="#svg-star"></use>
								</svg>
								<!-- /SVG STAR -->
							</li>
						</ul>
						<!-- /RATING -->
						<p>${product.mota}</p>
						<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${product.gia}"/> &#8363 </p>
						<h5 class="stock"> Trạng thái hàng:
							<!-- SVG CHECK -->
							<svg class="svg-check">
								<use xlink:href="#svg-check"></use>
							</svg>
							<!-- /SVG CHECK -->
							<span class="available"> Còn hàng</span>
						</h5>
						<div>
							<h5> Số lượng:</h5>
							<!-- COUNTER -->
							<div class="counter">
								<div class="control left"></div>
								<div class="value">
									<h5 id="quantity_${product.id}">2</h5>
								</div>
								<div class="control right"></div>
							</div>
							<!-- /COUNTER -->
						</div>
						<div class="options">
							<a href="#" onclick="update($('#quantity_${product.id}').text(), ${product.id})" class="button cart-add">
								<!-- SVG PLUS -->
								<svg class="svg-plus">
									<use xlink:href="#svg-plus"></use>
								</svg>
								<!-- /SVG PLUS -->
								Thêm vào giỏ
							</a>
						</div>
					</div>
					<!-- /PRODUCT DESCRIPTION -->
				</div>
				<!-- /FULL VIEW -->

				<!-- DESCRIPTION TAB -->
				<ul class="description-tab" style="height: 357px;">
					<li class="selected">			
						<a href="#"> Mô tả chi tiết</a>
						<article class="item" style="display: block;">
							<p> ${product.mota} </p>
						</article>
					</li>
				</ul>
				<!-- /DESCRIPTION TAB -->
				
			</div>
			<!-- /SHOP PRODUCTS -->
		</section>
	</div>
	<!-- /SHOP -->
	
	<%@include file="layout.jsp"%>