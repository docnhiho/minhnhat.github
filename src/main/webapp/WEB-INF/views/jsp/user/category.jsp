<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

	<%@include file="head.jsp"%>

	<!-- SECTION-NAV -->
	<div id="section-nav-wrap">
		<section id="section-nav">
			<p><a href="index.htm">Trang chủ</a> /  ${loai.tenloaisp} </p>
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
					<img src="resources/user/images/banners/banner4.jpg" alt="advertising">
				</figure>
			</aside>
			<!-- /SHOP SIDEBAR -->

			<!-- SHOP PRODUCTS -->
			<div class="shop-products">
				<h3 class="title"> ${loai.tenloaisp} </h3>				
				<!-- FILTERS -->
				<div class="filters">					
					<div class="options">
						<!-- VIEW DISPLAY -->
						<ul class="display">
							<li class="grid">
								<!-- SVG GRID -->
								<svg class="svg-grid">
									<use xlink:href="#svg-grid"></use>
								</svg>
								<!-- /SVG GRID -->
							</li>
							<li class="list selected">
								<!-- SVG LIST -->
								<svg class="svg-list">
									<use xlink:href="#svg-list"></use>
								</svg>
								<!-- /SVG LIST -->
							</li>
						</ul>
						<!-- /VIEW DISPLAY -->
					</div>
				</div>
				<!-- /FILTERS -->

				<!-- PRODUCT LIST -->
				<ul class="product-list list">
					<c:forEach var="productCate" items="${productCate}">
						<!-- PRODUCT -->
						<li class="list-item">
							<!-- ACTIONS -->
							<div class="actions">
								<figure class="liquid">
									<img src="resources/image/${productCate.image}" alt="product1">
								</figure>
								<div>
									<a href="#qv-p1${productCate.id}" class="button quick-view" data-effect="mfp-3d-unfold">
										<!-- SVG QUICKVIEW -->
										<svg class="svg-quickview">
											<use xlink:href="#svg-quickview"></use>
										</svg>
										<!-- /SVG QUICKVIEW -->
									</a>
									<!-- QUICK VIEW POPUP -->
									<div id="qv-p1${productCate.id}" class="product-quick-view mfp-with-anim mfp-hide">
										<!-- PRODUCT PICTURES -->
										<div class="product-pictures">
											<div class="product-photo">
												<figure class="liquid">
													<img src="resources/image/${productCate.image}" alt="product-image">
												</figure>
											</div>
											<ul class="picture-views">
												<!-- VIEW -->
												<li class="selected">
													<figure class="liquid">
														<img src="resources/image/${productCate.image}" alt="picture-view">
													</figure>
												</li>
												<!-- /VIEW -->
												
												<!-- VIEW -->
												<li>
													<figure class="liquid">
														<img src="resources/image/${productCate.image}" alt="picture-view">
													</figure>
												</li>
												<!-- /VIEW -->
											</ul>
										</div>
										<!-- /PRODUCT PICTURES -->
			
										<!-- PRODUCT DESCRIPTION -->
										<div class="product-description">
											<a href="productCate.htm?categories=${productCate.loaisanpham}&search=&x=26&y=25"><p class="highlighted category"> ${productCate.loaisp} </p></a>
											<a href="#"><h6>${productCate.tensanpham}</h6></a>
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
											<p> ${productCate.mota} </p>
											<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${productCate.gia}"/> &#8363 </p>
											<h5 class="stock">Trạng thái hàng:
												<!-- SVG CHECK -->
												<svg class="svg-check">
													<use xlink:href="#svg-check"></use>
												</svg>
												<!-- /SVG CHECK -->
												<span class="available">Còn hàng</span>
											</h5>
											<div>
												<h5>Số lượng:</h5>
												<!-- COUNTER -->
												<div class="counter">
													<div class="control left"></div>
													<div class="value">
														<h5 id="quantity_${productCate.id}">1</h5>
													</div>
													<div class="control right"></div>
												</div>
												<!-- /COUNTER -->
											</div>
											<div class="options">
												<a href="#" onclick="update($('#quantity_<c:out value="${productCate.id}"/>').text(), ${productCate.id})" class="button cart-add">
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
									<!-- /QUICK VIEW POPUP -->
									<a href="product.htm?id=${productCate.id}" class="button full-view">
										<!-- SVG FULLVIEW -->
										<svg class="svg-fullview">
											<use xlink:href="#svg-fullview"></use>	
										</svg>
										<!-- /SVG FULLVIEW -->
									</a>
								</div>
							</div>
							<!-- /ACTIONS -->
			
							<!-- DESCRIPTION -->
							<div class="description">
								<div class="clearfix">
									<a href="productCate.htm?categories=${productCate.loaisanpham}&search=&x=26&y=25"><p class="highlighted category"> ${productCate.loaisp} </p></a>
									<!-- RATING -->
									<ul class="rating">
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
								</div>
								<div class="clearfix">
									<a href="#"><h6>${productCate.tensanpham}</h6></a>
								</div>
								<div class="clearfix">
									<p></p>
									<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${productCate.gia}"/> &#8363 </p>
								</div>
			
								<!-- CART OPTIONS -->
								<div class="cart-options">
									<a href="cart/add/${productCate.id}.htm" class="button cart-add">
										<!-- SVG PLUS -->
										<svg class="svg-plus">
											<use xlink:href="#svg-plus"></use>
										</svg>
										<!-- /SVG PLUS -->
										Thêm vào giỏ
									</a>
								</div>
								<!-- /CART OPTIONS -->
							</div>
							<!-- /DESCRIPTION -->
						</li>
						<!-- /PRODUCT -->						
					</c:forEach>
					
				</ul>
				<!-- /PRODUCT LIST -->

				<!-- PAGER -->
				<ul class="pager">
					<li>
						<a href="#" class="button prev">
							<!-- SVG ARROW -->
							<svg class="svg-arrow">
								<use xlink:href="#svg-arrow"></use>
							</svg>
							<!-- /SVG ARROW -->
						</a>
					</li>
					<li class="selected"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">17</a></li>
					<li>
						<a href="#" class="button next">
							<!-- SVG ARROW -->
							<svg class="svg-arrow">
								<use xlink:href="#svg-arrow"></use>
							</svg>
							<!-- /SVG ARROW -->
						</a>
					</li>
				</ul>
				<!-- /PAGER -->
			</div>
			<!-- /SHOP PRODUCTS -->
			<div class="clearfix"></div>
		</section>
	</div>
	<!-- /SHOP -->
	
	<%@include file="layout.jsp"%>