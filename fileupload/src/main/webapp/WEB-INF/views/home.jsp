<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Upload file</title>
</head>
<body>
	<form method="POST" action="uploadFile" enctype="multipart/form-data">


		<select name="dept">
			<option value="ECIB">ECIB</option>
			<option value="Policy">Policy</option>
			<option value="PEB">PEB</option>
			<option value="BUD">BUD</option>
		</select> <br/>
		File to upload: <input type="file" name="file" ><br /> 
		Name: <input type="text" name="name"><br /> <br />
		<input type="submit" value="Upload" > Press here to upload the file!
	</form>	


</body>
</html>
