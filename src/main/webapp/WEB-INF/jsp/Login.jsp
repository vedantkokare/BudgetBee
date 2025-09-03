<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login | BudgetBee</title>

<%@ include file="headerLinks.jsp"%>

</head>

<body class="bg-white" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" >

	<!-- Begin Wrapper -->
	<div class="main-wrapper auth-bg">

		<!-- Start Content -->
		<div class="container-fuild">
			<div
				class="w-100 overflow-hidden position-relative flex-wrap d-block vh-100">
				<div class="mb-3">
					<!-- Success Message -->
					<c:if test="${not empty successMsg}">
						<span id="successAlert"
							class="mb-0 alert alert-success p-2 rounded-1"> <i
							class="fa fa-check-circle" aria-hidden="true"></i> ${successMsg}
						</span>
					</c:if>
					<!-- Error Message -->
					<c:if test="${not empty errorLogin}">
						<span id="errorAlert"
							class="mb-0 alert alert-danger p-2 rounded-1"> <i
							class="fa fa-times-circle" aria-hidden="true"></i> ${errorLogin}
						</span>
					</c:if>
				</div>
				<!-- start row -->
				<div
					class="row justify-content-center align-items-center vh-100 overflow-auto flex-wrap ">
					<div class="col-lg-4 mx-auto">
						<form action="login" method="post"
							class="d-flex justify-content-center align-items-center">
							<div
								class="d-flex flex-column justify-content-lg-center p-4 p-lg-0 pb-0 flex-fill">
								<div class="card border-0 p-lg-3 shadow-lg">
									<div class="card-body">
										<div class="text-center mb-3">
											<h5 class="mb-2">Sign In</h5>
											<p class="mb-0">Please enter below details to access the
												dashboard</p>
										</div>
										<div class="mb-3">
											<label class="form-label">Email Address</label>
											<div class="input-group">
												<span class="input-group-text border-end-0"> <i
													class="isax isax-sms-notification"></i>
												</span> <input type="text" class="form-control border-start-0 ps-0"
													placeholder="Enter Email Address" name="email">
											</div>
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label>
											<div class="pass-group input-group">
												<span class="input-group-text border-end-0"> <i
													class="isax isax-lock"></i>
												</span> <span class="isax toggle-password isax-eye-slash"></span> <input
													type="password"
													class="pass-inputs form-control border-start-0 ps-0"
													placeholder="Enter Password" name="pwd">
											</div>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-3">
											<div class="d-flex align-items-center">
												<div class="form-check form-check-md mb-0">
													<input class="form-check-input" id="remember_me"
														type="checkbox"> <label for="remember_me"
														class="form-check-label mt-0">Remember Me</label>
												</div>
											</div>
											<div class="text-end">
												<a href="forgot-password">Forgot Password</a>
											</div>
										</div>
										<div class="mb-1">
											<button type="submit"
												class="btn bg-primary-gradient text-white w-100">Sign
												In</button>
										</div>
										<div class="login-or">
											<span class="span-or">Or</span>
										</div>
										<div class="mb-3">
											<div
												class="d-flex align-items-center justify-content-center flex-wrap">
												<div class="text-center me-2 flex-fill">
													<a href="javascript:void(0);"
														class="br-10 p-1 btn btn-light d-flex align-items-center justify-content-center">
														<img class="img-fluid m-1"
														src="assets/img/icons/facebook-logo.svg" alt="Facebook">
													</a>
												</div>
												<div class="text-center me-2 flex-fill">
													<a href="javascript:void(0);"
														class="br-10 p-1 btn btn-light d-flex align-items-center justify-content-center">
														<img class="img-fluid m-1"
														src="assets/img/icons/google-logo.svg" alt="Google">
													</a>
												</div>
											</div>
										</div>
										<div class="text-center">
											<h6 class="fw-normal fs-14 text-dark mb-0">
												Don’t have an account yet? <a href="register_page"
													class="hover-a"> Register</a>
											</h6>
										</div>
									</div>
									<!-- end card body -->
								</div>
								<!-- end card -->
							</div>
						</form>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
		</div>
		<!-- End Content -->

	</div>
	<!-- End Wrapper -->

	<!-- My JavaScript -->
	<script>
	//Message Timeout
	setTimeout(() => {
		const success = document.getElementById("successAlert");
		const error = document.getElementById("errorAlert");

		if (success) success.style.display = "none";
		if (error) error.style.display = "none";
	}, 3000);
	
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
	</script>

	<%@ include file="footerLinks.jsp"%>