 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>J2EE WEB APP </title>
<link href="webjars/bootswatch/4.2.1/materia/bootstrap.min.css" rel="stylesheet">
</head>
<body class="jumbotron">
	<div class="alert alert-dismissible alert-danger">
  		<button type="button" class="close" data-dismiss="alert">&times;</button>
  		<strong>${errorMessage}</strong>
	</div>
	<form action="login.do" method="post">
	  <fieldset>
	  	<div class="form-group">
	      <label for="username">User Name</label>
	      <input type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp" placeholder="Enter Email">
	    </div>
	    <div class="form-group">
	      <label for="password">Password</label>
	      <input type="password" class="form-control" id="password" name="password" placeholder="Password">
	    </div>
	    <button type="submit" class="btn btn-primary">Submit</button>
	  </fieldset>
	 </form>
</body>
</html>