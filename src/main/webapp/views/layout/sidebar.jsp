<nav class="sidebar sidebar-offcanvas shadow-sm" id="sidebar">
	<a class="sidebar-logo-wrapper d-flex justify-content-center" href="#">
		<img src="${imgPath}/logo.png" alt="logo" class="sidebar-logo" />
	</a>
	<ul class="nav">
		<li class="nav-item">
			<a
				class="nav-link collapsed"
				data-bs-toggle="collapse"
				href="#employeeCollapse"
				aria-expanded="false"
				aria-controls="ui-basic"
			>
				<i class="menu-icon mdi mdi-account" style="color: silver"></i>
				<span class="menu-title" style="font-weight: 700">Employees</span>
				<i class="menu-arrow" style="font-size: large"></i>
			</a>
			<div class="collapse" id="employeeCollapse">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="${context}/employees/employee-list">
							Employee List
						</a>
					</li>
					<li class="nav-item">
						<a
							class="nav-link"
							href="${context}/employees/removed-employee-list"
						>
							Removed Employee List
						</a>
					</li>
				</ul>
			</div>
		</li>

		<li class="nav-item">
			<a
				class="nav-link collapsed"
				data-bs-toggle="collapse"
				href="#clientCollapse"
				aria-expanded="false"
				aria-controls="ui-basic"
			>
				<i class="menu-icon mdi mdi-account" style="color: silver"></i>
				<span class="menu-title" style="font-weight: 700">Clients</span>
				<i class="menu-arrow" style="font-size: large"></i>
			</a>
			<div class="collapse" id="clientCollapse">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="${context}/client/client-list">
							Client List
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${context}/client/removed-client-list">
							Removed Client List
						</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>
</nav>
