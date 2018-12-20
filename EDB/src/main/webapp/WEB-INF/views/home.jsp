<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>ECGC ExecutiveDBoard</title>
	<link rel="stylesheet" href="resources/css/style.css">
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v	5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</head>
<body>


<div class="container">
	<!-- 1st row -->
		<div class="row" style="height: 15%">
			<div class="col-md-3">
				<img src="resources/images/ecgc_logo.jpeg" alt="ecgc logo"
					style="height: 100px; width: 100px">
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<img src="resources/images/ecgc_logo2.png" alt="ecgc logo"
					style="height: 100px; width: 200px">
			</div>
			<div class="col-md-3 make-center" id="date">***DATE***</div>
		</div>

		<nav class="navbar navbar-expand-lg"
			style="background-color: #006b96;">
			<a class="navbar-brand text-white" href="https://www.ecgc.in/"
				data-toggle="tooltip" title="Click to visit www.ecgc.in"
				data-placement="bottom">ECGC</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
		
	<!-- running info -->	
	<div class="row" style="height: 8%">
		<div class="col-sm-1 text-white"></div>
		<div class="col-sm-3 bg-light border make-center p-4">Activities</div>
		<div class="col-sm-7 text-success border p-4">
			<marquee>you can check all your managerial info here</marquee>
		</div>
		<div class="col-sm-1 text-white"></div>
	</div>
	
	
	<!-- user type -->
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 make-center">
			<div class="row">
				<div class="panel panel-primary border-primary mt-2">
					<div class="panel-heading">User Type</div>
					<div class="panel-body">
						<label class="radio-inline"><input type="radio" name="optradio" onclick="cmd()" checked>CMD/ED/GM</label>
						<label class="radio-inline"><input type="radio" name="optradio" onclick="regManager()">Regional Manager</label>
						<label class="radio-inline"><input type="radio" name="optradio" onclick="branchManager()">Branch Manager</label>
					</div>
				</div>
			</div>
		
		</div>
		<div class="col-sm-2"></div>
		
	</div>
	
	
	<div class="row" style="height: 400px">
	<!-- first block -->
		<div class="col-sm-4 p-2">
			<div id="chartcontainer1" style="height: 300px; width: 100%; display: none" ></div>
			<div id="chartcontainer2" style="height: 300px; width: 100%; display: none" ></div>
			<div id="chartcontainer3" style="height: 300px; width: 100%; display: none" ></div>
		</div>
		
		
		
		
	<!-- Second block -->	
		<div  class="col-sm-8" >
			<div id="bargraph1" style="height: 300px;width: 100%; display: none"></div>
			<div id="bargraph2" style="height: 300px;width: 100%; display: none"></div>
			<div id="bargraph3" style="height: 300px;width: 100%; display: none"></div>
			
		</div>
	</div>
	
	
	<div class="row" style="height: 400px">
		<div class="col-sm-12 p-2">
		
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">First</th>
		      <th scope="col">Last</th>
		      <th scope="col">Handle</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>Mark</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td colspan="2">Larry the Bird</td>
		      <td>@twitter</td>
		    </tr>
		  </tbody>
		</table>
				
		
		</div>
		
	</div>
</div>
</body>


<!-- for plotting purpose -->
<script>



//for displaying date
var display = setInterval(function() 	
{dispTime()}, 0);

function dispTime(){
var date = new Date();
document.getElementById("date").innerHTML = date;
}


/*************************************************************/
 
window.onload = function() {
	
	cmd();
}


function cmd(){
	
	//for plotting pie chart
	document.getElementById("chartcontainer2").style.display = "none";
	document.getElementById("chartcontainer3").style.display = "none";
	document.getElementById("chartcontainer1").style.display = "block";
	
	
	
	var cmdPie = new CanvasJS.Chart("chartcontainer1", {
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		exportEnabled: true,
		animationEnabled: true,
		title: {
			text: "Desktop Browser Market Share in 2016"
		},
		data: [{
			type: "pie",
			startAngle: 25,
			toolTipContent: "<b>{label}</b>: {y}%",
			showInLegend: "true",
			legendText: "{label}",
			indexLabelFontSize: 16,
			indexLabel: "{label} - {y}%",
			dataPoints: [
				{ y: 51.08, label: "Chrome" },
				{ y: 27.34, label: "Internet Explorer" },
				{ y: 10.62, label: "Firefox" },
				{ y: 5.02, label: "Microsoft Edge" },
				{ y: 4.07, label: "Safari" },
				{ y: 1.22, label: "Opera" },
				{ y: 0.44, label: "Others" }
			]
		}]
	});
	cmdPie.render();

	
	
	
	//for plotting barghaph
	document.getElementById("bargraph3").style.display = "none";
	document.getElementById("bargraph2").style.display = "none";
	document.getElementById("bargraph1").style.display = "block";
	
	
	var cmdBar = new CanvasJS.Chart("bargraph1", {
		animationEnabled: true,
		title:{
			text: "Crude Oil Reserves vs Production, 2016"
		},	
		axisY: {
			title: "Billions of Barrels",
			titleFontColor: "#4F81BC",
			lineColor: "#4F81BC",
			labelFontColor: "#4F81BC",
			tickColor: "#4F81BC"
		},
		axisY2: {
			title: "Millions of Barrels/day",
			titleFontColor: "#C0504E",
			lineColor: "#C0504E",
			labelFontColor: "#C0504E",
			tickColor: "#C0504E"
		},	
		toolTip: {
			shared: true
		},
		legend: {
			cursor:"pointer",
			itemclick: toggleDataSeries
		},
		data: [{
			type: "column",
			name: "Proven Oil Reserves (bn)",
			legendText: "Proven Oil Reserves",
			showInLegend: true, 
			dataPoints:[
				{ label: "Saudi", y: 266.21 },
				{ label: "Venezuela", y: 302.25 },
				{ label: "Iran", y: 157.20 },
				{ label: "Iraq", y: 148.77 },
				{ label: "Kuwait", y: 101.50 },
				{ label: "UAE", y: 97.8 }
			]
		},
		{
			type: "column",	
			name: "Oil Production (million/day)",
			legendText: "Oil Production",
			axisYType: "secondary",
			showInLegend: true,
			dataPoints:[
				{ label: "Saudi", y: 10.46 },
				{ label: "Venezuela", y: 2.27 },
				{ label: "Iran", y: 3.99 },
				{ label: "Iraq", y: 4.45 },
				{ label: "Kuwait", y: 2.92 },
				{ label: "UAE", y: 3.1 }
			]
		}]
	});
	cmdBar.render();

	function toggleDataSeries(e) {
		if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
			e.dataSeries.visible = false;
		}
		else {
			e.dataSeries.visible = true;
		}
		cmdBar.render();
	}

	
}



function regManager(){
	
	//for plotting piechart
	
	
	
	//for plotting Bargraph
	document.getElementById("bargraph1").style.display = "none";
	document.getElementById("bargraph3").style.display = "none";
	document.getElementById("bargraph2").style.display = "block";
	
	var regBar = new CanvasJS.Chart("bargraph2", {
		animationEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: "Top Oil Reserves"
		},
		axisY: {
			title: "Reserves(MMbbl)"
		},
		data: [{        
			type: "column",  
			showInLegend: true, 
			legendMarkerColor: "grey",
			legendText: "MMbbl = one million barrels",
			dataPoints: [      
				{ y: 300878, label: "Venezuela" },
				{ y: 266455,  label: "Saudi" },
				{ y: 169709,  label: "Canada" },
				{ y: 158400,  label: "Iran" },
				{ y: 142503,  label: "Iraq" },
				{ y: 101500, label: "Kuwait" },
				{ y: 97800,  label: "UAE" },
				{ y: 80000,  label: "Russia" }
			]
		}]
	});
	regBar.render();
	
}






</script>

</html>
