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
a:hover {opacity: 0.5;color: #0056b3;}
.res-hotel {padding-bottom: 5px;margin-left: 5px;}
.bk-btns:hover{opacity: 0.5;}
.select-option input {
    width: 100%;
    height: 50px;
    border: 1px solid #ebebeb;
    border-radius: 2px;
    font-size: 16px;
    color: #19191a;
    text-transform: uppercase;
    font-weight: 500;
    padding-left: 20px;
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
				<img src = "<%=request.getContextPath()%>/resources/user/images/logo.png">
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
							
							<!-- Nav Item - Cart Info -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fa fa-shopping-cart"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter"></span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Cart</h6>
								<br >
								<ul>
									<li><c:forEach var="it" items="${sessionScope.cart}">
											<c:set var="s" value="${s + it.sanpham.gia * it.quantity }"></c:set>
											<div class="cart-img">
												<span> <a href="#"><img
														src="<%=request.getContextPath()%>/resources/image/${it.sanpham.image}"
														width="50" class="img-responsive" alt=""></a></span>
											</div>
											<div class="cart-content">
												<span><b><a href="#"><c:out
																value="${it.sanpham.tensanpham}" /> x<c:out
																value="${it.quantity}" /> </a></b></span> <span class="cart-price">
													<fmt:formatNumber value="${it.sanpham.gia}" /> VND
												</span>
											</div>
											<div class="cart-del">
												<a
													href="${pageContext.request.contextPath }/cartus/deleteus/${it.sanpham.id }">
													<i class="pe-7s-close-circle"></i>
												</a>
											</div>
										</c:forEach>
											</li>
											<li>
										<hr class="shipping-border" />
										<div class="shipping">
											<span class="f-left"> Total </span> <span
												class="f-right cart-price"><fmt:formatNumber
													value="${s}" /> VND</span>
										</div>
										</li>
									<li class="checkout m-0"><a
										href="${pageContext.request.contextPath }/cartus/customer">checkout
											<i class="pe-7s-angle-right"></i>
									</a></li>
								</ul>
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

				
                
                


				<!-- Begin Page Content -->
				<div id="content-wrapper">
					<div class="container-fluid">

						<!-- DataTales Example -->
						<div class="card shadow mb-5">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">View Hóa Đơn
									Chi Tiết</h6>
								<button id="editbutton" type="submit"
									class="btn btn-primary float-right">
									<a href="<c:url value="/cartus-list" />"><i
										class="fa fa-undo"></i> List Hóa Đơn</a>
								</button>
							</div>
							<c:url value="/cartad-details/" var="urlDetails" />
							<form:form id="cartad-details" action="${urlDetails}"
								modelAttribute="receiptitem" enctype="multipart/form-data">
								<div class="form-row" style="padding: 20px">

											<div class="card-body">
												<div class="table-responsive">
													<table class="table table-bordered" id="dataTable"
														width="100%">
														<thead>
															<tr class="text-center">
																<th>Tên Sản Phẩm</th>
																<th>Giá</th>
																<th>Số Lượng</th>
																<th>Tổng Tiền</th>
															</tr>
														</thead>
														<c:forEach var="receiptItem" items="${listReceiptItem}">
														<tr style="border: 1px black solid text-center">
														    <td>${receiptItem.tensp}</td>															
															<td><fmt:formatNumber value="${receiptItem.receiptItemPrice}" /></td>
															<td>${receiptItem.receiptItemQuantity}</td>
															<td><fmt:formatNumber
																	value="${receiptItem.receiptItemTongtien}" /></td>
																	</tr>
														</c:forEach>
													</table>
												</div>
											</div>
										



										<hr>
										<br />
										<br />
										<div class="form-group col-md-6	">
											<label>Họ và Tên</label> <select name="id"
												class="form-control" disabled>
												<c:if test="${not empty listReceipt}">
													<c:forEach var="receipt" items="${listReceipt}">
														<option value=${receipt.id } selected>${receipt.receiptName}</option>
													</c:forEach>
												</c:if>
											</select> <br /> <label>Email</label> <select name="id"
												class="form-control" disabled>
												<c:if test="${not empty listReceipt}">
													<c:forEach var="receipt" items="${listReceipt}">
														<option value="${receipt.id}">${receipt.receiptMail}</option>
													</c:forEach>
												</c:if>
											</select> <br /> <label>Số Điện Thoại</label> <select name="id"
												class="form-control" disabled>
												<c:if test="${not empty listReceipt}">
													<c:forEach var="receipt" items="${listReceipt}">
														<option value=${receipt.id } selected>${receipt.receiptPhone}</option>
													</c:forEach>
												</c:if>
											</select> <br /> <label>Địa Chỉ</label> <select name="id"
												class="form-control" disabled>
												<c:if test="${not empty listReceipt}">
													<c:forEach var="receipt" items="${listReceipt}">
														<option value=${receipt.id } selected>${receipt.receiptAddress}</option>
													</c:forEach>
												</c:if>
											</select>
										</div>

									</div>
							</form:form>

						</div>
					</div>
				</div>




				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Westeros 2020</span>
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