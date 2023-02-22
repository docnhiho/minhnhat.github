<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>

	<%@include file="head.jsp"%>

	<!-- BANNER -->
	<div id="banner-wrap">
		<section id="banner">
			<div class="main-promo">
				<h2>Chào mừng đến với <br><span>Thế giới điện tử</span></h2>
				<p>Chúng tôi luôn có rất nhiều sản phẩm cho mọi người chọn</p>
				<a href="productCate?categories=0&search=&x=17&y=24" class="button secondary">Xem thêm</a>
			</div>
			<div id="banner-monster">
				<div class="speech-bubble">
					<h4>Hi!</h4>
				</div>
				<div class="moustache-shadow"></div>
				<div class="moustache-monster">
					<img src="resources/user/images/moustache-monster.png" alt="monster">
				</div>
				<div id="stars">
					<div class="star small"></div>
					<div class="star medium"></div>
					<div class="star large"></div>
				</div>
			</div>
		</section>
	</div>
	<!-- /BANNER -->
	
	<!-- ADVERTISING -->
	<div id="advertising-wrap">
		<section id="advertising">
			<div class="ad-box clearfix">
				<a href="#">
					<img src="resources/user/images/banners/banner1.png" alt="banner1">
				</a>
				<a href="#">
					<img src="resources/user/images/banners/banner2.png" alt="banner2">
				</a>
			</div>	
			<a href="#">
				<img src="resources/user/images/banners/banner3.png" alt="banner3">
			</a>
		</section>
	</div>
	<!-- /ADVERTISING -->
	
	<!-- PRODUCT SHOWCASE -->
	<div class="product-showcase-wrap">
		<section class="product-showcase">
			<h3 class="title">Những sản phẩm mới nhập</h3>
			<!-- SLIDE CONTROLS -->
			<ul class="slide-controls">
				<!-- LEFT CONTROL -->
				<li>
					<a href="#" class="button prev">
						<!-- SVG ARROW -->
						<svg class="svg-arrow">
							<use xlink:href="#svg-arrow"></use>
						</svg>
						<!-- /SVG ARROW -->
					</a>
				</li>
				<!-- /LEFT CONTROL -->
	
				<!-- RIGHT CONTROL -->
				<li>
					<a href="#" class="button next">
						<!-- SVG ARROW -->
						<svg class="svg-arrow">
							<use xlink:href="#svg-arrow"></use>
						</svg>
						<!-- /SVG ARROW -->
					</a>
				</li>
				<!-- /RIGHT CONTROL -->
			</ul>
			<!-- /SLIDE CONTROLS -->
	
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
	
			<!-- PRODUCT LIST -->
			<ul id="owl-f-products" class="product-list grid owl-carousel">
			
			<c:forEach var="spMoi" items="${spMoi}">
				<!-- PRODUCT -->
				<li class="list-item">
					<!-- ACTIONS -->
					<div class="actions">
						<figure class="liquid">
							<img src="resources/image/${spMoi.image}" alt="product1">
						</figure>
						<div>
							<a href="#qv-p1${spMoi.id}" class="button quick-view" data-effect="mfp-3d-unfold">
								<!-- SVG QUICKVIEW -->
								<svg class="svg-quickview">
									<use xlink:href="#svg-quickview"></use>
								</svg>
								<!-- /SVG QUICKVIEW -->
							</a>
							<!-- QUICK VIEW POPUP -->
							<div id="qv-p1${spMoi.id}" class="product-quick-view mfp-with-anim mfp-hide">
								<!-- PRODUCT PICTURES -->
								<div class="product-pictures">
									<div class="product-photo">
										<figure class="liquid">
											<img src="resources/image/${spMoi.image}" alt="product-image">
										</figure>
									</div>
									<ul class="picture-views">
										<!-- VIEW -->
										<li class="selected">
											<figure class="liquid">
												<img src="resources/image/${spMoi.image}" alt="picture-view">
											</figure>
										</li>
										<!-- /VIEW -->
										
										<!-- VIEW -->
										<li>
											<figure class="liquid">
												<img src="resources/image/${spMoi.image}" alt="picture-view">
											</figure>
										</li>
										<!-- /VIEW -->
									</ul>
								</div>
								<!-- /PRODUCT PICTURES -->
	
								<!-- PRODUCT DESCRIPTION -->
								<div class="product-description">
									<a href="productCate?categories=${spMoi.loaisanpham}&search=&x=17&y=24"><p class="highlighted category"> ${spMoi.loaisp} </p></a>
									<a href="#"><h6>${spMoi.tensanpham}</h6></a>
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
									<p> ${spMoi.mota} </p>
									<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${spMoi.gia}"/> &#8363 </p>
									<div>
										<h5>Số lượng:</h5>
										<!-- COUNTER -->
										<div class="counter">
											<div class="control left"></div>
											<div class="value">
												<h5 id="quantity_${spMoi.id}">1</h5>
											</div>
											<div class="control right"></div>
										</div>
										<!-- /COUNTER -->
									</div>
									<div class="options">
										<a href="#" onclick="update($('#quantity_<c:out value="${spMoi.id}"/>').text(), ${spMoi.id})" class="button cart-add">
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
							<a href="product.htm?id=${spMoi.id}" class="button full-view">
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
							<a href="productCate?categories=${spMoi.loaisanpham}&search=&x=17&y=24"><p class="highlighted category"> ${spMoi.loaisp} </p></a>
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
							<a href="#"><h6>${spMoi.tensanpham}</h6></a>
						</div>
						<div class="clearfix">
							<p></p>
							<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${spMoi.gia}"/> &#8363 </p>
						</div>
	
						<!-- CART OPTIONS -->
						<div class="cart-options">
							<a href="cart/add/${spMoi.id}.htm" class="button cart-add">
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
		</section>
	</div>
	<!-- /PRODUCT SHOWCASE -->	
	
	<!-- PRODUCT SHOWCASE -->
	<div class="product-showcase-wrap">
		<section class="product-showcase">
			<h3 class="title">Những sản phẩm bán chạy</h3>
			<!-- SLIDE CONTROLS -->
			<ul class="slide-controls">
				<!-- LEFT CONTROL -->
				<li>
					<a href="#" class="button prev">
						<!-- SVG ARROW -->
						<svg class="svg-arrow">
							<use xlink:href="#svg-arrow"></use>
						</svg>
						<!-- /SVG ARROW -->
					</a>
				</li>
				<!-- /LEFT CONTROL -->
	
				<!-- RIGHT CONTROL -->
				<li>
					<a href="#" class="button next">
						<!-- SVG ARROW -->
						<svg class="svg-arrow">
							<use xlink:href="#svg-arrow"></use>
						</svg>
						<!-- /SVG ARROW -->
					</a>
				</li>
				<!-- /RIGHT CONTROL -->
			</ul>
			<!-- /SLIDE CONTROLS -->
	
			<!-- PRODUCT LIST -->
			<ul id="owl-bs-products" class="product-list grid owl-carousel">
			
				<c:forEach var="spBanChay" items="${spBanChay}">
				<!-- PRODUCT -->
				<li class="list-item">
					<!-- ACTIONS -->
					<div class="actions">
						<figure class="liquid">
							<img src="resources/image/${spBanChay.image}" alt="product1">
						</figure>
						<div>
							<a href="#qv-p1${spBanChay.id}" class="button quick-view" data-effect="mfp-3d-unfold">
								<!-- SVG QUICKVIEW -->
								<svg class="svg-quickview">
									<use xlink:href="#svg-quickview"></use>
								</svg>
								<!-- /SVG QUICKVIEW -->
							</a>
							<!-- QUICK VIEW POPUP -->
							<div id="qv-p1${spBanChay.id}" class="product-quick-view mfp-with-anim mfp-hide">
								<!-- PRODUCT PICTURES -->
								<div class="product-pictures">
									<div class="product-photo">
										<figure class="liquid">
											<img src="resources/image/${spBanChay.image}" alt="product-image">
										</figure>
									</div>
									<ul class="picture-views">
										<!-- VIEW -->
										<li class="selected">
											<figure class="liquid">
												<img src="resources/image/${spBanChay.image}" alt="picture-view">
											</figure>
										</li>
										<!-- /VIEW -->
										
										<!-- VIEW -->
										<li>
											<figure class="liquid">
												<img src="resources/image/${spBanChay.image}" alt="picture-view">
											</figure>
										</li>
										<!-- /VIEW -->
									</ul>
								</div>
								<!-- /PRODUCT PICTURES -->
	
								<!-- PRODUCT DESCRIPTION -->
								<div class="product-description">
									<a href="productCate?categories=${spBanChay.loaisanpham}&search=&x=17&y=24"><p class="highlighted category"> ${spBanChay.loaisp} </p></a>
									<a href="#"><h6>${spBanChay.tensanpham}</h6></a>
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
									<p> ${spBanChay.mota} </p>
									<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${spBanChay.gia}"/> &#8363 </p>
									<div>
										<h5>Số lượng:</h5>
										<!-- COUNTER -->
										<div class="counter">
											<div class="control left"></div>
											<div class="value">
												<h5 id="quantity_${spBanChay.id}">1</h5>
											</div>
											<div class="control right"></div>
										</div>
										<!-- /COUNTER -->
									</div>
									<div class="options">
										<a href="#" onclick="update($('#quantity_<c:out value="${spBanChay.id}"/>').text(), ${spBanChay.id})" class="button cart-add">
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
							<a href="product.htm?id=${spBanChay.id}" class="button full-view">
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
							<a href="productCate?categories=${spBanChay.loaisanpham}&search=&x=17&y=24"><p class="highlighted category"> ${spBanChay.loaisp} </p></a>
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
							<a href="#"><h6>${spBanChay.tensanpham}</h6></a>
						</div>
						<div class="clearfix">
							<p></p>
							<p class="highlighted current"> <fmt:formatNumber maxFractionDigits="0" value="${spBanChay.gia}"/> &#8363 </p>
						</div>
	
						<!-- CART OPTIONS -->
						<div class="cart-options">
							<a href="cart/add/${spBanChay.id}.htm" class="button cart-add">
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
		</section>
	</div>
	<!-- /PRODUCT SHOWCASE -->	
	
	<!-- INSTITUTIONAL -->
	<div id="institutional-wrap">
		<section id="institutional">
			<h3 class="title">Tại sao bạn nên chọn chúng tôi? </h3>
			<!-- BULLETS -->
			<ul class="bullets">
				<!-- BULLET -->
				<li>
					<!-- SVG GLOBE -->
					<svg class="svg-globe">
						<use xlink:href="#svg-globe"></use>
					</svg>
					<!-- /SVG GLOBE -->
					<h6>Vận chuyển toàn quốc</h6>
					<p>Chúng tôi có chi nhánh trên toàn quốc. Có thể vận chuyển cho bạn ở tất cả tỉnh thành trên cả nước.</p>
				</li>
				<!-- /BULLET -->
	
				<!-- BULLET -->
				<li>
					<!-- SVG TRUCK -->
					<svg class="svg-truck">
						<use xlink:href="#svg-truck"></use>
					</svg>
					<!-- /SVG TRUCK -->
					<h6>Vận chuyển nhanh chóng</h6>
					<p>Chúng tôi có đội ngũ nhân viên giao hàng hùng hậu. Có thể giao cho bạn mọi lúc.</p>
				</li>
				<!-- /BULLET -->
	
				<!-- BULLET -->
				<li>
					<!-- SVG RIBBON -->
					<svg class="svg-ribbon">
						<use xlink:href="#svg-ribbon"></use>
					</svg>
					<!-- /SVG RIBBON -->
					<h6>Sản phẩm chất lượng cao</h6>
					<p>Chúng tôi cam kết luôn cung cấp các sản phẩm chất lượng cao và uy tín cho khách hàng.</p>
				</li>
				<!-- /BULLET -->
			</ul>
			<!-- /BULLETS -->
		</section>
	</div>
	<!-- /INSTITUTIONAL -->
	
	<%@include file="layout.jsp"%>