<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

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
			<div class="sidebar-heading">Danh S??ch Ch???c N??ng</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-tasks"></i> <span>S???n Ph???m</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">S???n Ph???m</h6>
						<a class="collapse-item" href="<c:url value="/sanpham-list"/>">List
							S???n Ph???m</a> <a class="collapse-item"
							href="<c:url value="/sanpham-save"/>">Create S???n Ph???m</a>
					</div>
				</div></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo1"
				aria-expanded="true" aria-controls="collapseTwo1"> <i
					class="fas fa-tasks"></i> <span>Lo???i S???n Ph???m</span>
			</a>
				<div id="collapseTwo1" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Lo???i S???n Ph???m</h6>
						<a class="collapse-item" href="<c:url value="/loaisanpham-list"/>">List
							Lo???i S???n Ph???m</a> <a class="collapse-item"
							href="<c:url value="/loaisanpham-save"/>">Create Lo???i S???n
							Ph???m</a>
					</div>
				</div></li>


			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo2"
				aria-expanded="true" aria-controls="collapseTwo2"> <i
					class="fas fa-tasks"></i> <span>Nh?? Cung C???p</span>
			</a>
				<div id="collapseTwo2" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Nh?? Cung C???p</h6>
						<a class="collapse-item" href="<c:url value="/nhacungcap-list"/>">List
							Nh?? Cung C???p</a> <a class="collapse-item"
							href="<c:url value="/nhacungcap-save"/>">Create Nh?? Cung C???p</a>
					</div>
				</div></li>


			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo5"
				aria-expanded="true" aria-controls="collapseTwo5"> <i
					class="fas fa-tasks"></i> <span>H??a ????n</span>
			</a>
				<div id="collapseTwo5" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">H??a ????n</h6>
						<a class="collapse-item" href="<c:url value="/cartad-list"/>">List
							H??a ????n</a>

					</div>
				</div></li>


			<li class="nav-item dropdown style_menu"><a
				class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
				aria-expanded="false"> <i class="fas fa-fw fa-chart-area"></i> <span>T??i
						Kho???n</span>
			</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item dropdown-toggle">Nh??n Vi??n</a>
						<ul class="submenu">
							<li><a class="dropdown-item"
								href="<c:url value="/employee-list"/>">List Nh??n Vi??n</a></li>
							<li><a class="dropdown-item"
								href="<c:url value="/employee-save"/>">Create Nh??n Vi??n</a></li>
						</ul></li>

					<li><a class="dropdown-item dropdown-toggle">Ph??n Quy???n</a>
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

						<a class="collapse-item" href="<c:url value="/recyclebin"/>">H??a
							????n</a>
							<a class="collapse-item" href="<c:url value="/sanpham-bin"/>">S???n Ph???m</a>

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
				<!-- End of Topbar -->

		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<div class="card shadow mb-5">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">Th??m M???i Role</h6>
							</div>
					
						<c:url value="/saverole" var="saverole" />
						<form:form name="myForm" action="${saverole}"
							modelAttribute="role" onsubmit="return validateForm()"
							method="GET">
                         <div class="form-row" style="padding: 20px">
									<div class="form-group col-md-6">
							<label>Role Name</label>
							<form:input path="rolename" class="form-control"
								placeholder="Please Enter Your Name" />
							<div style="color: red;">${msg}</div>
							<br />

							<label>Role Desc</label>
							<textarea name="roledesc" rows="4" cols="50" class="form-control">
							
							</textarea>
							<br />
							<br />
							<form:button type="submit" class="btn btn-success">
								<i class="far fa-save"></i> Save Role</form:button>
							<form:button id="editbutton" type="submit" class="btn btn-danger">
								<a style="text-decoration: none; color: white"
									href="<c:url value="/list-role" />"><i
									class="far fa-arrow-alt-circle-left"></i> Return</a>
							</form:button>
 						 	</div>
 						 	</div>
						</form:form>

					
				</div>
				<script type="text/javascript">
					function validateForm() {
						var name = document.forms["myForm"]["rolename"].value;
						var a = document.forms["myForm"]["roledesc"].value;

						if (name == "") {
							alert("T??n kh??ng ????????c bo?? tr????ng ");
							return false;
						}
						if (a == "") {
							alert("Chu?? Thi??ch kh??ng ????????c bo?? tr????ng ");
							return false;
						}

						return true;
					}
				</script>

			</div>
		</div>

		<!-- Sticky Footer -->
		<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Westeros 2020</span>
						</div>
					</div>
				</footer>

	</div>
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
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
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
		<script src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/>"></script>

		<!-- Page level custom scripts -->
		<script src="<c:url value="/resources/js/demo/chart-area-demo.js"/>"></script>
		<script src="<c:url value="/resources/js/demo/chart-pie-demo.js"/>"></script>
</body>
</html>
