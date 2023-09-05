<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>welcome page</title>
    <style>
        body{
    margin:0;
    padding: 0;
    font-family:Poppins;
}
.navbar{
    position: fixed;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: row;
    flex-wrap: wrap;
    background-color: #d4d7de;
    width: 100%;
    height: 70px;
    z-index: 1;
}
.nav{
    display: flex;
    justify-content: right;
    list-style: none;
    margin-right: 15%;
}
.logo{
    position: relative; left: 80px; top: 45px;
    flex: 1 1 auto;
    margin-left: 10%;
    text-transform: uppercase;
    letter-spacing: 1px;
    font-weight: bold;
    font-size: 40px;
    
}
a{
    margin: 10px;
    color:#000;
    text-decoration: none;
    text-transform: uppercase;
    text-shadow: #f6ff00 20%;
    font-style: normal;
    font-size: large;
}
a:hover{
    color: #ffffff;
}
.banner-area{
    position: relative;
    background-image: url(img12.jpg);
    width: 100%;
    height: 100vh;
    background-repeat: no-repeat;
    -webkit-background-size: cover;
    background-size: cover;
    background: blur 0.2% ;
}
    </style>
</head>
<body>
    <div class="banner-area"> 
     <br> <a href="#" class="logo">Admin Dashboard</a>
      <ul class="nav">
        <li><a href="#">About Us</a></li>
        <li>&nbsp;&nbsp;<a href="#">Contact Us</a></li>
        <li>&nbsp;&nbsp;<a href="Signin.jsp">Admin Login</a></li>
        <li>&nbsp;&nbsp;<a href="userlogin.jsp">User Login</a></li>
        </ul>
    </div>
</body>
</html>