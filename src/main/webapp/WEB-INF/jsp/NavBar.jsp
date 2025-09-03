<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Topbar Start -->
		<div class="header">
			<div class="main-header">

				<!-- Logo -->
				<div class="header-left">
					<h4>BudgetBee <i class="fa-brands fa-forumbee"></i></h4>
				</div>

				<!-- Sidebar Menu Toggle Button -->
				<a id="mobile_btn" class="mobile_btn" href=".sidebar">
					<span class="bar-icon">
						<span></span>
						<span></span>
						<span></span>
					</span>
				</a>

				<div class="header-user">
					<div class="nav user-menu nav-list d-flex justify-content-between">

						<div class="d-flex align-items-center">

							<span class="text-primary fw-semibold"><i class="fa fa-user" aria-hidden="true"></i>
								Hello, ${loggedIn }
							</span>

						</div>
						<div class="d-flex align-items-center">

							<!-- Light/Dark Mode Button -->
							<div class="me-2 theme-item">
								<a href="javascript:void(0);" id="dark-mode-toggle"
									class="theme-toggle btn btn-menubar">
									<i class="isax isax-moon"></i>
								</a>
								<a href="javascript:void(0);" id="light-mode-toggle"
									class="theme-toggle btn btn-menubar">
									<i class="isax isax-sun-1"></i>
								</a>
							</div>

							<!-- User Dropdown -->
							<div class="dropdown profile-dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle d-flex align-items-center"
									data-bs-toggle="dropdown" data-bs-auto-close="outside">
									<span class="avatar online">
										<img src="assets/img/profiles/avatar-01.jpg" alt="Img"
											class="img-fluid rounded-circle">
									</span>
								</a>
								<div class="dropdown-menu p-2">
									<div class="d-flex align-items-center bg-light rounded-1 p-2 mb-2">
										<span class="avatar avatar-lg me-2">
											<img src="assets/img/profiles/avatar-01.jpg" alt="img"
												class="rounded-circle">
										</span>
										<div>
											<h6 class="fs-14 fw-medium mb-1">${loggedIn }</h6>
											<p class="fs-13">Administrator</p>
										</div>
									</div>

									<!-- Item-->
									<a class="dropdown-item d-flex align-items-center" href="account-settings">
										<i class="isax isax-profile-circle me-2"></i>Profile Settings
									</a>

									<hr class="dropdown-divider my-2">

									<!-- Item-->
									<a class="dropdown-item logout d-flex align-items-center" href="loginpage">
										<i class="isax isax-logout me-2"></i>Sign Out
									</a>
								</div>
							</div>

						</div>
					</div>
				</div>

				<!-- Mobile Menu -->
				<div class="dropdown mobile-user-menu profile-dropdown">
					<a href="javascript:void(0);" class="dropdown-toggle d-flex align-items-center"
						data-bs-toggle="dropdown" data-bs-auto-close="outside">
						<span class="avatar avatar-md online">
							<img src="assets/img/profiles/avatar-01.jpg" alt="Img" class="img-fluid rounded-circle">
						</span>
					</a>
					<div class="dropdown-menu p-2 mt-0">
						<a class="dropdown-item d-flex align-items-center" href="account-settings">
							<i class="isax isax-profile-circle me-2"></i>Profile Settings
						</a>
						<a class="dropdown-item logout d-flex align-items-center" href="loginpage">
							<i class="isax isax-logout me-2"></i>Signout
						</a>
					</div>
				</div>
				<!-- /Mobile Menu -->

			</div>
		</div>
		<!-- Topbar End -->

		<!-- Sidenav Menu Start -->
		<div class="col-sidebar">

			<div class="sidebar bg-white">

				<!-- Start Logo -->
				<div class="sidebar-logo">
					<a href="#" class="logo logo-normal fs-3">
						<span class="text-danger">BudgetBee</span>
						<span><i class="fa-brands fa-forumbee text-warning"></i></span>
					</a>
					<a href="#" class="dark-logo  fs-3">
						<span class="text-danger">BudgetBee</span>
						<span><i class="fa-brands fa-forumbee text-warning"></i></span>
					</a>
				</div>
				<!-- End Logo -->

				<!--- Sidenav Menu -->
				<div class="sidebar-inner" data-simplebar>
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li>
								<ul>
									<li>
										<a href="dashboard-page" class="active subdrop">
											<i class="isax isax-element-45"></i>
											<span>Dashboard</span>
										</a>
									</li>
									<li class="submenu">
										<a href="transactions">
											<i class="isax isax-shapes5"></i><span>All Transactions</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Sidenav Menu End -->