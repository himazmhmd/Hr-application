<%@include file="../layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="../layout/header.jsp" %>
		<link href="../../assets/css/dashboard.css" rel="stylesheet" />

		<title>Employee List</title>

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
									<h5 class="fw-bold mb-3">Dashboard</h5>
								</div>
								<div class="row">
									<div class="col-3">
										<div class="m-4 count-container">
											<div class="row client-count-heading-container-client">
												<div class="col-2">
													<img
														src="${imgPath}/client.png"
														class="count-icons"
													/>
												</div>
												<div class="col-10">
													<span class="client-count-heading">Clients</span>
												</div>
											</div>
											<div class="row">
												<span class="dashboard-count"> 1,000,000,000 </span>
											</div>
										</div>
									</div>
									<div class="col-3">
										<div class="m-4 count-container">
											<div
												class="row client-count-heading-container-total-employees"
											>
												<div class="col-2">
													<img
														src="${imgPath}/client.png"
														class="count-icons"
													/>
												</div>
												<div class="col-10">
													<span class="client-count-heading"
														>Total Employees</span
													>
												</div>
											</div>
											<div class="row">
												<span class="dashboard-count"> 1,000,000,000 </span>
											</div>
										</div>
									</div>
									<div class="col-3">
										<div class="m-4 count-container">
											<div
												class="row client-count-heading-container-accepted-count"
											>
												<div class="col-2">
													<img
														src="${imgPath}/client.png"
														class="count-icons"
													/>
												</div>
												<div class="col-10">
													<span class="client-count-heading"
														>Accepted Count</span
													>
												</div>
											</div>
											<div class="row">
												<span class="dashboard-count"> 1,000,000,000 </span>
											</div>
										</div>
									</div>
									<div class="col-3">
										<div class="m-4 count-container">
											<div class="row client-count-heading-container-projects">
												<div class="col-2">
													<img
														src="${imgPath}/client.png"
														class="count-icons"
													/>
												</div>
												<div class="col-10">
													<span class="client-count-heading">Projects</span>
												</div>
											</div>
											<div class="row">
												<span class="dashboard-count"> 1,000,000,000 </span>
											</div>
										</div>
									</div>
								</div>
								<div class="row m-4">
									<div class="col-4">
										<div class="p-4 acceptance-rate-container"></div>
									</div>
									<div class="col-8">
										<div class="p-4 acceptance-rate-container-chart">
											<div id="chart"></div>
										</div>
									</div>
								</div>
								<div class="row m-4 p-4 employees-chart-container">
									<div id="employeesChart"></div>
								</div>
								<div class="row m-4 p-4 employees-chart-container">
									<div id="employeesByClient"></div>
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
		<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
		<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>

		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>

		<script src="${jsPath}/dashboard/dashboard.js"></script>
	</body>
</html>
