$(document).ready(function(){

	$.ajax({
		url: "http://localhost/web/Doughnut/api/data.php",
		type: "GET",
		success: function(data){

			console.log(data);

			var amount ={
				CompanyA : [],
				CompanyB : []
			};

			var len = data.length;

			for(var i = 0; i < len; i++){
				if(data[i].company == "CompanyA"){
					amount.CompanyA.push(data[i].amount);
				}
				else if (data[i].company == "CompanyB"){
					amount.CompanyB.push(data[i].amount);
				}
			}

			var ctx1 = $("#doughnut-chartcanvas-1");
			var ctx2 = $("#doughnut-chartcanvas-2");
			

			var data1 ={
				labels : ["user1", "user2", "user3","user4"],
				datasets : [
					{
						label: "CompanyA amount",
						data: amount.CompanyA,
						backgroundColor : [
							"#DEB887",
		                    "#A9A9A9",
		                    "#DC143C",
		                    "#F4A460",
		                    "#2E8B57"
						],
						borderColor: [
							"#CDA776",
		                    "#989898",
		                    "#CB252B",
		                    "#E39371",
		                    "#1D7A46"
						],
						borderWidth : [1, 1, 1, 1]
					}
				]
			};

			var data2 ={
				labels : ["user1", "user2", "user3","user4"],
				datasets : [
					{
						label: "CompanyB amount",
						data: amount.CompanyB,
						backgroundColor : [
							"#FAEBD7",
		                    "#DCDCDC",
		                    "#E9967A",
		                    "#F5DEB3",
		                    "#9ACD32"
						],
						borderColor : [
							"#E9DAC6",
		                    "#CBCBCB",
		                    "#D88569",
		                    "#E4CDA2",
		                    "#89BC21"
						],
						borderWidth : [1, 1, 1, 1]
					}
				]
			};

			var options = {
				title: {
					display : true,
					position: "top",
					text: "Our Benefactors",
					fontsize : 18,
					fontColor : "#111"
				},
				legend : {
					display : true,
					position: "bottom"
				}
			};

			var chart1 = new Chart(ctx1, {
				type : "pie",
				data: data1,
				options : options
			});

			var chart2 = new Chart(ctx2, {
				type : "pie",
				data : data2,
				options : options
			});
		},
		error: function(data){
			   console.log(data);
		}
	});
});