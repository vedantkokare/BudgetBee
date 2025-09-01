<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Transactions | BudgetBee</title>
<%@ include file="headerLinks.jsp"%>
</head>

<body>

	<!-- Begin Wrapper -->
	<div class="main-wrapper">

		<%@ include file="NavBar.jsp"%>

		<!-- ========================
			Start Page Content
		========================= -->

		<div class="page-wrapper">

			<!-- Start Content -->
			<div class="content content-two">

				<!-- Page Header -->
				<div
					class="d-flex d-block align-items-center justify-content-between flex-wrap gap-3 mb-3">
					<div>
						<h6>Income</h6>
					</div>
					<div class="my-xl-auto d-flex align-items-center gap-2">
						<a href="javascript:void(0);"
							class="btn btn-primary d-flex align-items-center"
							data-bs-toggle="modal" data-bs-target="#add-income"><i
							class="isax isax-add-circle5 me-1"></i>Add Expense</a>
					</div>
				</div>
				<!-- End Page Header -->




				<!-- Start Table Search -->
				<div class="mb-3">
					<div
						class="d-flex align-items-center justify-content-between flex-wrap gap-3">
						<div class="d-flex align-items-center flex-wrap gap-2">
							<div class="table-search d-flex align-items-center mb-0">
								<div class="search-input">
									<a href="javascript:void(0);" class="btn-searchset"><i
										class="isax isax-search-normal fs-12"></i></a>
								</div>
							</div>
							<a
								class="btn btn-outline-white fw-normal d-inline-flex align-items-center"
								href="javascript:void(0);" data-bs-toggle="offcanvas"
								data-bs-target="#customcanvas"> <i
								class="isax isax-filter me-1"></i>Filter
							</a>
						</div>
						<div class="d-flex align-items-center flex-wrap gap-2">
							<div class="dropdown">
								<a href="javascript:void(0);"
									class="dropdown-toggle btn btn-outline-white d-inline-flex align-items-center fw-medium"
									data-bs-toggle="dropdown"> <i class="isax isax-sort me-1"></i>
									Sort By : <span class="fw-normal ms-1">Latest</span>
								</a>
								<ul class="dropdown-menu  dropdown-menu-end">
									<li><a href="javascript:void(0);" class="dropdown-item">Latest</a>
									</li>
									<li><a href="javascript:void(0);" class="dropdown-item">Oldest</a>
									</li>
								</ul>
							</div>

						</div>
					</div>



					<!-- Filter Info -->
					<div class="align-items-center gap-2 flex-wrap filter-info mt-3">
						<h6 class="fs-13 fw-semibold">Filters</h6>
						<span class="tag bg-light border rounded-1 fs-12 text-dark badge"><span
							class="num-count d-inline-flex align-items-center justify-content-center bg-success fs-10 me-1">1</span>Payment
							Mode Selected<span class="ms-1 tag-close"><i
								class="fa-solid fa-x fs-10"></i></span></span> <span
							class="tag bg-light border rounded-1 fs-12 text-dark badge"><span
							class="num-count d-inline-flex align-items-center justify-content-center bg-success fs-10 me-1">1</span>$10,000
							- $25,500<span class="ms-1 tag-close"><i
								class="fa-solid fa-x fs-10"></i></span></span> <a href="#"
							class="link-danger fw-medium text-decoration-underline ms-md-1">Clear
							All</a>
					</div>
					<!-- /Filter Info -->

				</div>
				<!-- End Table Search -->

				<!-- Table List Start -->
				<div class="col-lg">
					<div class="card">
						<div class="card-body">
							<div
								class="d-flex align-items-center justify-content-between gap-2 flex-wrap mb-3">
								<h6 class="mb-1">All Transactions</h6>
							</div>
							<div class="table-responsive border table-nowrap">
								<div class="table-responsive">
									<table class="table table-nowrap datatable">
										<thead>
											<tr>
												<th class="no-sort">ID</th>
												<th>Date</th>
												<th class="no-sort">Reference Number</th>
												<th class="no-sort">Description</th>
												<th class="no-sort">Amount</th>
												<th>Payment Mode</th>
												<th class="no-sort">Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="javascript:void(0);"
													data-bs-toggle="modal" data-bs-target="#details_income">INC00012</a></td>
												<td>07 Aug 2024</td>
												<td>REF12831</td>
												<td>Server maintenance</td>
												<td>
													<p class="text-dark">$2,10,000</p>
												</td>
												<td>
													<p class="text-dark">Cash</p>
												</td>
												<td class="action-item"><a href="javascript:void(0);"
													data-bs-toggle="dropdown"> <i class="isax isax-more"></i>
												</a>
													<ul class="dropdown-menu">
														<li><a href="javascript:void(0);"
															class="dropdown-item d-flex align-items-center"
															data-bs-toggle="modal" data-bs-target="#details_income"><i
																class="isax isax-eye me-2"></i>View</a></li>
														<li><a href="javascript:void(0);"
															class="dropdown-item d-flex align-items-center"
															data-bs-toggle="modal" data-bs-target="#edit_income"><i
																class="isax isax-edit me-2"></i>Edit</a></li>
														<li><a href="javascript:void(0);"
															class="dropdown-item d-flex align-items-center"
															data-bs-toggle="modal" data-bs-target="#delete_modal"><i
																class="isax isax-trash me-2"></i>Delete</a></li>
													</ul></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- end card body -->
						</div>
					</div>
					<!-- Table List End -->

				</div>
				<!-- End Content -->

				<!-- Start Footer -->
				<div
					class="footer d-sm-flex align-items-center justify-content-between bg-white py-2 px-4 border-top">
					<p class="text-dark mb-0">
						&copy; 2025 <a href="javascript:void(0);" class="link-primary">Vedant.</a>,
						All Rights Reserved
					</p>
					<p class="text-dark">Version : 0.0.1</p>
				</div>
				<!-- End Footer -->

			</div>

			<!-- ========================
			End Page Content
		========================= -->

			<!-- Start Filter -->
			<div class="offcanvas offcanvas-offset offcanvas-end" tabindex="-1"
				id="customcanvas">
				<div class="offcanvas-header d-block pb-0">
					<div
						class="border-bottom d-flex align-items-center justify-content-between pb-3">
						<h6 class="offcanvas-title">Filter</h6>
						<button type="button"
							class="btn-close btn-close-modal custom-btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close">
							<i class="fa-solid fa-x"></i>
						</button>
					</div>
				</div>
				<div class="offcanvas-body pt-3">
					<form action="filter">
						<div class="mb-3">
							<label class="form-label">Amount</label>
							<div class="dropdown">
								<a href="javascript:void(0);"
									class="dropdown-toggle btn btn-lg bg-light  d-flex align-items-center justify-content-start fs-13 fw-normal border"
									data-bs-toggle="dropdown" data-bs-auto-close="outside"
									aria-expanded="true"> Select </a>
								<div class="dropdown-menu shadow-lg w-100 dropdown-info">
									<div class="filter-range">
										<input type="text" id="range_03">
										<p>
											Range : <span class="text-gray-9">Range : $200 - $5695</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="mb-3">
							<label class="form-label">Payment Mode</label>
							<div class="dropdown">
								<a href="javascript:void(0);"
									class="dropdown-toggle btn btn-lg bg-light  d-flex align-items-center justify-content-start fs-13 fw-normal border"
									data-bs-toggle="dropdown" data-bs-auto-close="outside"
									aria-expanded="true"> Select </a>
								<div class="dropdown-menu shadow-lg w-100 dropdown-info">
									<ul class="mb-3">
										<li><label
											class="dropdown-item px-2 d-flex align-items-center text-dark">
												<input class="form-check-input m-0 me-2" type="checkbox"
												checked> Cash
										</label></li>
										<li><label
											class="dropdown-item px-2 d-flex align-items-center text-dark">
												<input class="form-check-input m-0 me-2" type="checkbox">
												Cheque
										</label></li>
										<li><label
											class="dropdown-item px-2 d-flex align-items-center text-dark">
												<input class="form-check-input m-0 me-2" type="checkbox">
												PhonePay
										</label></li>
										<li><label
											class="dropdown-item px-2 d-flex align-items-center text-dark">
												<input class="form-check-input m-0 me-2" type="checkbox">
												GPay
										</label></li>
										<li><label
											class="dropdown-item px-2 d-flex align-items-center text-dark">
												<input class="form-check-input m-0 me-2" type="checkbox">
												Other
										</label></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="mb-3">
							<label id="dateRangePicker" class="form-label">Date Range</label>
							<div class="input-group position-relative">
								<input type="text"
									class="form-control date-range bookingrange rounded-end">
								<span class="input-icon-addon fs-16 text-gray-9"> <i
									class="isax isax-calendar-2"></i>
								</span>
							</div>
						</div>
						<div class="offcanvas-footer">
							<div class="row g-2">
								<div class="col-6">
									<a href="#" class="btn btn-outline-white w-100">Reset</a>
								</div>
								<div class="col-6">
									<button data-bs-dismiss="offcanvas"
										class="btn btn-primary w-100" id="filter-submit">Submit</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- End Filter -->

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
												class="select form-control" name="pay-mode">
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
												<input class="form-check-input" type="radio" name="pay-type"
													id="Credited" value="Credited"> <label
													class="form-check-label">Credited</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="pay-type"
													id="Debited" value="Debited"> <label
													class="form-check-label">Debited</label>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div>
											<label class="form-label">Description</label>
											<textarea class="form-control"></textarea>
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
							<h4 class="modal-title">Edit Expense</h4>
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
											<label class="form-label">Id <span
												class="text-danger">*</span></label> <input type="text"
												class="form-control" name="id">
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
												class="select form-control" name="pay-mode">
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
												<input class="form-check-input" type="radio" name="pay-type"
													id="Credited" value="Credited"> <label
													class="form-check-label">Credited</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="pay-type"
													id="Debited" value="Debited"> <label
													class="form-check-label">Debited</label>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div>
											<label class="form-label">Description</label>
											<textarea class="form-control"></textarea>
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
											<p>INC00025</p>
										</div>
										<div class="mb-3">
											<p class="fw-semibold text-dark mb-0">Amount</p>
											<p>$10,000</p>
										</div>
										<div class="mb-3">
											<p class="fw-semibold text-dark mb-0">Payment Mode</p>
											<p>Cash</p>
										</div>
									</div>

									<div class="col-md-6">
										<div class="mb-3">
											<p class="fw-semibold text-dark mb-0">Category</p>
											<p>Food</p>
										</div>
										<div class="mb-3">
											<p class="fw-semibold text-dark mb-0">Date</p>
											<p>22 Feb 2025</p>
										</div>
										<div class="mb-3">
											<p class="fw-semibold text-dark mb-0">Payment Type</p>
											<p>Credited</p>
										</div>
									</div>
									<div>
										<p class="fw-semibold text-dark mb-0">Description</p>
										<p>Payment for raw materials</p>
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
									data-bs-dismiss="modal">Cancel</a> <a href="incomes.html"
									class="btn btn-primary">Yes, Delete</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Delete Modal  -->

		</div>
		<!-- End Wrapper -->
		<%@ include file="footerLinks.jsp"%>