<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="ISO-8859-1">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

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
</style>
</head>
<body id="page-top">
	<c:url value="/employee-save" var="urlSave" />
	<c:url value="/employee-view/" var="urlView" />
	<c:url value="/employee-update/" var="urlUpdate" />
	<c:url value="/employeeDelete/" var="urlDelete" />

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="<c:url value="/admin"/>">
				<img src = "<%=request.getContextPath()%>/resources/user/images/logo.png">
			</a>

			<!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/doanhthu-list"/>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Doanh Thu</span></a>
      </li>

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
						<a class="collapse-item" href="<c:url value="/sanpham-list"/>">List
							Sản Phẩm</a> <a class="collapse-item"
							href="<c:url value="/sanpham-save"/>">Create Sản Phẩm</a>
					</div>
				</div></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo1"
				aria-expanded="true" aria-controls="collapseTwo1"> <i
					class="fas fa-tasks"></i> <span>Loại Sản Phẩm</span>
			</a>
				<div id="collapseTwo1" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Loại Sản Phẩm</h6>
						<a class="collapse-item" href="<c:url value="/loaisanpham-list"/>">List
							Loại Sản Phẩm</a> <a class="collapse-item"
							href="<c:url value="/loaisanpham-save"/>">Create Loại Sản
							Phẩm</a>
					</div>
				</div></li>


			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo2"
				aria-expanded="true" aria-controls="collapseTwo2"> <i
					class="fas fa-tasks"></i> <span>Nhà Cung Cấp</span>
			</a>
				<div id="collapseTwo2" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Nhà Cung Cấp</h6>
						<a class="collapse-item" href="<c:url value="/nhacungcap-list"/>">List
							Nhà Cung Cấp</a> <a class="collapse-item"
							href="<c:url value="/nhacungcap-save"/>">Create Nhà Cung Cấp</a>
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
						<a class="collapse-item" href="<c:url value="/cartad-list"/>">List
							Hóa Đơn</a>

					</div>
				</div></li>


			<li class="nav-item dropdown style_menu"><a
				class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
				aria-expanded="false"> <i class="fas fa-fw fa-chart-area"></i> <span>Tài
						Khoản</span>
			</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item dropdown-toggle">Nhân Viên</a>
						<ul class="submenu">
							<li><a class="dropdown-item"
								href="<c:url value="/employee-list"/>">List Nhân Viên</a></li>
							<li><a class="dropdown-item"
								href="<c:url value="/employee-save"/>">Create Nhân Viên</a></li>
						</ul></li>

					<li><a class="dropdown-item dropdown-toggle">Phân Quyền</a>
						<ul class="submenu">
							<li><a class="dropdown-item"
								href="<c:url value="/list-role"/>">List Role</a></li>
							<li><a class="dropdown-item"
								href="<c:url value="/save-role"/>">Create Role</a></li>
						</ul></li>
				</ul></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo6"
				aria-expanded="true" aria-controls="collapseTwo6"> <i
					class="fas fa-tasks"></i> <span>Recycle Bin</span>
			</a>
				<div id="collapseTwo6" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">

						<a class="collapse-item" href="<c:url value="/recyclebin"/>">Hóa
							Đơn</a>
							<a class="collapse-item" href="<c:url value="/sanpham-bin"/>">Sản Phẩm</a>

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
													href="${pageContext.request.contextPath }/cart/deletead/${it.sanpham.id }">
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
										href="${pageContext.request.contextPath }/cart/customer">checkout
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
				<!-- End of Topbar -->
				<div id="content-wrapper">

					<div class="container-fluid">

						<!-- Breadcrumbs-->
						<div class="card shadow mb-5">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">Update Nhân Viên
									</h6>
							</div>
						<c:url value="/updateEmployee" var="updateEmployee" />
						<form:form id="employeeUpdate" action="${updateEmployee}"
							modelAttribute="employee" enctype="multipart/form-data">
							<div class="form-row" style="padding: 20px">
								<div class="form-group col-md-6">
									<label>ID:</label>
									<form:input class="form-control" path="employeeid"
										readonly="true" />
									<br /> <label>Họ Và Tên:</label>
									<form:input class="form-control" path="name" placeholder="Full name" required="required"
										pattern="[a-z]\{25}" title="Họ và Tên không được để trống" />
									<br /> <label>Ngày Sinh:</label>
									<form:input class="form-control" path="birthday"
										id="datepicker" placeholder="Birthday" />
									<script>
										$(function() {
											$.datepicker.setDefaults({
												onClose : function(date, inst) {
													$("#selectedDtaeVal").html(
															date);
												}
											});

											$("#datepicker").datepicker({
												dateFormat : 'yy-mm-dd'
											});
										});
									</script>
									<br /> <label>CMND:</label>
									<form:input class="form-control" path="govermentid" placeholder="Government ID" required="required"
										pattern="[0-9]{9,12}" title="A credit card goverment id" />
									<br /> <label>Phone:</label>
									<form:input class="form-control" path="phone" placeholder="Phone" required="required" pattern="[0-9]{10}"
										title="A credit card number" /> <br />
										<label>Email</label>
									<form:input class="form-control" path="email" placeholder="Email" required="required"
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
										title="Please enter  format email" />
								</div>
								<div class="form-group col-md-6">
										<label>Địa Chỉ:</label>
										<form:input path="address" id="address"
											class="form-control" placeholder="Address" required="required" pattern="[a-z0-9]\{50}"
											title="Enter Adress" />
									
									<br /> <label>Lương:</label>
									<form:input class="form-control" path="salary" placeholder="Salary" pattern="[0-9]{7,9}"
										title="Please enter salary"/>
									
									<br /> <label>Role</label> <select name="role"
										class="form-control">
										<c:if test="${not empty listRole}">
											<c:forEach var="role" items="${listRole}">
												<option value=${role.roleid } >${role.rolename}</option>
											</c:forEach>
										</c:if>
									</select> <br /> <label>User Name</label>
									<form:input path="username" class="form-control"
										placeholder="Please Enter Your Name" readonly="true" />

									<div style="color: red;">${msg}</div>

									<br /> <label>Password</label>
									<form:input type="password" id="password" path="password"
										placeholder="Please enter your Password" class="form-control"
										pattern=".{6,}" title="Mật Khẩu Phải trên 6 chữ hoặc số" />
									<br />
									<br />
									
									<label>Image:</label>
									<output id="list">
										<img
											src="<%=request.getContextPath()%>/resources/images/employee/${employee.image}"
											width="120"
											style="border: 2px solid #7bb8cc; border-radius: 6px" />
									</output>
									<form:input type="hidden" path="image" readonly="true"></form:input>
									<span class="input-group-btn"> <span
										class="btn btn-default btn-file"> <input type="file"
											id="files" name="uploadImg">
									</span>
									</span>
									<script>
										if (window.FileReader) {
											function handleFileSelect(evt) {
												var files = evt.target.files;
												var f = files[0];
												var reader = new FileReader();

												reader.onload = (function(
														theFile) {
													return function(e) {
														document
																.getElementById('list').innerHTML = [ '<img src="', e.target.result, '" title="', theFile.name, '" width="120"/>' ]
																.join('');
													};
												})(f);

												reader.readAsDataURL(f);
											}
										} else {
											alert('This browser does not support FileReader');
										}

										document
												.getElementById('files')
												.addEventListener('change',
														handleFileSelect, false);
									</script>
									<br /> <br />

									<form:button type="submit" class="btn btn-success">
										<i class="far fa-edit"></i> Update</form:button>
									<form:button id="editbutton" type="submit"
										class="btn btn-danger">
										<a href="<c:url value="/employee-list" />"><i
											class="far fa-arrow-alt-circle-left"></i>Return</a>
									</form:button>
									</div>
									</div>
						</form:form>
					</div>
					<script type="text/javascript">
							function validateForm() {
								var a = document.forms["myForm"]["password"].value;

								if (a == "") {
									alert("Mật Khẩu không được bỏ trống ");
									return false;
								}

								return true;
							}
						</script>
					</div>
				
			</div>

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Westeros 2020</span>
					</div>
				</div>
			</footer>
			<!-- /.content-wrapper -->


			<!-- /#wrapper -->

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
							<a class="btn btn-primary" href="<c:url value="/logout"/>">Logout</a>
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
			<script
				src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/>"></script>

			<!-- Page level custom scripts -->
			<script src="<c:url value="/resources/js/demo/chart-area-demo.js"/>"></script>
			<script src="<c:url value="/resources/js/demo/chart-pie-demo.js"/>"></script>
</body>
</html>