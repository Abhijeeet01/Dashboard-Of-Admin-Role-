<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		 
	</div>
	
	
		<div class="right">
		<h5>Login</h5>
		<p>Don't have an account? <a href="register.jsp">register</a> it takes less than a minute</p>
		<div class="inputs">
			<form action="/verify" method="post">
			<input type="text" placeholder="username" name="t1">
			<br>
			<input type="password" placeholder="password" name="t2">
			
			<br>
			<button type="submit">Login</button>
			
			</form>
		</div>
			
			<br><br>
			
			
	</div>
	<div class="left">
		 
    </div>
</div>


  
</body>
</html>