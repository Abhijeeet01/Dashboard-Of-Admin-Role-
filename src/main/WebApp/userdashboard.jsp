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
        <%@page import="com.example.demo.model.User"%>
        <%
           User ur1 = (User) session.getAttribute("name");
         %>
        <div class="container-fluid">
             
                <div class="row">
                    <div class="col-md-2 col-6   " style="background-color: rgb(52, 59, 160);">
                        <center><p class="font-weight-bold" > <b><h3 style="color: aliceblue;">User Panel</h3></b> </p> </center>
                    </div>
                    <div class="col-md-10 col-6" style="background-color: aqua;">
                        <nav class="navbar ">
                           <a class="font-weight-bold text-center">  <h3>Dashboard</h3> </a>
                            <form class="form-inline">
                                <a class="nav-item nav-lin" href="userlogin.jsp">LogOut</a>
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
            <div class="row first_row" style="background-color: rgb(52, 59, 160) ; height: 91.5vh; ">
                  
            </div>  
          </div>
          <div class="col-md-10 col-6 second">
            
              <div >
                <div class="container-fluid">
                  <div class="container">
                    <br><div class="row">
                        <div class="col-lg-4"  >
                             <div class="card text-center" style="border: none;">
                                <center><img src="id.jpg" style="height: 200px; width: 200px;" class="card-img-top"></center>
                                <div class="card-body">
                                    <h4 class="card-title">User Id</h4>
                                    <p>
                                        <%= ur1.getId() %>
                                    </p>
                                </div>
                             </div>
                        </div>
                        <div class="col-lg-4"  >
                          <div class="card text-center" style="border: none;">
                            <center><img src="username.jpg" style="height: 200px; width: 200px;" class="card-img-top"></center>
                             <div class="card-body">
                                 <h4 class="card-title">Name</h4>
                                 <p>
                                    <%= ur1.getFirstname() %>
                                    <%= ur1.getLastname() %>
                                 </p>
                             </div>
                          </div>
                     </div>
                     <div class="col-lg-4"  >
                      <div class="card text-center" style="border: none;">
                        <center> <img src="username.jpg" style="height: 200px; width: 200px;" class="card-img-top"></center>
                         <div class="card-body">
                             <h4 class="card-title">User Name</h4>
                             <p>
                                <%= ur1.getUsername() %>
                             </p>
                         </div>
                      </div>
                 </div>
                    </div>
                  </div>
            
                </div>
               </div>
            
               <div>
                <div class="container-fluid">
                  <div class="container">
                    <div class="row">
                        <div class="col-lg-4" >
                             <div class="card text-center" style="border: none;">
                              <center><img src="contact.jpg" style="height: 200px; width: 200px;" class="card-img-top"></center>
                                <div class="card-body">
                                    <h4 class="card-title">Contact No</h4>
                                    <p>
                                        <%= ur1.getContactno() %>
                                    </p>
                                </div>
                             </div>
                        </div>
                        <div class="col-lg-4" >
                          <div class="card text-center" style="border: none;">
                            <center> <img src="email.jpg" style="height: 200px; width: 200px;" class="card-img-top"></center>
                             <div class="card-body">
                                 <h4 class="card-title">Email</h4>
                                 <p>
                                    <%= ur1.getEmail() %>
                                 </p>
                             </div>
                          </div>
                     </div>
                     <div class="col-lg-4" >
                      <div class="card text-center" style="border: none;">
                        <center><img src="password.jpg" style="height: 200px; width: 200px;" class="card-img-top"></center>
                         <div class="card-body">
                             <h4 class="card-title">Password</h4>
                             <p>
                                <%= ur1.getPassword() %>
                             </p>
                         </div>
                      </div>
                 </div>
                    </div>
                  </div>
            
                </div>
               </div>
    
            </div>
        
           
             
        </div>
      </div>
    </body>
    </html>
    
    
    
    
    
    
    
    
    
      