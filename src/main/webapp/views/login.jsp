<%@include file="layout/jstl.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="layout/header.jsp" %>

		<link href="assets/css/login.css" rel="stylesheet" />

		<title>Login</title>
	</head>
	<body>
		<main>
			<div class="container justify-content-center">
				<div class="row">
					<div class="col-12">
						<div class="row login-container">
							<div class="col-6 login-logo-container">
								<img src="${imgPath}/logo.png" alt="logo" class="login-logo" />
							</div>
							<div class="col-6 login-form-container" >
								
									<div class="row">
												<img src="${imgPath}/login-icon.png" alt="logo" class="login-icon"/>
										
											
											
											
									</div>
									<div class="row login-heading" >
												<h2 class="login-text">Login</h2>
											</div>
								<form id="signInForm" class="pt-3">
									<div class="form-group mb-3">
										<div class="input-group">
											<input
												type="text"
												name="username"
												class="form-control"
												placeholder="Username or mobile number"
												aria-label="Username or mobile number"
												required
											/>
											<span class="input-group-text">
												<i class="icon-user"></i>
											</span>
										</div>
									</div>

									<div class="form-group mb-0">
										<div class="input-group mb-2">
											<input
												type="password"
												name="password"
												class="form-control"
												placeholder="Password"
												aria-label="Password"
												required
											/>
											<span class="input-group-text">
												<i class="icon-lock"></i>
											</span>
										</div>
									</div>
									<div class="form-group">
										<div class="form-check d-flex align-items-center m-0 p-0">
											<input
												class="form-check-input m-0"
												type="checkbox"
												name="remember-me"
												value="true"
												id="rememberMe"
											/>
											<label
												class="form-check-label ms-1 mb-0"
												for="rememberMe"
											>
												Remember me
											</label>
										</div>
									</div>
									<div class="form-group">
										<a href="${context}/accounts/pay-slip">
										
											<button
												class="btn btn-sm btn-primary"
												style="
													width: 100%;
													border-radius: 5px;
													background-color: rgb(3, 116, 145);
												"
											>
												<span class="me-2">Sign In</span>
												<span class="icon-login"></span>
											</button>
										</a>
									</div>

							
								</form>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			
		</main>

	</body>
</html>
