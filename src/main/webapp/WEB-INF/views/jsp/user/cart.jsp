<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

	<%@include file="head.jsp"%>

	<!-- SECTION-NAV -->
	<div id="section-nav-wrap">
		<section id="section-nav">
			<p> <a href="index.htm"> Trang chủ </a> / <a href="#" class="highlighted"> Giỏ hàng </a></p>
		</section>
	</div>
	<!-- /SECTION-NAV -->
	
	<c:if test="${sessionScope.myCartTotal == 0}">
	<!-- 404 ERROR -->
	<div id="error404-wrap">
		<section id="error404">
			<div class="error-description">
				<h3> Giỏ hàng của bạn còn trống </h3>
				<a href="index.htm" class="button"> Quay lại mua hàng </a>
			</div>
			
			<!-- ERROR PROMO -->
			<div class="error-promo">
				<div class="error-pin">
					<h4>OOpss!</h4>
				</div>
				<img src="resources/user/images/smoke.png" alt="smoke">
			</div>
			<!-- /ERROR PROMO -->
		</section>
	</div>
	<!-- /404 ERROR -->
	</c:if>

	<c:if test="${sessionScope.myCartTotal > 0}">
	<!-- SHOP -->
	<div id="shop-wrap">
		<section id="shop" class="right">
			<!-- SIDEBAR CONTROL -->
			<div class="sidebar-control"></div>
			<!-- /SIDEBAR CONTROL -->

			<!-- SHOP SIDEBAR -->
			<aside class="shop-sidebar checkout-cart">
				<!-- SIDEBAR CONTROL -->
				<svg class="svg-plus sidebar-control">
					<use xlink:href="#svg-plus"></use>
				</svg>
				<!-- /SIDEBAR CONTROL -->
							
				<h3 class="title"> Tổng tiền</h3>
				<!-- CART TOTAL -->
				<div class="cart-total">
					<!-- TOTAL -->
					<div class="total">
						<h5> Tổng tiền </h5>
						<h5> <fmt:formatNumber maxFractionDigits="0" value="${sessionScope.myCartTotal}"/> &#8363 </h5>
					</div>
					<!-- /TOTAL -->
				</div>
				<!-- /CART TOTAL -->

				<a href="checkout.htm" class="button"> Đặt hàng </a>
			</aside>
			<!-- /SHOP SIDEBAR -->

			<!-- SHOP PRODUCTS -->
			<div class="shop-products shop-cart">
				<h3 class="title"> Giỏ hàng</h3>

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

				<!-- SHOPPING CART -->
				<div class="shopping-cart wishlist-cart">
					<!-- ROW -->
					<div class="row header">
						<!-- CELL -->
						<div class="cell">
							<h5> Sản phẩm </h5>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">
							<h5> Giá tiền </h5>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">
							<h5> Số lượng </h5>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">
							<h5> Tổng tiền </h5>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">				
						</div>
						<!-- /CELL -->
					</div>
					<!-- /ROW -->

					<c:forEach var="map" items="${sessionScope.myCartItems}">
					<!-- ROW -->
					<div class="row">
						<!-- CELL -->
						<div class="cell cart-item">
							<div class="product-picture">
								<figure class="liquid">
									<img src="resources/image/<c:out value="${map.value.sanpham.image}"/>" alt="product-picture">
								</figure>
							</div>
							<h3> ${map.value.sanpham.tensanpham} </h3>
							<p> ${map.value.sanpham.mota} </p>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">
							<p class="highlighted"> <fmt:formatNumber maxFractionDigits="0" value="${map.value.sanpham.gia}"/> &#8363 </p>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">
							<!-- COUNTER -->
							<div class="counter">
								<div class="control left"></div>
								<div class="value">
									<h5 id="quantity_${map.key}"> ${map.value.quantity} </h5>
								</div>
								<div class="control right"></div>
							</div>
							<!-- /COUNTER -->
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell">
							<p class="highlighted"> <fmt:formatNumber maxFractionDigits="0" value="${map.value.sanpham.gia * map.value.quantity}"/> &#8363 </p>
						</div>
						<!-- /CELL -->

						<!-- CELL -->
						<div class="cell buttons small">
							<!-- ACTIONS -->
							<div class="actions">
								<a href="#" title="Lưu chỉnh sửa" onclick="update($('#quantity_${map.key}').text(), ${map.key})" class="button medium compare">
									<!-- SVG UPDATE -->
									<svg class="svg-compare">
										<use xlink:href="#svg-check"></use>	
									</svg>
									<!-- /SVG UPDATE -->
								</a>

								<a href="cart/remove/${map.key}.htm?path=2" title="Xóa sản phẩm" class="button medium no-stock">
									<!-- SVG PLUS -->
									<svg class="svg-plus">
										<use xlink:href="#svg-plus"></use>
									</svg>
									<!-- /SVG PLUS -->
								</a>
							</div>
							<!-- /ACTIONS -->
						</div>
						<!-- /CELL -->
					</div>
					<!-- /ROW -->
					</c:forEach>
					
				</div>
				<!-- /SHOPPING CART -->
			</div>
			<!-- /SHOP PRODUCTS -->
		</section>
	</div>
	<!-- /SHOP -->
	</c:if>
	
	<%@include file="layout.jsp"%>