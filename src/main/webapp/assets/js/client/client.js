$(function () {
	let dataTable = null;

	renderDataTable;
	function renderDataTable() {
		dataTable = $("#dataTable").DataTable({
			serverSide: true,
			processing: true,
			ordering: false,
			language: {
				lengthMenu: "_MENU_",
				search: "",
				searchPlaceholder: "Search...",
				paginate: {
					previous: "&laquo;",
					next: "&raquo;",
				},
				zeroRecords: "No records found.",
			},
			ajax: {
				url: "TRANSACTIONS_API",
				data: getDataTableParams,
			},

			columns: [
				{ data: "nickName" },
				{ data: "mobileNumber" },
				{ data: "regDate" },
				{ data: "country" },
				{ data: "nickName" },
				{ data: "mobileNumber" },
				{ data: "regDate" },
				{ data: "country" },
			],
			dataFilter: (d) => {
				const parsedData = JSON.parse(d);
				console.log(parsedData);
				return JSON.stringify(parsedData.data);
			},

			drawCallback: function () {
				setTimeout(() => {
					$contentLoader.hide();
				}, 500);
			},
		});
	}
	$(".btn-add-employee").click(addNewClient);

	function addNewClient() {
		$("#addCompanyModal").modal("show");
	}
});
