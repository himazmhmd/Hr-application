<%@include file="../layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="../layout/header.jsp" %>

		<title>Health Card Renewal | ${siteTitle}</title>

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
							<div class="col-lg-3"></div>
							<div class="col-lg-6">
								<div class="content-card shadow-sm position-relative">
									<h4
										class="fw-bold mb-3"
										style="text-align: center; margin-top: 25px"
									>
										Renewal of Health Card
									</h4>

									<div class="row" style="margin-top: 40px">
										<div
											style="
												padding: 0px 30px 0px 30px;
												margin-left: 20%;
												margin-right: 20%;
											"
										>
											<label
												for="startDate"
												class="form-label mb-0"
												style="font-weight: 600"
												>Name</label
											>
											<input
												id="startDate"
												type="text"
												class="form-control form-control-sm date-picker"
												placeholder="Enter full name"
												autocomplete="off"
												style="margin-top: 20px; width: 60%"
											/>
										</div>
										<div
											style="
												padding: 30px 30px 0px 30px;
												margin-left: 20%;
												margin-right: 20%;
											"
										>
											<label
												for="startDate"
												class="form-label mb-0"
												style="font-weight: 600"
												>Health card number</label
											>
											<input
												id="startDate"
												type="text"
												class="form-control form-control-sm date-picker"
												placeholder="Enter health card number"
												autocomplete="off"
												style="margin-top: 20px; width: 60%"
											/>
										</div>
										<div
											style="padding: 30px; margin-left: 20%; margin-right: 20%"
										>
											<label
												for="startDate"
												class="form-label mb-0"
												style="font-weight: 600"
												>Expiry Date</label
											>
											<input
												id="startDate"
												type="date"
												class="form-control form-control-sm date-picker"
												placeholder="Enter start date"
												autocomplete="off"
												style="margin-top: 20px; width: 60%"
											/>
										</div>

										<div
											style="padding: 30px; margin-left: 20%; margin-right: 20%"
										>
											<button class="btn btn-success" style="width: 60%">
												Request
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3"></div>
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

		<script src="${jsPath}/pages/game/addInvestors.js"></script>
	</body>
</html>
