$(function () {
	let dataTable = null;

	renderAccpetanceRateChart();
	renderEmployeesChart();
	renderEmployeesByClientChart();
	function renderAccpetanceRateChart() {
		var options = {
			series: [
				{
					name: "PRODUCT A",
					data: [44, 55, 41, 67, 22, 43],
				},
				{
					name: "PRODUCT B",
					data: [13, 23, 20, 8, 13, 27],
				},
				{
					name: "PRODUCT C",
					data: [11, 17, 15, 15, 21, 14],
				},
			],
			chart: {
				type: "bar",
				height: 350,
				stacked: true,
				toolbar: {
					show: true,
				},
				zoom: {
					enabled: true,
				},
			},
			responsive: [
				{
					breakpoint: 480,
					options: {
						legend: {
							position: "bottom",
							offsetX: -10,
							offsetY: 0,
						},
					},
				},
			],
			plotOptions: {
				bar: {
					horizontal: false,
					borderRadius: 10,
					dataLabels: {
						total: {
							enabled: true,
							style: {
								fontSize: "13px",
								fontWeight: 900,
							},
						},
					},
				},
			},
			xaxis: {
				type: "datetime",
				categories: [
					"01/01/2011 GMT",
					"01/02/2011 GMT",
					"01/03/2011 GMT",
					"01/04/2011 GMT",
					"01/05/2011 GMT",
					"01/06/2011 GMT",
				],
			},
			legend: {
				position: "right",
				offsetY: 40,
			},
			fill: {
				opacity: 1,
			},
		};

		var chart = new ApexCharts(document.querySelector("#chart"), options);
		chart.render();
	}
	function renderEmployeesChart() {
		var options = {
			series: [
				{
					name: "Session Duration",
					data: [45, 52, 38, 24, 33, 26, 21, 20, 6, 8, 15, 10],
				},
				{
					name: "Page Views",
					data: [35, 41, 62, 42, 13, 18, 29, 37, 36, 51, 32, 35],
				},
				{
					name: "Total Visits",
					data: [87, 57, 74, 99, 75, 38, 62, 47, 82, 56, 45, 47],
				},
			],
			chart: {
				height: 350,
				type: "line",
				zoom: {
					enabled: false,
				},
			},
			dataLabels: {
				enabled: false,
			},
			stroke: {
				width: [5, 5, 5],
				curve: "straight",
				dashArray: [0, 0, 0],
			},
			title: {
				text: "Employees",
				align: "left",
			},
			legend: {
				tooltipHoverFormatter: function (val, opts) {
					return (
						val +
						" - " +
						opts.w.globals.series[opts.seriesIndex][opts.dataPointIndex] +
						""
					);
				},
			},
			markers: {
				size: 0,
				hover: {
					sizeOffset: 6,
				},
			},
			xaxis: {
				categories: [
					"01 Jan",
					"02 Jan",
					"03 Jan",
					"04 Jan",
					"05 Jan",
					"06 Jan",
					"07 Jan",
					"08 Jan",
					"09 Jan",
					"10 Jan",
					"11 Jan",
					"12 Jan",
				],
			},
			tooltip: {
				y: [
					{
						title: {
							formatter: function (val) {
								return val + " (mins)";
							},
						},
					},
					{
						title: {
							formatter: function (val) {
								return val + " per session";
							},
						},
					},
					{
						title: {
							formatter: function (val) {
								return val;
							},
						},
					},
				],
			},
			grid: {
				borderColor: "#f1f1f1",
			},
		};

		var chart = new ApexCharts(
			document.querySelector("#employeesChart"),
			options
		);
		chart.render();
	}

	function renderEmployeesByClientChart() {
		var options = {
			series: [
				{
					name: "Inflation",
					data: [2.3, 3.1, 4.0, 10.1, 4.0, 3.6, 3.2, 2.3, 1.4, 0.8, 0.5, 0.2],
				},
			],
			chart: {
				height: 350,
				type: "bar",
			},
			plotOptions: {
				bar: {
					borderRadius: 10,
					dataLabels: {
						position: "top", // top, center, bottom
					},
				},
			},
			dataLabels: {
				enabled: true,
				formatter: function (val) {
					return val + "%";
				},
				offsetY: -20,
				style: {
					fontSize: "12px",
					colors: ["#304758"],
				},
			},

			xaxis: {
				categories: [
					"Jan",
					"Feb",
					"Mar",
					"Apr",
					"May",
					"Jun",
					"Jul",
					"Aug",
					"Sep",
					"Oct",
					"Nov",
					"Dec",
				],
				position: "top",
				axisBorder: {
					show: false,
				},
				axisTicks: {
					show: false,
				},
				crosshairs: {
					fill: {
						type: "gradient",
						gradient: {
							colorFrom: "#D8E3F0",
							colorTo: "#BED1E6",
							stops: [0, 100],
							opacityFrom: 0.4,
							opacityTo: 0.5,
						},
					},
				},
				tooltip: {
					enabled: true,
				},
			},
			yaxis: {
				axisBorder: {
					show: false,
				},
				axisTicks: {
					show: false,
				},
				labels: {
					show: false,
					formatter: function (val) {
						return val + "%";
					},
				},
			},
			title: {
				text: "Employees By Client",
				floating: true,
				offsetY: 330,
				align: "center",
				style: {
					color: "#444",
				},
			},
		};

		var chart = new ApexCharts(
			document.querySelector("#employeesByClient"),
			options
		);
		chart.render();
	}
});
