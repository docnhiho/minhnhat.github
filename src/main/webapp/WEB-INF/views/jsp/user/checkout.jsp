<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

	<%@include file="head.jsp"%>

	<!-- SECTION-NAV -->
	<div id="section-nav-wrap">
		<section id="section-nav">
			<p><a href="index.htm">Trang chủ</a> / Thanh toán</p>
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

				<h3 class="title"> Tổng tiền giỏ hàng </h3>
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
			</aside>
			<!-- /SHOP SIDEBAR -->

			<!-- SHOP PRODUCTS -->
			<div class="shop-products">
				<h3 class="title">Hóa đơn thanh toán</h3>
				<!-- PROFILE INFO -->
				<div class="profile-info">
				
									
					<!-- PROFILE HEADER -->
					<h5 class="profile-header">
						<span> 01 </span> Xem lại giỏ hàng 
						<!-- SVG PLUS -->
						<svg class="plus">
							<rect class="vertical" x="4" width="4" height="12"/>
							<rect y="4" width="12" height="4"/>
						</svg>
						<!-- /SVG PLUS -->
					</h5>
					<!-- /PROFILE HEADER -->
					
					<!-- PROFILE DATA -->
					<div class="profile-data full">
		
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
									<h3> ${map.value.sanpham.tensanpham}</h3>
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
										<a href="#" title="Lưu chỉnh sửa" onclick="update($('#quantity_${map.key}').text(), ${map.key})" class="button medium compare"">
											<!-- SVG UPDATE -->
											<svg class="svg-compare">
												<use xlink:href="#svg-check"></use>	
											</svg>
											<!-- /SVG UPDATE -->
										</a>
		
										<a href="cart/remove/${map.key}.htm?path=3" title="Xóa sản phẩm" class="button medium no-stock">
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
					<!-- /PROFILE DATA -->
					
					<!-- PROFILE HEADER -->
					<h5 class="profile-header">
						<span> 02 </span> Thông tin khách hàng
						<!-- SVG PLUS -->
						<svg class="plus">
							<rect class="vertical" x="4" width="4" height="12"/>
							<rect y="4" width="12" height="4"/>
						</svg>
						<!-- /SVG PLUS -->
					</h5>
					<!-- /PROFILE HEADER -->
					
					<!-- PROFILE DATA -->
					<div class="profile-data">
						<div class="featured-form">
							<form action="checkout/save.htm" method="post" class="westeros-form" id="checkout-form">
								<div>
									<label title="Đây là thông tin bắt buộc bạn phải nhập" class="rl-label required"> Họ và tên </label>
									<input type="text" id="oName" name="oName"placeholder="Vui lòng nhập họ và tên của bạn ở đây" required/>
									<small> Lỗi </small>
								</div>
								<div>
									<label title="Đây là thông tin bắt buộc bạn phải nhập" class="rl-label required"> Địa chỉ email của bạn </label>
									<input type="text" id="oEmail" name="oEmail" placeholder="Vui lòng nhập email của bạn ở đây" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required/>
									<small> Lỗi </small>
								</div>
								<div>
									<label title="Đây là thông tin bắt buộc bạn phải nhập" class="rl-label required"> Số điện thoại của bạn </label>
									<input type="text" id="oPhone" name="oPhone" placeholder="Vui lòng nhập số điện thoại của bạn ở đây" pattern="[0-9]{10}" required/>
									<small> Lỗi </small>
								</div>
								<div class="full-input">
									<label title="Đây là thông tin bắt buộc bạn phải nhập" class="rl-label required"> Địa chỉ nhận hàng </label>
									<textarea id="oAddress" name="oAddress" placeholder="Vui lòng nhập địa chỉ bạn muốn chúng tôi giao" required></textarea>
									<small> Lỗi </small>
								</div>
								<div class="full-input"></div>
							</form>
						</div>
					</div>
					<!-- /PROFILE DATA -->

				</div>
				<!-- /PROFILE INFO -->

				<button form="checkout-form" class="button checkout-button"> Đặt hàng ngay! </button>
			</div>
			<!-- /SHOP PRODUCTS -->
			<div class="clearfix"></div>
		</section>
	</div>
	<!-- /SHOP -->
	</c:if>
	
	<%@include file="layout.jsp"%>