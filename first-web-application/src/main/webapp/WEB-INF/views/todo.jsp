<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootswatch/4.2.1/materia/bootstrap.min.css" rel="stylesheet">
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="/">${username}</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/todo.do">Todos<span class="sr-only">(current)</span></a>
      </li>
    </ul>
    
     <ul class="navbar-nav  navbar-right">
    <li class="nav-item">
        <a class="nav-link" href="/logout.do">Logout </a>
      </li>
    </ul>

  </div>
</nav>

	<div class="container">
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
	</div>
	

	<script src="webjars/jquery/3.3.1/jquery.min.js"></script>

</body>

</html>