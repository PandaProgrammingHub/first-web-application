<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>J2EE WEB APP </title>
<link href="webjars/bootswatch/4.2.1/materia/bootstrap.min.css" rel="stylesheet">
</head>
<body class="jumbotron">
	<h1>Welcome ${username}</h1>
	 <p>Your Todo's are : </p>
	 <ul class="list-group">
	 <c:forEach items="${todos}" var="todo">
	 	<li class="list-group-item d-flex justify-content-between align-items-center">
    		${todo.name}
    		<a type="button" href="/delete-todo.do?todo=${todo.name}" class="btn text-color-black btn-danger  btn-sm" style="color: #fff;">Danger</a>
  		</li>
	 </c:forEach>
	</ul>
	<hr />
	<div class="card bg-light mb-3">
	<div class="card-header"><b>Add Todo List</b></div>
	<div class="card-body">
	<form action="todo.do" method="post">
	  <fieldset>
	  	<div class="form-group">
	      <label for="todo">Todo </label>
	      <input type="text" class="form-control" id="todo" name="todo" aria-describedby="emailHelp" placeholder="Enter Todo">
	    </div>
	    <button type="submit" class="btn btn-primary">Submit</button>
	  </fieldset>
	 </form>
	 </div>
	</div>
</body>
</html>