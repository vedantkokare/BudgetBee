<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Meta Tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin Dashboard | BudgetBee</title>
<%@ include file="headerLinks.jsp"%>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">

	<!-- Begin Wrapper -->
	<div class="main-wrapper">

		<%@ include file="NavBar.jsp"%>

		<!-- ========================
			Start Page Content
		========================= -->

		<div class="page-wrapper">
			<div class="content">

				<!-- Start Breadcrumb -->
				<div
					class="d-flex d-block align-items-center justify-content-between flex-wrap gap-3 mb-3">
					<div>
						<h6>Dashboard</h6>
					</div>
					<div
						class="d-flex my-xl-auto right-content align-items-center flex-wrap gap-2">
						<div class="my-xl-auto d-flex align-items-center gap-2">
							<a href="javascript:void(0);"
								class="btn btn-primary d-flex align-items-center"
								data-bs-toggle="modal" data-bs-target="#add-income"><i
								class="isax isax-add-circle5 me-1"></i>Add Expenses</a>
						</div>
					</div>
				</div>
				<!-- End Breadcrumb -->

				<!-- start row -->
				<div class="row">
					<!-- Start Credited Card -->
					<div class="col-xl-4 col-lg-6 col-md-6 d-flex">
						<div class="card invoice-report flex-fill">
							<div class="card-body ">
								<div class="d-flex align-items-center justify-content-between">
									<div
										class="d-flex align-items-center flex-column overflow-hidden">
										<div>
											<div>
												<span class="fs-14 fw-normal text-truncate mb-1">Credited
													Amount</span>
												<div>
													<h5 class="fs-16 fw-semibold me-2 mb-1">$
														${totalCredit }</h5>
												</div>

											</div>
										</div>
									</div>
									<div
										class="d-flex justify-content-between align-items-center flex-wrap">
										<span
											class="avatar avatar-md br-5  bg-transparent-success border border-success">
											<span class="text-success"><i
												class=" isax isax-bank fs-16"></i></span>
										</span>
									</div>

								</div>
								<div id="payment_report_chart_2"></div>
							</div>
							<!-- end card body -->
						</div>
						<!-- card col -->
					</div>
					<!-- end col -->
					<!-- End Credited Card -->

					<!-- Start Debited Card -->
					<div class="col-xl-4 col-lg-6 col-md-6 d-flex">
						<div class="card invoice-report  flex-fill">
							<div class="card-body">
								<div class="d-flex align-items-center justify-content-between">
									<div
										class="d-flex align-items-center flex-column overflow-hidden">
										<div>
											<div>
												<span class="fs-14 fw-normal text-truncate mb-1">Debited
													Amount</span>
												<div>
													<h5 class="fs-16 fw-semibold me-2 mb-1">$ ${totalDebit }</h5>
												</div>

											</div>
										</div>
									</div>
									<div
										class="d-flex justify-content-between align-items-center flex-wrap">
										<span
											class="avatar avatar-md br-5 bg-transparent-danger border border-danger">
											<span class="text-danger"><i class="isax isax-money"></i></span>
										</span>
									</div>
								</div>
								<div>
									<div id="payment_report_chart_4"></div>
								</div>
							</div>
							<!-- end card body -->
						</div>
						<!-- end card -->
					</div>
					<!-- end col -->

					<!-- End Debited Card -->

					<!-- Start Total Amount -->
					<div class="col-xl-4 col-lg-6 col-md-6 d-flex">
						<div class="card invoice-report flex-fill">
							<div class="card-body">
								<div class=" d-flex align-items-center justify-content-between">
									<div
										class="d-flex align-items-center flex-column overflow-hidden">
										<div>
											<div>
												<span class="fs-14 fw-normal text-truncate mb-1">Total
													Amount</span>
												<div>
													<h5 class="fs-16 fw-semibold me-2 mb-1">$
														${getTotalAmount }</h5>
												</div>

											</div>
										</div>
									</div>
									<div
										class="d-flex justify-content-between align-items-center flex-wrap">
										<span class="avatar avatar-md br-5  border border-warning">
											<span class="text-warning"><i
												class="isax isax-empty-wallet"></i></span>
										</span>
									</div>
								</div>
								<div>
									<div id="payment_report_chart_3"></div>
								</div>
							</div>
							<!-- end card body -->
						</div>
						<!-- end card -->
					</div>
					<!-- end col -->
					<!-- End Total -->

				</div>
				<!-- end row -->

				<!-- start row -->
				<div class="row">

					<!-- Start Recent Transactions -->
					<div class="col-lg">
						<div class="card">
							<div class="card-body">
								<div
									class="d-flex align-items-center justify-content-between gap-2 flex-wrap mb-3">
									<h6 class="mb-1">Recent Transactions</h6>
									<a href="transactions" class="btn btn-sm btn-dark mb-1">View
										all</a>
								</div>
								<div class="table-responsive border table-nowrap">
									<table class="table table-nowrap datatable">
										<thead>
											<tr>
												<th class="no-sort">ID</th>
												<th>Date</th>
												<th class="no-sort">Category</th>
												<th class="no-sort">Credit/Debit</th>
												<th class="no-sort">Amount</th>
												<th class="no-sort">Actions</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="exp" items="${list}">
												<tr>
													<td>${exp.id}</td>
													<td>${exp.date}</td>
													<td>${exp.category}</td>
													<td>${exp.pay_type}</td>
													<!-- Will show Credit or Debit -->
													<td><span
														class="<c:out value='${exp.pay_type == "Credit" ? "text-success" : "text-danger"}'/>">
															${exp.amount} </span></td>

													<!-- Will show the respective amount -->

													<td class="action-item d-flex align-items-center gap-2">
														<a href="javascript:void(0);"
														class="dropdown-item d-flex align-items-center border-0 editBtn"
														data-id="${exp.id}" data-category="${exp.category}"
														data-date="${exp.date}" data-amount="${exp.amount}"
														data-pay_mode="${exp.pay_mode}"
														data-pay_type="${exp.pay_type}"
														data-description="${exp.description}"
														data-bs-toggle="modal" data-bs-target="#details_income">
															<button class="border-0 bg-transparent">
																<i class="isax isax-eye me-2"></i>
															</button>
													</a>
													 <a href="javascript:void(0);"
														class="dropdown-item d-flex align-items-center border-0 editBtn"
														data-id="${exp.id}" data-category="${exp.category}"
														data-date="${exp.date}" data-amount="${exp.amount}"
														data-pay_mode="${exp.pay_mode}"
														data-pay_type="${exp.pay_type}"
														data-description="${exp.description}"
														data-bs-toggle="modal" data-bs-target="#edit_income">
															<button class="border-0 bg-transparent">
																<i class="isax isax-edit me-2"></i>
															</button>
													</a> 
													<a href="javascript:void(0);"
														class="dropdown-item d-flex align-items-center border-0 deleteBtn"
														data-id="${exp.id}" data-bs-toggle="modal"
														data-bs-target="#delete_modal">
															<button class="border-0 bg-transparent">
																<i class="isax isax-trash me-2"></i>
															</button>
													</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- end card body -->
						</div>
						<!-- end card -->
					</div>
					<!-- end col -->
					<!-- End Recent Transactions -->


				</div>
				<!-- end row -->
			</div>


			<!-- Start Footer-->
			<div
				class="footer d-sm-flex align-items-center justify-content-between bg-white py-2 px-4 border-top">
				<p class="text-dark mb-0">
					&copy; 2025 <a href="javascript:void(0);" class="link-primary">Vedant.</a>,
					All Rights Reserved
				</p>
				<p class="text-dark">Version : 0.0.1</p>
			</div>
			<!-- End Footer-->

		</div>

		<!-- ========================
			End Page Content
		========================= -->

	</div>

	<!-- Start Add Modal  -->
	<div id="add-income" class="modal fade">
		<div class="modal-dialog modal-dialog-centered modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Add Expense</h4>
					<button type="button"
						class="btn-close btn-close-modal custom-btn-close"
						data-bs-dismiss="modal" aria-label="Close">
						<i class="fa-solid fa-x"></i>
					</button>
				</div>
				<form action="insert">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Category</label> <select
										name="category" id="category" class="form-control">
										<option value="Select Category">Select Category</option>
										<option value="Food">Food & Drink</option>
										<option value="Housing">Housing</option>
										<option value="Transportation">Transportation</option>
										<option value="Shopping">Shopping</option>
										<option value="Health">Health & Fitness</option>
										<option value="Travel">Travel</option>
										<option value="Gift">Gift & Donation</option>
										<option value="Other">Other</option>
									</select>

								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Date <span
										class="text-danger">*</span></label>
									<div class="input-group position-relative mb-3">
										<input type="date" class="form-control rounded-end"
											placeholder="dd/mm/yyyy" name="date">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Amount <span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" name="amount">
								</div>
							</div>

							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Payment Mode <span
										class="text-danger">*</span></label> <select
										class="select form-control" name="pay_mode">
										<option>Select</option>
										<option value="cash">Cash</option>
										<option value="cheque">Cheque</option>
										<option value="PhonePay">PhonePay</option>
										<option value="GPay">GPay</option>
										<option value="PayTm">PayTm</option>
										<option value="Other">Other...</option>
									</select>
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label d-block">Payment Type <span
										class="text-danger">*</span></label>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="pay_type"
											id="Credited" value="Credit"> <label
											class="form-check-label">Credited</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="pay_type"
											id="Debited" value="Debit"> <label
											class="form-check-label">Debited</label>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div>
									<label class="form-label">Description</label>
									<textarea class="form-control" name="description"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div
						class="modal-footer d-flex align-items-center justify-content-between gap-1">
						<button type="button" class="btn btn-outline-white"
							data-bs-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-primary">Create</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End Add Modal -->

	<!-- Start Edit Modal  -->
	<div id="edit_income" class="modal fade">
		<div class="modal-dialog modal-dialog-centered modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Edit Income</h4>
					<button type="button"
						class="btn-close btn-close-modal custom-btn-close"
						data-bs-dismiss="modal" aria-label="Close">
						<i class="fa-solid fa-x"></i>
					</button>
				</div>
				<form action="edit">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Id <span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="id">
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Category</label> <select
										name="category" id="category" class="form-control">
										<option value="Select Category">Select Category</option>
										<option value="Food">Food & Drink</option>
										<option value="Housing">Housing</option>
										<option value="Transportation">Transportation</option>
										<option value="Shopping">Shopping</option>
										<option value="Health">Health & Fitness</option>
										<option value="Travel">Travel</option>
										<option value="Gift">Gift & Donation</option>
										<option value="Other">Other</option>
									</select>

								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Date <span
										class="text-danger">*</span></label>
									<div class="input-group position-relative mb-3">
										<input type="date" class="form-control rounded-end"
											placeholder="dd/mm/yyyy" name="date">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Amount <span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" name="amount">
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label">Payment Mode <span
										class="text-danger">*</span></label> <select
										class="select form-control" name="pay_mode">
										<option>Select</option>
										<option>Cash</option>
										<option>Cheque</option>
										<option>PhonePay</option>
										<option>GPay</option>
										<option>PayTm</option>
										<option>Other...</option>
									</select>
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<label class="form-label d-block">Payment Type <span
										class="text-danger">*</span></label>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="pay_type"
											id="Credit" value="Credit"> <label
											class="form-check-label">Credited</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="pay_type"
											id="Debit" value="Debit"> <label
											class="form-check-label">Debited</label>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div>
									<label class="form-label">Description</label>
									<textarea class="form-control" name="description"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div
						class="modal-footer d-flex align-items-center justify-content-between gap-1">
						<button type="button" class="btn btn-outline-white"
							data-bs-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-primary">Create</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End Edit Modal -->

	<!-- Start Detail Modal  -->
	<div id="details_income" class="modal fade">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Expense Details</h4>
					<button type="button"
						class="btn-close btn-close-modal custom-btn-close"
						data-bs-dismiss="modal" aria-label="Close">
						<i class="fa-solid fa-x"></i>
					</button>
				</div>
				<form action="getExpense">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-6">
								<div class="mb-3">
									<p class="fw-semibold text-dark mb-0">ID</p>
									<p>${exp.id}</p>
								</div>
								<div class="mb-3">
									<p class="fw-semibold text-dark mb-0">Amount</p>
									<p>${exp.amount }</p>
								</div>
								<div class="mb-3">
									<p class="fw-semibold text-dark mb-0">Payment Mode</p>
									<p>${exp.pay_mode }</p>
								</div>
							</div>

							<div class="col-md-6">
								<div class="mb-3">
									<p class="fw-semibold text-dark mb-0">Category</p>
									<p>${exp.category }</p>
								</div>
								<div class="mb-3">
									<p class="fw-semibold text-dark mb-0">Date</p>
									<p>${exp.date }</p>
								</div>
								<div class="mb-3">
									<p class="fw-semibold text-dark mb-0">Payment Type</p>
									<p>${exp.pay_type }</p>
								</div>
							</div>
							<div>
								<p class="fw-semibold text-dark mb-0">Description</p>
								<p>${exp.description }</p>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End Detail Modal -->

	<!-- Start Delete Modal  -->
	<div class="modal fade" id="delete_modal">
		<div class="modal-dialog modal-dialog-centered modal-sm">
			<div class="modal-content">
				<div class="modal-body text-center">
					<div class="mb-3">
						<img src="assets/img/icons/delete.svg" alt="img">
					</div>
					<h6 class="mb-1">Delete Expense</h6>
					<p class="mb-3">Are you sure, you want to delete expense?</p>
					<div class="d-flex justify-content-center">
						<a href="javascript:void(0);" class="btn btn-outline-white me-3"
							data-bs-dismiss="modal">Cancel</a> <a href="dashboard-page"
							id="confirmDelete" class="btn btn-primary">Yes, Delete</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Delete Modal  -->
	<!-- End Wrapper -->

	<script>
	document.querySelectorAll('.editBtn').forEach(btn => {
	    btn.addEventListener('click', function () {
	        // Get data from button attributes
	        const id = this.getAttribute('data-id');
	        const category = this.getAttribute('data-category');
	        const date = this.getAttribute('data-date');
	        const amount = this.getAttribute('data-amount');
	        const payMode = this.getAttribute('data-pay_mode');
	        const payType = this.getAttribute('data-pay_type');
	        const description = this.getAttribute('data-description');

	        // Fill modal fields
	        document.querySelector('#edit_income input[name="id"]').value = id;
	        document.querySelector('#edit_income select[name="category"]').value = category;
	        document.querySelector('#edit_income input[name="date"]').value = date;
	        document.querySelector('#edit_income input[name="amount"]').value = amount;
	        document.querySelector('#edit_income select[name="pay_mode"]').value = payMode;

	        // Radio buttons
	        if (payType.toLowerCase() === "credit" || payType.toLowerCase() === "credit") {
	            document.querySelector('#edit_income input[value="Credit"]').checked = true;
	        } else if (payType.toLowerCase() === "debit" || payType.toLowerCase() === "debit") {
	            document.querySelector('#edit_income input[value="Debit"]').checked = true;
	        }

	        // Textarea
	        document.querySelector('#edit_income textarea[name="description"]').value = description;
	    });
	});

</script>


	<script>
    let deleteId = null;

    // When delete icon is clicked
    document.querySelectorAll('.deleteBtn').forEach(btn => {
        btn.addEventListener('click', function () {
            deleteId = this.getAttribute('data-id');
        });
    });

    // When "Yes, Delete" is clicked
    document.getElementById('confirmDelete').addEventListener('click', function () {
        if (deleteId) {
            // Redirect to controller delete mapping
            window.location.href = "deleteExpense?id=" + deleteId;
        }
    });
	</script>


	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>
	<%@ include file="footerLinks.jsp"%>