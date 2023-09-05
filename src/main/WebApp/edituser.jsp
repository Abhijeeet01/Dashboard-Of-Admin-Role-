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
    <style>
    .first .first_row{
      background-color:aqua;
      height: 100%;
      border:px solid black;
    }
    .tbbar{
        background-color: white;
      height: 8vh;
       
    }
    .first .second_row{
      background-color: white;
      height: 100%;
      border:0px solid black;
    }
    .second .first_row{
      background-color: red;
      height: 80vh;
      border:0px solid black;
    }
    .third .first_row{
      background-color: aqua;
      height: 80vh;
      border:0px solid black;
    }
    </style>
  </head>
<body>
    <div class="container-fluid">
         
            <div class="row">
                <div class="col-md-2 col-6   " style="background-color: rgb(52, 59, 160);">
                    <center><p class="font-weight-bold" > <b><h3 style="color: aliceblue;">Admin Panel</h3></b> </p> </center>
                </div>
                <div class="col-md-10 col-6" style="background-color: aqua;">
                    <nav class="navbar ">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h4>Edit User</h4>  
                        <form class="form-inline">
                            <a class="nav-item nav-link  " href="Signin.jsp">LogOut</a>
                        </form>
                      </nav>
                </div>
            </div>
         
    </div>
  <div class="container-fluid">
    <div class="row">
    </div>
    <div class="row">
      <div class="col-md-2 col-6 first">
        <div class="row first_row" style="background-color: rgb(52, 59, 160) ; ">
          <ul>
            <br><a class="nav-item nav-link  font-weight-bold"style="color: aliceblue;" href="/alluser"> All Users </a><br>
            <a class="nav-item nav-link font-weight-bold"style="color: aliceblue;" href="/adduser.jsp">Add User</a><br>
            <a class="nav-item nav-link font-weight-bold " style="color: aliceblue;" href="/findbyid.jsp">User Profile By Id</a><br>
            <a class="nav-item nav-link  font-weight-bold"style="color: aliceblue;" href="/edituser.jsp">Edit User</a><br>
            <a class="nav-item nav-link  font-weight-bold"style="color: aliceblue;" href="/deletebyid.jsp">Delete User</a><br>
            <a class="nav-item nav-link  font-weight-bold"style="color: aliceblue;" href="#">See Reports</a><br>
            </ul> 
        </div>  
      </div>
      <div class="col-md-10 col-6 second">
        <div class="row first_row" style="background-color: aliceblue; height: 92vh;">

            <div class="container-fluid">
                <div class="row" >
                  <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                  <form class="text-center " action="/edituser" method="post">
                    <br><input class="form-control input-lg" type="number" placeholder="Id" name="t1">
                    <br> 
                    <input class="form-control input-lg" type="text" placeholder="First Name" name="t2">
                    <br> 
                    <input class="form-control input-lg" type="text" placeholder="Last Name" name="t3">
                    <br> 
                    <input class="form-control input-lg" type="text" placeholder="User Name" name="t4">
                    <br> 
                    <input class="form-control input-lg" type="text" placeholder="Gender" name="t5">
                    <br> 
                    <input class="form-control input-lg" type="number" placeholder="Contact No" name="t6">
                    <br> 
                    <input class="form-control input-lg" type="text" placeholder="Email" name="t7">
                    <br> 
                    <input class="form-control input-lg" type="password" placeholder="Password" name="t8">
                    
                    <br>
                    <button type="submit" class="btn btn-warning">Edit</button>
                    
                    </form> </div>
                 </div>
                  <div class="col-lg-2"></div>
               </div>
        </div>
      </div>
       
         
    </div>
  </div>
</body>
</html>
