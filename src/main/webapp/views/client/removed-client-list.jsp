<%@include file="../layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="../layout/header.jsp" %>
		<link href="../../assets/css/employees.css" rel="stylesheet" />

		<title>Removed Client List</title>

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
										<h5 class="fw-bold mb-3">Removed Client List</h5>
									</div>
									<div class="col-6 text-end"></div>
								</div>
								<div class="position-relative">
									<table id="dataTable" class="table table-striped w-100">
										<thead class="table-heading">
											<tr>
												<th>Name</th>
												<th>Logo</th>
												<th>Company Reg No</th>
												<th>Company Address</th>
												<th>Registere Date</th>
												<th>Mobile No</th>
												<th>Added Date</th>
												<th>Removed Date</th>
												<th>Reason</th>
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
							</div>
						</div>

						<div
							class="modal fade"
							id="addEmployeeModal"
							aria-labelledby="addEmployeeModal"
							aria-hidden="true"
						>
							<div class="modal-dialog modal-dialog-centered">
								<div
									class="modal-content"
									style="background-color: white; color: Black"
								>
									<div
										class="modal-header"
										style="
											text-align: center !important;
											justify-content: center !important;
										"
									>
										<h3 class="modal-title" style="font-weight: 700">
											Add New Employee
										</h3>
									</div>
									<div
										class="modal-body modal-body"
										id="animation"
										style="height: auto; width: auto"
									>
										<h4 style="text-align: center">
											Please Fill THe Above Details of the Employee to Add an
											Employee
										</h4>

										<div class="row add-new-employee-form-container">
											<div class="d-flex justify-content-center mb-4">
												<div class="avatar-upload m-0">
													<div class="avatar-edit" style="right: 0">
														<input
															type="file"
															id="profileImageField"
															accept=".png, .jpg, .jpeg"
															name="profileImg"
															required
														/>
														<label for="profileImageField"
															><i class="fas fa-pencil-alt"></i
														></label>
													</div>
													<div class="avatar-preview">
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
										</div>
										<div class="row add-new-employee-form-container">
											<div class="col-5">
												<label
													for="formFileSm"
													class="form-label"
													style="font-weight: 600"
													>Name</label
												>
											</div>
											<div class="col-1">:</div>
											<div class="col-6">
												<input
													class="form-control form-control-sm"
													id="nameEn"
													type="text"
													name="nameEn"
													autocomplete="off"
													placeholder="Name"
													required
												/>
											</div>
										</div>
										<div class="row add-new-employee-form-container">
											<div class="col-5">
												<label
													for="formFileSm"
													class="form-label"
													style="font-weight: 600"
													>Address</label
												>
											</div>
											<div class="col-1">:</div>
											<div class="col-6">
												<input
													class="form-control form-control-sm"
													id="nameEn"
													type="text"
													name="nameEn"
													autocomplete="off"
													placeholder="Address"
													required
												/>
											</div>
										</div>
										<div class="row add-new-employee-form-container">
											<div class="col-5">
												<label
													for="formFileSm"
													class="form-label"
													style="font-weight: 600"
													>Mobile No</label
												>
											</div>
											<div class="col-1">:</div>
											<div class="col-6">
												<input
													class="form-control form-control-sm"
													id="nameEn"
													type="text"
													name="nameEn"
													autocomplete="off"
													placeholder="Mobile No"
													required
												/>
											</div>
										</div>
									</div>

									<div
										class="modal-footer"
										style="padding: 0px !important; margin: 0px !important"
									>
										<div class="container-fluid">
											<div
												class="row"
												style="padding: 0px !important; margin: 0px !important"
											>
												<div
													class="col-6"
													style="
														padding: 0px !important;
														margin: 0px !important;
														border-right: 1px black solid;
													"
												>
													<input
														class="btn-cancel"
														type="button"
														placeholder="Cancel"
														style="
															width: 100%;
															background-color: white;
															color: black;
															font-weight: 700;
															border: none;
															padding: 5px;
														"
														value="Submit"
													/>
												</div>
												<div
													class="col-6"
													style="
														padding: 0px !important;
														margin: 0px !important;
													"
												>
													<input
														class="btn-cancel"
														type="button"
														placeholder="Cancel"
														style="
															width: 100%;
															background-color: white;
															color: black;
															font-weight: 700;
															border: none;
															padding: 5px;
														"
														value="Cancel"
													/>
												</div>
											</div>
										</div>
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

		<script src="${jsPath}/client/client.js"></script>
	</body>
</html>
