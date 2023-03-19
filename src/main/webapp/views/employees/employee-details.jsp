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
										<h2 class="fw-bold mb-3">Employee Details</h2>
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
												<div class="col-3">
													<h4 style="font-weight: 900">Full name</h4>
												</div>
												<div class="col-1">
													<h4 style="font-weight: 900">-</h4>
												</div>
												<div class="col-8">
													<p>Rex P Romeo</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-3">
													<h4 style="font-weight: 900">Description</h4>
												</div>
												<div class="col-1">
													<h4 style="font-weight: 900">-</h4>
												</div>
												<div class="col-8">
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
												<div class="col-3">
													<h4 style="font-weight: 900">Email</h4>
												</div>
												<div class="col-1">
													<h4 style="font-weight: 900">-</h4>
												</div>
												<div class="col-8">
													<p>johndoe@gmail.com</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-3">
													<h4 style="font-weight: 900">Mobile</h4>
												</div>
												<div class="col-1">
													<h4 style="font-weight: 900">-</h4>
												</div>
												<div class="col-8">
													<p>+974 0000 0000</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-3">
													<h4 style="font-weight: 900">Address</h4>
												</div>
												<div class="col-1">
													<h4 style="font-weight: 900">-</h4>
												</div>
												<div class="col-8">
													<p>Doha, Qatar</p>
												</div>
											</div>
											<div class="row p-2">
												<div class="col-3">
													<h4 style="font-weight: 900">Date of Birth</h4>
												</div>
												<div class="col-1">
													<h4 style="font-weight: 900">-</h4>
												</div>
												<div class="col-8">
													<p>12 - 12 -2000</p>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div
									class="card position-relative mt-5"
									style="padding: 30px; border-radius: opx !important"
								>
									<h3>Project History</h3>
									<table id="dataTable" class="table table-striped w-100 mt-4">
										<thead class="table-heading">
											<tr style="text-align: center">
												<th><h4 style="font-weight: 900">Company</h4></th>
												<th><h4 style="font-weight: 900">Name</h4></th>
												<th><h4 style="font-weight: 900">Position</h4></th>
												<th>
													<h4 style="font-weight: 900">Responsibility</h4>
												</th>
												<th><h4 style="font-weight: 900">Start Date</h4></th>
												<th><h4 style="font-weight: 900">End Date</h4></th>
												<th><h4 style="font-weight: 900">Rating</h4></th>
											</tr>
										</thead>
										<tbody>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td>Shell GTL Maintenance</td>
												<td>Scaffold In-charge</td>
												<td>
													Scaffolding, Painting, Insulation and Refractory
												</td>
												<td>August 2022 t</td>
												<td>Current Date</td>
												<td>Pending</td>
											</tr>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td>DESCON – QAFCO-6 TURN AROUND</td>
												<td>Project In-charge</td>
												<td>
													Scaffolding, Painting, Insulation and Refractory
												</td>
												<td>January 2022</td>
												<td>July 2022</td>
												<td>5.0/5.0</td>
											</tr>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td>QAFCO – Qatar Fertilizer Company</td>
												<td>Project In-charge</td>
												<td>
													Scaffolding Maintenance and Insulation/Painting
													Projects
												</td>
												<td>May 2018</td>
												<td>January 2022</td>
												<td>5.0/5.0</td>
											</tr>
										</tbody>
									</table>
									<div class="content-loader" style="display: none">
										<section>Loading...</section>
									</div>
								</div>

								<div
									class="card position-relative mt-5"
									style="padding: 30px; border-radius: opx !important"
								>
									<h3>Client History</h3>
									<table id="dataTable" class="table table-striped w-100 mt-4">
										<thead class="table-heading">
											<tr style="text-align: center">
												<th><h4 style="font-weight: 900">Name</h4></th>
												<th><h4 style="font-weight: 900">Logo</h4></th>
												<th>
													<h4 style="font-weight: 900">Company Address</h4>
												</th>
												<th>
													<h4 style="font-weight: 900">Registere Date</h4>
												</th>
												<th>
													<h4 style="font-weight: 900">Mobile No</h4>
												</th>
												<th><h4 style="font-weight: 900">Start Date</h4></th>
												<th>
													<h4 style="font-weight: 900">No. of Employees</h4>
												</th>
												<th>
													<h4 style="font-weight: 900">No. of Projects</h4>
												</th>
												<th>
													<h4 style="font-weight: 900">Rating</h4>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td><img src="${imgPath}/no-image-found.png" /></td>
												<td>Doha Qatar</td>
												<td>12-01-2020</td>
												<td>+974 1234 1234</td>
												<td>May 2021</td>
												<td>50</td>
												<td>10</td>
												<td>4.8/5.0</td>
											</tr>
										</tbody>
									</table>
									<div class="content-loader" style="display: none">
										<section>Loading...</section>
									</div>
								</div>

								<div
									class="card position-relative mt-5"
									style="padding: 30px; border-radius: opx !important"
								>
									<h3>Application History</h3>
									<table id="dataTable" class="table table-striped w-100 mt-4">
										<thead class="table-heading">
											<tr style="text-align: center">
												<th><h4 style="font-weight: 900">Company</h4></th>
												<th><h4 style="font-weight: 900">Company Logo</h4></th>
												<th>
													<h4 style="font-weight: 900">Company Rating</h4>
												</th>
												<th><h4 style="font-weight: 900">Project</h4></th>
												<th><h4 style="font-weight: 900">Position</h4></th>
												<th>
													<h4 style="font-weight: 900">Responsibility</h4>
												</th>
												<th>
													<h4 style="font-weight: 900">Applied Date</h4>
												</th>
												<th>
													<h4 style="font-weight: 900">Status</h4>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td>
													<img
														src="${imgPath}/no-image-found.png"
														style="display: block; margin: auto"
													/>
												</td>
												<td>4.8/5.0</td>
												<td>QAFCO – Qatar Fertilizer Company</td>
												<td>Project In-charge</td>

												<td>
													Scaffolding Maintenance and Insulation/Painting
													Projects
												</td>
												<td>12-01-2020</td>
												<td>
													<span
														style="
															background-color: rgb(208, 222, 0);
															color: black;
															padding: 10px;
															border-radius: 5px;
														"
														>Pending</span
													>
												</td>
											</tr>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td>
													<img
														src="${imgPath}/no-image-found.png"
														style="display: block; margin: auto"
													/>
												</td>
												<td>4.8/5.0</td>
												<td>QAFCO – Qatar Fertilizer Company</td>
												<td>Project In-charge</td>

												<td>
													Scaffolding Maintenance and Insulation/Painting
													Projects
												</td>
												<td>12-01-2020</td>
												<td>
													<span
														style="
															background-color: rgba(0, 54, 0);
															color: white;
															padding: 10px;
															border-radius: 5px;
														"
														>Accepted</span
													>
												</td>
											</tr>
											<tr style="text-align: center">
												<td>Cape East Ltd.</td>
												<td>
													<img
														src="${imgPath}/no-image-found.png"
														style="display: block; margin: auto"
													/>
												</td>
												<td>4.8/5.0</td>
												<td>QAFCO – Qatar Fertilizer Company</td>
												<td>Project In-charge</td>

												<td>
													Scaffolding Maintenance and Insulation/Painting
													Projects
												</td>
												<td>12-01-2020</td>
												<td>
													<span
														style="
															background-color: rgba(89, 0, 0);
															color: white;
															padding: 10px;
															border-radius: 5px;
														"
														>Rejected</span
													>
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
