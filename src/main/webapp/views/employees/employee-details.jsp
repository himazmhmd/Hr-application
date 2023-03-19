<%@include file="../layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="../layout/header.jsp" %>
		<link href="../../assets/css/employees.css" rel="stylesheet" />

		<title>Employee Details</title>

		<link
			rel="stylesheet"
			href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css"
		/>

		<link
			href="//cdn.jsdelivr.net/npm/@sweetalert2/theme-material-ui/material-ui.css"
			rel="stylesheet"
		/>
	</head>
	<body>
		<div class="h-100">
			<%@include file="../layout/nav-layout.jsp" %>

			<div class="main-panel">
				<div class="content-wrapper">
					<main class="content">
						<div class="row">
							<div class="content-card shadow-sm">
								<div class="row">
									<div class="col-6">
										<h5 class="fw-bold mb-3">Employee Details</h5>
									</div>
									<div class="col-6 text-end"></div>
								</div>
								<div class="row">
									<div class="col-4 p-4 employee-details-rating-container">
										<div class="row justify-content-center">
											<div
												class="avatar-upload m-0 justify-content-center"
												style="display: inline-block; margin: 10px auto"
											>
												<div
													class="avatar-preview justify-content-center"
													style="margin: auto"
												>
													<div
														id="profileImagePreview"
														style="
															background-image: url(${imgPath}/no-image-found.png);
														"
														data-default="${imgPath}/no-image-found.png"
													></div>
												</div>
											</div>
										</div>
										<div class="row p-2 justify-content-center">
											<h3 style="text-align: center">Romeo</h3>
										</div>

										<div class="row p-2 justify-content-center">
											<img
												src="${imgPath}/5-star.png"
												style="width: 50%; height: auto"
											/>
										</div>
										<div class="text-center">
											<div class="pt-3">
												<h5>Employee comunication</h5>
												<img
													src="${imgPath}/5-star.png"
													style="width: 30%; height: auto"
												/>
											</div>
											<div class="pt-3">
												<h5>Work as described</h5>
												<img
													src="${imgPath}/5-star.png"
													style="width: 30%; height: auto"
												/>
											</div>
											<div class="pt-3">
												<h5>Recommend to a friend</h5>
												<img
													src="${imgPath}/5-star.png"
													style="width: 30%; height: auto"
												/>
											</div>
										</div>
									</div>

									<div
										class="col-8 p-4 employee-details-personal-profile-container"
									>
										<div class="d-flex justify-content-end">
											<div class="">
												<button type="button" class="btn btn-danger">
													Reject
												</button>
											</div>
											<div class="">
												<button type="button" class="btn btn-primary mt-1">
													Approve
												</button>
											</div>
										</div>
										<div>
											<div class="row p-2">
												<div class="col-2">
													<h6>Full name</h6>
												</div>
												<div class="col-6">
													<p>Rex P Romeo</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-2">
													<h6>Description</h6>
												</div>
												<div class="col-6">
													<p>
														Lorem ipsum dolor sit amet, consectetur adipiscing
														elit, sed do eiusmod tempor incididunt ut labore et
														dolore magna aliqua. Ut enim ad minim veniam, quis
														nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo consequat. Duis aute irure dolor in
														reprehenderit in voluptate velit esse cillum dolore
														eu fugiat nulla pariatur. Excepteur sint occaecat
														cupidatat non proident, sunt in culpa qui officia
														deserunt mollit anim id est laborum.Lorem ipsum
														dolor sit amet, consectetur adipiscing elit, sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo consequat. Duis aute irure dolor in
														reprehenderit in voluptate velit esse cillum dolore
														eu fugiat nulla pariatur. Excepteur sint occaecat
														cupidatat non proident, sunt in culpa qui officia
														deserunt mollit anim id est labor
													</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-2">
													<h6>Email</h6>
												</div>
												<div class="col-6">
													<p>johndoe@gmail.com</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-2">
													<h6>Mobile</h6>
												</div>
												<div class="col-6">
													<p>+974 0000 0000</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-2">
													<h6>Address</h6>
												</div>
												<div class="col-6">
													<p>Doha, Qatar</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-2">
													<h6>Date of Birth</h6>
												</div>
												<div class="col-6">
													<p>12 - 12 -2000</p>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="position-relative mt-5">
									<h5>Project History</h5>
									<table id="dataTable" class="table table-striped w-100 mt-4">
										<thead class="table-heading">
											<tr>
												<th>Name</th>
												<th>Image</th>
												<th>Address</th>
												<th>Joint Date</th>
												<th>Employee Status</th>
												<th>Client</th>
												<th>Accepted On</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="1000" class="text-center">
													<span class="d-block py-3">No result found!</span>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="content-loader" style="display: none">
										<section>Loading...</section>
									</div>
								</div>

								<div class="position-relative mt-5">
									<h5>Client History</h5>
									<table id="dataTable" class="table table-striped w-100 mt-4">
										<thead class="table-heading">
											<tr>
												<th>Name</th>
												<th>Logo</th>
												<th>Company Reg No</th>
												<th>Company Address</th>
												<th>Registere Date</th>
												<th>Mobile No</th>
												<th>Added Date</th>
												<th>No. of Employees</th>
												<th>No. of Projects</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="1000" class="text-center">
													<span class="d-block py-3">No result found!</span>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="content-loader" style="display: none">
										<section>Loading...</section>
									</div>
								</div>

								<div class="position-relative mt-5">
									<h5>Application History</h5>
									<table id="dataTable" class="table table-striped w-100 mt-4">
										<thead class="table-heading">
											<tr>
												<th>Name</th>
												<th>Image</th>
												<th>Address</th>
												<th>Joint Date</th>
												<th>Employee Status</th>
												<th>Client</th>
												<th>Accepted On</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="1000" class="text-center">
													<span class="d-block py-3">No result found!</span>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="content-loader" style="display: none">
										<section>Loading...</section>
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>

				<%@include file="../layout/footer.jsp" %>
			</div>
		</div>

		<%@include file="../layout/bottom.jsp" %>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"
			integrity="sha512-RNLkV3d+aLtfcpEyFG8jRbnWHxUqVZozacROI4J2F1sTaDqo1dPQYs01OMi1t1w9Y2FdbSCDSQ2ZVdAC8bzgAg=="
			crossorigin="anonymous"
			referrerpolicy="no-referrer"
		></script>

		<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>

		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>

		<script src="${jsPath}/employees/employee-details
        .js"></script>
	</body>
</html>
