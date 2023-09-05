<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title> Admin login page</title>
		
		<style>
			*{
		box-sizing: border-box;
	}
	body{
		font-family:poppins;
		font-size: 16px;
		color:#fff;
	}
	.wrapper{
		background-color: rgba(0,0,0,0.5);
		margin: auto;
		padding: 40px;
		border-radius: 5px;
		box-shadow: 0 0 10px #000;
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
		width: 500px;
		height: 430px;
	}
	.wrapper:before{
		background-image:url(img5.jpg) ;
		width: 100%;
		height: 100%;
		-webkit-background-size:cover;
		background-size: cover;
		content: '';
		position: fixed;
		left: 0;
		right: 0;
		top: 0;
		z-index: -1;
		display: block;
		filter: blur(3px);
	}
	.wrapper .header-text{
		font-size: 32px;
		font-weight: 600;
		padding-bottom: 30px;
		text-align: center;
	}
	.wrapper input{
		margin: 10px 0;
		border: none;
		padding: 10px;
		border-radius: 5px;
		width: 100%;
		font-size: 16px;
		font-family: poppins;
	}
	.wrapper label{
		position: relative;
		margin-left: 5px;
		margin-right: 10px;
		top: 5px;
		display: inline-block;
		width: 20px;
		height: 20;
		cursor: pointer;
	}
	.wrapper label:before{
		content:'';
		display: inline-block;
		width: 20px;
		height: 20px;
		border-radius: 5px;
		position:absolute;
		left: 0;
		bottom: 1px;
		background-color: #ddd;
	}
	.wrapper input[type=checkbox]:checked + label:before{
		content: '\2713';
		font-size: 20px;
		color: #262626;
		text-align: center;
		line-height: 20px;
	}
	.wrapper span{
		font-size: 14px;
	}
	.wrapper button{
		background-color:rgb(7, 7, 121);
		color: #fff;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		width: 100%;
		font-size: 18px;
		padding: 10px;
		margin: 20px 0;
	}
	span a{
		color: #ddd;
	}
	
	
		</style>
	</head>
	<body>
		<div class="wrapper" style="height: 70vh;">
			<div class="header-text">Change Password Here</div>
			<form action="/updatepassword" method="post">
			<input type="text" placeholder="Enter User Id" name="t1"> 
			<input type="password" placeholder="Enter Old Password" name="t2"> 
            <input type="password" placeholder="Enter New Password" name="t3"> 
            <input type="password" placeholder="Enter Confirm Password" name="t4"> 
			<button type="submit">Update</button>
		</form>
		</div>
	</body>
	</html>