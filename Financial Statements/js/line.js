$(document).ready(function(){

	//get canvas
	var ctx = $("#line-chartcanvas");

	var data = {
		labels: ["Primary", "Secondary", "University", "Short Courses", "Masters"],
		datasets: [
			{
				label: "Male",
				data: [50,40,60,30,50],
				backgroundColor: "blue",
				borderColor: "lightblue",
				fill: false,
				lineTension: 0,
				pointRadius: 5
			},
			{
				label: "Female",
				data: [50,60,40,70,50],
				backgroundColor: "pink",
				borderColor: "lightpink",
				fill: false,
				lineTension: 0,
				pointRadius: 5
			}
		]

	};

	var options = {
		title: {
			display: true,
			position: "top",
			text: "Sponsorhip according to gender",
			fontSize: 18,
			fontColor: "#111"
		},
		legend: {
			display: true,
			position: "bottom"
		}
	}

	var chart = new Chart(ctx, {
		type:"line",
		data: data,
		options: options
	});
});