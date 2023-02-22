<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>

	<%@include file="head.jsp"%>

<!-- SECTION-NAV -->
	<div id="section-nav-wrap">
		<section id="section-nav">
			<p> <a href="index.htm"> Trang chủ </a> / Thông tin chúng tôi</p>
		</section>
	</div>
	<!-- /SECTION-NAV -->

	<!-- CONTACT -->
	<div id="contact-wrap">
		<section id="contact">
			<!-- CONTACT FORM -->
			<div class="contact-form">
				<h3 class="title">Thông tin</h3>
				<!-- CONTACT DETAILS -->
				<div class="contact-details">
					<p> Chúng tôi là nhóm 6 đang làm trang bán hàng điện tử.</p>
					<!-- CONTACT INFO -->
					<ul class="contact-info">
						<li class="address">
							<!-- SVG PIN -->
							<svg class="svg-pin">
								<use xlink:href="#svg-pin"></use>	
							</svg>
							<!-- /SVG PIN -->
							<p>CS3- Quang Trung, Quận 12</p>
						</li>
						<li class="phone">
							<!-- SVG PHONE -->
							<svg class="svg-phone">
								<use xlink:href="#svg-phone"></use>	
							</svg>
							<!-- /SVG PHONE -->
							<p> 0903152929 </p>
						</li>
						<li class="email">
							<!-- SVG ENVELOPE -->
							<svg class="svg-envelope">
								<use xlink:href="#svg-envelope"></use>	
							</svg>
							<!-- /SVG ENVELOPE -->
							<p><a href="mailto:nhom6@fpt.edu.vn">nhom6@fpt.edu.vn</a></p>
						</li>
					</ul>
					<!-- /CONTACT INFO -->
					<h5> Liên hệ chúng tôi</h5>
					<!-- SOCIAL LINKS -->
					<ul class="social-links">
						<li class="fb"><a href="#"></a></li>
						<li class="twt"><a href="#"></a></li>
						<li class="gplus"><a href="#"></a></li>
						<li class="db"><a href="#"></a></li>
						<li class="rss"><a href="#"></a></li>
						<li class="vm"><a href="#"></a></li>
					</ul>
					<!-- /SOCIAL LINKS -->
				</div>
				<!-- /CONTACT DETAILS -->
			</div>
			<!-- /CONTACT FORM -->
		</section>
	</div>
	<!-- /CONTACT -->

	<!--MAP-->
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62693.9663141911!2d106.62079378932609!3d10.85921660960075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529b6a2b351a5%3A0x11690ada8c36f9bc!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIFRo4buxYyBow6BuaCBGUFQgUG9seXRlY2huaWMgVFAuSENNIChDUzMp!5e0!3m2!1svi!2s!4v1608664999337!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	<!--/MAP-->
	
	<%@include file="layout.jsp"%>