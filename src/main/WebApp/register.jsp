<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<!DOCTYPE html>
	<html lang="en">
	
	  <head>
		<title>Grid </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		 
	  </head>
	<body>
		 <div class="container-fluid" >
			<div class="row">
				<div class="col-lg-2 col-md" style="height: 100vh; background-color: violet;">
	
				</div >
				<div class="col-lg-8 col-12 p-0" >
					<div style="background-color: violet; height: 10vh;"></div>
					<div class="px-3" style=" height: 80vh;">
					  <div class="text-center " style="height: 6vh;"> <h4>Admin Registration </h4> </div>
						
					  <form class="text-center " action="/register" method="post">
						 
						<input class="form-control input-lg" type="number" placeholder="Id" name="t1">
						<br> 
						<input class="form-control input-lg" type="text" placeholder="First Name" name="t2">
						<br> 
						<input class="form-control input-lg" type="text" placeholder="Last Name" name="t3">
						<br> 
						<input class="form-control input-lg" type="text" placeholder="User Name" name="t4">
						<br> 
						<input class="form-control input-lg" type="text"  placeholder="Gender" name="t5">
						<br>
						<input class="form-control input-lg" type="number" placeholder="Contact Number" name="t6">
						<br> 
						<input class="form-control input-lg" type="text" placeholder="Email" name="t7">
						<br> 
						<input class="form-control input-lg" type="password" placeholder="Password" name="t8">
						<br> 
						<button type="submit" class="btn btn-info">Add Admin</button>
						
						</form>
	
					</div>
					<div  style="background-color: violet; height: 10vh;"></div>
				</div>
				<div class="col-lg-2" style="height: 100vh; background-color: violet;">
					
				</div>
			</div>
	
		 </div>
	</body>
	</html>