$(document).ready(function(){
	$.ajax({
		url:"http://localhost/web/webproject/api/data.php",
		method: "GET",
		success: function(data){
			console.log(data);
			var user_id = [];
			var company = [];
			var amount = [];
		

			for(var i in data){
				user_id.push("user_id" + data[i].user_id);
				company.push(data[i].company);
				amount.push(data[i].amount);
			
			}

			var chartdata = {
				labels: user_id,
				datasets : [
				{
					label:'amount',
					backgroundColor: 'rgba(200,200,200,0.75)',
					borderColor: 'rgba(200,200,200,0.75)',
					hoverBackgroundColor: 'rgba(200,200,200,1)',
					hoverBorderColor: 'rgba(200,200,200,1)',
					data : amount


				}
				]
			};

			var ctx = $("#mycanvas");

			var barGraph = new Chart( ctx, {
						type:'bar',
						data: chartdata
			});
		},
		error: function(data){
			console.log(data);
		}
		
	});


});