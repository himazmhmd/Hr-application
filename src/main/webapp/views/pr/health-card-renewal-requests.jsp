<%@include file="../layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="../layout/header.jsp" %>

		<title>Health card renewal requests</title>

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
					<div
						class="content-toolbar d-flex align-items-center justify-content-between"
					>
						<h1 class="content-toolbar-title">Health card renewal requests</h1>
					</div>
					<main class="content">
						<div class="row">
							<div class="col-lg-12">
								<div class="content-card shadow-sm position-relative">
									<h5 class="fw-bold mb-3">
										Health card renewal requests List
									</h5>
									<div class="table-responsive">
										<table id="dataTable" class="table table-striped w-100">
											<thead>
												<tr>
													<th>User Name</th>
													<th>Expiry Date</th>
													<th>Requested Date</th>
													<th>Status</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="9" class="text-center">
														<span class="d-block py-3">No result found!</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="content-loader" style="display: none">
										<section>
											<div class="spinner-border text-dark" role="status"></div>
											<span>Loading...</span>
										</section>
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

		<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/dayjs/1.11.0/dayjs.min.js"
			integrity="sha512-KTFpdbCb05CY4l242bLjyaPhoL9vAy4erP1Wkn7Rji0AG6jx6zzGtKkdHc7jUOYOVSmbMbTg728u260CA/Qugg=="
			crossorigin="anonymous"
			referrerpolicy="no-referrer"
		></script>

		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
	</body>
</html>
