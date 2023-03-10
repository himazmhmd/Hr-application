<nav class="navbar p-0 fixed-top shadow-sm">
	<div class="w-100 d-flex justify-content-between px-3">
		<button
			class="navbar-toggler navbar-toggler align-self-center"
			type="button"
			data-bs-toggle="minimize"
		>
			<span class="icon-menu"></span>
		</button>

		<div class="position-relative">
			<div class="d-flex align-items-center">
				<span class="d-block me-3">
					<span class="d-block"> ${admin.name} </span>
					<span class="badge bg-primary navbar-collapse-subtitle float-end"
						>${admin.role.label}</span
					>
				</span>
				<figure
					class="bg-info d-flex text-secondary navbar-collapse-toggler"
					title="Toggle menu"
					data-bs-toggle="collapse"
					data-bs-target="#navbarMenuCollapse"
					style="width: 35px"
				>
					<i class="icon-user"></i>
				</figure>
			</div>

			<div id="navbarMenuCollapse" class="collapse navbar-collapse">
				<div class="navbar-card border shadow-sm">
					<div class="p-2 text-center">
						<span class="navbar-collapse-title">${admin.name}</span>
						<span class="badge bg-primary navbar-collapse-subtitle"
							>${admin.role.label}</span
						>
					</div>
					<ul class="list-group">
						<li>
							<a class="dropdown-item" href="/logout"
								><i class="icon-logout me-2"></i> Sign Out
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</nav>
