$(document).ready(function(){
	$.ajax({
		url: "http://localhost/web/Chartjs/data.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var id = [];
			var year = [];
			var no_of_beneficiaries= [];

			for(var i in data) {
				id.push("id" + data[i].id);
				year.push(data[i].year);
				no_of_beneficiaries.push(data[i].no_of_beneficiaries);

			}

			var chartdata = {
				labels: year,
				datasets: [
						{
							label: 'No of beneficiaries',
							backgroundColor: 'rgba(200, 200, 200, 0.75)',
							borderColor: 'rgba(200, 200, 200, 0.75)',
							hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
							hoverBorderColor: 'rgba(200, 200, 200, 1)',
							data: no_of_beneficiaries
						}	
				]
			};

			var ctx = $("#mycanvas");

			var barGraph = new Chart(ctx,{
				type: 'bar',
				data: chartdata
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});