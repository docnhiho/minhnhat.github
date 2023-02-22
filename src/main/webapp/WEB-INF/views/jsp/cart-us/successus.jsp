<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>Mushtaq</title>

<!-- Custom fonts for this template-->
<link rel="stylesheet"
	href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"></c:url>">

<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->

<link rel="stylesheet"
	href="<c:url value="/resources/css/sb-admin-2.css"></c:url>">

<link rel="stylesheet"
	href="<c:url value="/resources/css/sb-admin-2.min.css"></c:url>">

<link rel="stylesheet"
	href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"></c:url>">

<style type="text/css">
#editbutton a {
	color: white
}

#editbutton a {
	text-decoration: none
}

.style_menu .dropdown-menu {
	position: inherit !important;
	will-change: inherit !important;
	top: 0px !important;
	left: 0px !important;
	transform: inherit !important;
	margin: 0 1rem !important;
}

@media ( min-width : 992px) {
	.style_menu .dropdown-menu .dropdown-toggle:after {
		border-top: .3em solid transparent;
		border-right: 0;
		border-bottom: .3em solid transparent;
		border-left: .3em solid;
	}
	.style_menu .dropdown-menu .dropdown-menu {
		margin-left: 0;
		margin-right: 0;
	}
	.style_menu .dropdown-menu li {
		position: relative;
	}
	.nav-item .submenu {
		display: none;
		list-style: none;
		margin-left: 15px;
		padding: 0;
	}
	.style_menu .dropdown-menu>li:hover>.submenu {
		display: block;
	}
	.style_menu .nav-item .submenu-left {
		right: 100%;
		left: auto;
	}
	.style_menu .dropdown-menu>li:hover {
		background-color: #f1f1f1
	}
}

select {
-webkit-appearance:none;  appearance: none;}
}
</style>

</head>
<body id="page-top">

	<c:url value="/saveSanpham" var="saveSanpham" />

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="<c:url value="/user"/>">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					Mushtaq Shop <sup></sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Danh Sách Chức Năng</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-tasks"></i> <span>Sản Phẩm</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Sản Phẩm</h6>
						<a class="collapse-item" href="<c:url value="/user"/>">List
							Sản Phẩm</a>
					</div>
				</div></li>

			


			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo5"
				aria-expanded="true" aria-controls="collapseTwo5"> <i
					class="fas fa-tasks"></i> <span>Hóa Đơn</span>
			</a>
				<div id="collapseTwo5" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Hóa Đơn</h6>
						<a class="collapse-item" href="<c:url value="/cartus-list"/>">List
							Hóa Đơn</a>

					</div>
				</div></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${name}</span>
								<img class="img-profile rounded-circle"
								src="https://i.ebayimg.com/images/g/XGEAAOSwCRRbGONm/s-l400.jpg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- End of Topbar --!>

				<!-- 				Begin Page Content -->
				<!-- 				<div id="content-wrapper"> -->
				<!-- 					<div class="container-fluid"> -->

				<!-- 						DataTales Example -->
				<!-- 						<div class="card shadow mb-5"> -->
				<!-- 							<div class="card-header py-3"> -->
				<!-- 								<h6 class="m-0 font-weight-bold text-primary">View Cart</h6> -->
				<!-- 							</div> -->

				<!-- 							<div class="row" style="padding: 20px"> -->
				<!-- 								<div class="header-s"> -->
				<%-- 															<img src="<c:url value="/resources/img/tich.png"/>" height="80px" /> --%>
				<!-- 								</div> -->
				<!-- 								<div class="header-s"> -->
				<!-- 									<p>Sản phẩm đã được đặt thành công !</p> -->
				<!-- 								</div> -->


				<!-- 								<div class="form-group col-md-6"> -->

				<!-- 									<label>Mã sản phẩm</label> <select name="sanphamid" -->
				<!-- 										class="sanpham" disabled> -->
				<%-- 										<c:if test="${not empty listSanpham}"> --%>
				<%-- 											<c:forEach var="sanpham" items="${listSanpham}"> --%>
				<%-- 												<option value=${sanpham.id } selected>${sanpham.id }</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> Giá: <br /> <br /> <select name="sanphamid" class="sanpham" -->
				<!-- 										disabled> -->
				<%-- 										<c:if test="${not empty listSanpham}"> --%>
				<%-- 											<c:forEach var="sanpham" items="${listSanpham}"> --%>
				<%-- 												<option value=${sanpham.id } selected>${sanpham.gia }</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> <br /> <br /> Tổng Tiền: <br /> <br /> <select -->
				<!-- 										name="receiptItemid" class="receiptItem" disabled> -->
				<%-- 										<c:if test="${not empty listReceiptItem}"> --%>
				<%-- 											<c:forEach var="receiptItem" items="${listReceiptItem}"> --%>
				<%-- 												<option value=${receiptItem.receiptitemid } selected>${receiptItem.receiptItemTongtien }</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> -->


				<!-- 									<hr> -->
				<!-- 									<strong>ĐÃ XÁC NHẬN</strong> <br /> <select name="receiptid" -->
				<!-- 										class="receipt" disabled> -->
				<%-- 										<c:if test="${not empty listReceipt}"> --%>
				<%-- 											<c:forEach var="receipt" items="${listReceipt}"> --%>
				<%-- 												<option value=${receipt.receiptid } selected>Full --%>
				<%-- 													Name :${receipt.receiptName}</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> <br /> <select name="receiptid" class="receipt" disabled> -->
				<%-- 										<c:if test="${not empty listReceipt}"> --%>
				<%-- 											<c:forEach var="receipt" items="${listReceipt}"> --%>
				<%-- 												<option value=${receipt.receiptid } selected>Email --%>
				<%-- 													: ${receipt.receiptMail}</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> <br /> <select name="receiptid" class="receipt" disabled> -->
				<%-- 										<c:if test="${not empty listReceipt}"> --%>
				<%-- 											<c:forEach var="receipt" items="${listReceipt}"> --%>
				<%-- 												<option value=${receipt.receiptid } selected>Phone --%>
				<%-- 													: ${receipt.receiptPhone}</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> <br /> <select name="receiptid" class="receipt" disabled> -->
				<%-- 										<c:if test="${not empty listReceipt}"> --%>
				<%-- 											<c:forEach var="receipt" items="${listReceipt}"> --%>
				<%-- 												<option value=${receipt.receiptid } selected>Address --%>
				<%-- 													: ${receipt.receiptAddress}</option> --%>
				<%-- 											</c:forEach> --%>
				<%-- 										</c:if> --%>
				<!-- 									</select> -->
				<!-- 								</div> -->

				<%-- 								<br> <a href="<c:url value="/cancel_booking"/>"> --%>
				<!-- 									<button class="btn btn-danger">Cancel</button> -->
				<!-- 								</a> -->
				<!-- 							</div> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->



				<!-- Begin Page Content -->
				<div id="content-wrapper">
					<div class="container-fluid">

						<!-- DataTales Example -->
						<div class="card shadow mb-5">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">View Cart</h6>
							</div>

								<div class="form-row" style="padding: 20px">

									<div class="form-group col-md-6	">

										<div class="header-s">
											<p>Thanh Toán Thành Công !</p>											
										</div>
										<label>Mã Sản Phẩm</label> <select name="sanphamid"
											class="form-control" disabled>
											<c:if test="${not empty listSanpham}">
												<c:forEach var="sanpham" items="${listSanpham}">
													<option value=${sanpham.id } selected>${sanpham.tensp }</option>
												</c:forEach>
											</c:if>
										</select> <br /> <label>Giá</label> <select name="sanphamid"
											class="form-control" disabled>
											<c:if test="${not empty listSanpham}">
												<c:forEach var="sanpham" items="${listSanpham}">
													<option value=${sanpham.id } selected><fmt:formatNumber
													value="${sanpham.gia}" /></option>
												</c:forEach>
											</c:if>
										</select>
										
										<br /> <label>Số Lượng</label> <select name="receiptItemQuantity"
											class="form-control" disabled>
											<c:if test="${not empty listReceiptItem}">
												<c:forEach var="receiptItem" items="${listReceiptItem}">
													<option value=${receiptItem.receiptitemid } selected><fmt:formatNumber
													value="${receiptItem.receiptItemQuantity }" /></option>
												</c:forEach>
											</c:if>
										</select>
										
										 <br /> <label>Tổng Tiền</label> <select name="receiptItemid"
											class="form-control" disabled>
											<c:if test="${not empty listReceiptItem}">
												<c:forEach var="receiptItem" items="${listReceiptItem}">
													<option value=${receiptItem.receiptitemid } selected><fmt:formatNumber
													value="${receiptItem.receiptItemTongtien }" /></option>
												</c:forEach>
											</c:if>
										</select>
										</div>
										<hr>
										<div class="form-group col-md-6	">
										<h4>ĐÃ XÁC NHẬN</h4> <label>Họ và Tên</label>
										<select name="receiptid" class="form-control" disabled>
											<c:if test="${not empty listReceipt}">
												<c:forEach var="receipt" items="${listReceipt}">
													<option value=${receipt.receiptid } selected>${receipt.receiptName}</option>
												</c:forEach>
											</c:if>
										</select> <br /> <label>Email</label> <select name="receiptid"
											class="form-control" disabled>
											<c:if test="${not empty listReceipt}">
												<c:forEach var="receipt" items="${listReceipt}">
													<option value=${receipt.receiptid } selected>${receipt.receiptMail}</option>
												</c:forEach>
											</c:if>
										</select> <br /> <label>Số Điện Thoại</label> <select name="receiptid"
											class="form-control" disabled>
											<c:if test="${not empty listReceipt}">
												<c:forEach var="receipt" items="${listReceipt}">
													<option value=${receipt.receiptid } selected>${receipt.receiptPhone}</option>
												</c:forEach>
											</c:if>
										</select> <br /> <label>Địa Chỉ</label> <select name="receiptid"
											class="form-control" disabled>
											<c:if test="${not empty listReceipt}">
												<c:forEach var="receipt" items="${listReceipt}">
													<option value=${receipt.receiptid } selected>${receipt.receiptAddress}</option>
												</c:forEach>
											</c:if>
										</select>
									</div>															
								</div>
						</div>
					</div>
				</div>




				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Mushtaq Shop 2020</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
		<script
			src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
		<!-- Core plugin JavaScript-->
		<script
			src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
		<!-- Page level plugin JavaScript-->
		<script
			src="<c:url value="/resources/vendor/datatables/jquery.dataTables.js"/>"></script>
		<script
			src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js"/>"></script>
		<!-- Custom scripts for all pages-->
		<script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>
		<!-- Demo scripts for this page-->
		<script src="<c:url value="/resources/js/demo/datatables-demo.js"/>"></script>
		<!-- Page level plugins -->
		<script src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/>"></script>

		<!-- Page level custom scripts -->
		<script src="<c:url value="/resources/js/demo/chart-area-demo.js"/>"></script>
		<script src="<c:url value="/resources/js/demo/chart-pie-demo.js"/>"></script>



		<script src="<c:url value="https://code.jquery.com/jquery-3.3.1.js"/>"></script>
		<script
			src="<c:url value="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"/>"></script>
		<script
			src="<c:url value="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"/>"></script>
		<script
			src="<c:url value="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"/>"></script>
		<script
			src="<c:url value="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>"></script>
		<script
			src="<c:url value="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css"/>"></script>
</body>
</html>