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
			<div id="chartcontainer" style="height: 300px; width: 100%; display: none" ></div>
			<div id="chartcontainer1" style="height: 300px; width: 100%; display: none" ></div>
		</div>
		
		
		
		
	<!-- Second block -->	
		<div  class="col-sm-8" >
			<div id="chartdiv" style="height: 300px;width: 100%; display: none"></div>
			<div id="chartdiv1" style="height: 300px;width: 100%; display: none"></div>
			<div id="chartdiv2" style="height: 300px;width: 100%; display: none"></div>
			
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

function cmd(){
	drawPieChart();
	drawBasic();
}
function regManager(){
	animatePie();
	animateBars();
}


//for displaying date
var display = setInterval(function() 	
{dispTime()}, 0);

function dispTime(){
var date = new Date();
document.getElementById("date").innerHTML = date;
}


//for displaying pie chart

//load api
google.charts.load('current', {'packages':['corechart']});

//callback
google.charts.setOnLoadCallback(drawPieChart);

function drawPieChart(){
	var data = new google.visualization.DataTable();
	data.addColumn('string', 'status');
	data.addColumn('number', 'No. of policies');
	data.addRows([
		['Issued on time',8],
		['Issued late',3],
		['Other issues',2]
	]);
	
	//set chart options
	var options = {'title':'Policy issued status','width':400,'height':300};
	
	//draw chart
	var chart = new google.visualization.PieChart(document.getElementById("chartcontainer"));
	document.getElementById("chartcontainer").style.display = "block";
	document.getElementById("chartcontainer1").style.display = "none";
	chart.draw(data,options);
}





/*****************************************************************/
/*                   USING canvasjs                      */

function animatePie() {

	document.getElementById("chartdiv").style.display = "none";
	document.getElementById("chartcontainer1").style.display = "block"; 
	var chart = new CanvasJS.Chart("chartcontainer1", {
		animationEnabled: true,
		title: {
			text: "Policies Status - 2018"
		},
		data: [{
			type: "pie",
			startAngle: 24,
			yValueFormatString: "##0.00\"%\"",
			indexLabel: "{label} {y}",
			dataPoints: [
				{y: 79.45, label: "Issued on time"},
				{y: 17.31, label: "Issued late"},
				{y: 3.24, label: "Others"}
			]
		}]
	});
	chart.render();

	}

/**************************************************************************/



//for plotting the column graph
google.charts.load('current', {packages: ['corechart', 'bar']});


function drawBasic() {

	document.getElementById("chartdiv").style.display="block";
	document.getElementById("chartdiv1").style.display="none";
	document.getElementById("chartdiv2").style.display="none";
      var data = new google.visualization.DataTable();
      data.addColumn('timeofday', 'Time of Day');
      data.addColumn('number', 'Motivation Level');

      data.addRows([
        [{v: [8, 0, 0], f: '8 am'}, 1],
        [{v: [9, 0, 0], f: '9 am'}, 2],
        [{v: [10, 0, 0], f:'10 am'}, 3],
        [{v: [11, 0, 0], f: '11 am'}, 4],
        [{v: [12, 0, 0], f: '12 pm'}, 5],
        [{v: [13, 0, 0], f: '1 pm'}, 6],
        [{v: [14, 0, 0], f: '2 pm'}, 7],
        [{v: [15, 0, 0], f: '3 pm'}, 8],
        [{v: [16, 0, 0], f: '4 pm'}, 9],
        [{v: [17, 0, 0], f: '5 pm'}, 10],
      ]);

      var options = {
        title: 'Motivation Level Throughout the Day',
        hAxis: {
          title: 'Time of Day',
          format: 'h:mm a',
          viewWindow: {
            min: [7, 30, 0],
            max: [15, 50, 0]
          }
        },
        vAxis: {
          title: 'Rating (scale of 1-10)'
        }
      };

      var chart = new google.visualization.ColumnChart(
        document.getElementById('chartdiv'));

      chart.draw(data, options);
    }


function animateBars(){
	document.getElementById("chartdiv").style.display="none";
	document.getElementById("chartdiv1").style.display="block";
	document.getElementById("chartdiv2").style.display="none";
	var chart = new CanvasJS.Chart("chartdiv2", {
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
	chart.render();

	function toggleDataSeries(e) {
		if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
			e.dataSeries.visible = false;
		}
		else {
			e.dataSeries.visible = true;
		}
		chart.render();
	}

	
}



</script>

</html>
