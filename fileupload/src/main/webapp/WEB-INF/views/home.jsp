<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Upload file</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

/* 	function ajaxcall(){
		var httpRequest = new XMLHttpRequest();
		var filename = $("#newfile").val();
	    httpRequest.open('GET', "${pageContext.request.contextPath}/Uploadajax.html?filename="+filename);
	    httpRequest.send();
	    return httpRequest.responseText;
	}
  */

 
 /* function ajaxcall()
 {
	 var name=$('#newfile').val();
	 console.log(name)
 } */
	
	
	

</script>

</head>
<body>
<div class="container">
	<form method="POST" action="uploadFile" enctype="multipart/form-data">


		<!-- <select name="dept">
			<option value="ECIB">ECIB</option>
			<option value="Policy">Policy</option>
			<option value="PEB">PEB</option>
			<option value="BUD">BUD</option>
		</select> <br/>
		
		SR. No.<input type="text" name="srno"/><br />
		
		<select name="doctype">
			<option value="Proposal">Proposal</option>
			<option value="EDD">EDD</option>
			<option value="LA">LA</option>
			<option value="others">others</option>
		</select>
		<br />
		File to upload: <input type="file" name="file" ><br /> 
		Name: <input type="text" name="name"><br /> <br />
		<input type="submit" value="Upload" > Press here to upload the file! -->
		
		<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
		<table class="table table-hover">
			<thead></thead>
			
			<tbody>
				<tr>
					<td>Dept</td>
					<td>
						<select name = "dept">
						<option value="ecib">ECIB</option>
						<option value="policy">Policy</option>
						<option value="bud">BUD</option>
						<option value="peb">PEB</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td>Serial No.</td>
					<td>
						<input type="text" name="srno"/>
					</td>
				</tr>
				
				<tr>
					<td>Document Type</td>
					<td>
						<select name = "doctype">
						<option value = "Proposal">Prosposal</option>
						<option value = "EDD">EDD</option>
						<option value = "LA">LA</option>
						<option value = "Others">Others</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td>Select File</td>
					<td>
						<input type="file" name="file">
					</td>
				</tr>
				
				<!-- <tr>
					<td>Enter name</td>
					<td>
						<input type="text" name="name">
					</td>
				</tr> -->
			</tbody>
		
		</table>
		
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			<input type="submit" value="Upload" class="btn btn-success">
		</div>
	
		</div>
		</div>
		
		
		
	
	
	</form>	
	
		<!-- <div class="col-sm-2">
			<button type="submit" value="Upload" class="btn btn-success">
			<button onclick="ajaxcall()">submit</button><input type="file" name="doc" id="newfile">
		</div>
		 -->
</div>	

</body>
</html>
