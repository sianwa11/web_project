$(document).ready(function(){

	var ctx = $("#pie-chartcanvas-1");

	var data = {
		labels: ["Primary", "Secondary", "University","ShortCourses","Masters"],
		datasets: [
			{
				label: "Benefactors",
				data: [10, 50, 20, 15, 5],
				backgroundColor: [
                    "#FAEBD7",
                    "#DCDCDC",
                    "#E9967A",
                    "#F5DEB3",
                    "#9ACD32"
                ],
                borderColor: [
                    "#E9DAC6",
                    "#CBCBCB",
                    "#D88569",
                    "#E4CDA2",
                    "#89BC21"
                ],
                borderWidth: [1, 1, 1, 1, 1]
			}
		]
	};

	var options = {
		title: {
			display: true,
			position: "top",
			text: "Our Beneficiaries",
			fontSize: 18,
			fontColor: "#111"
		},
		legend : {
			display: true,
			position: "bottom"
		}
	};

	var chart = new Chart(ctx, {
		type: "pie",
		data: data,
		options: options
	});
});