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
         #ttr{
             height: 7vh;
         }
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
    <script>
      $(document).ready(function(){
        var arr = $("td");
        for (let i = 0; i < arr.length; i++) 
        {
              if(arr[i].innerHTML=="null" || arr[i].innerHTML=="0")
              {
                arr[i].innerHTML="";
              }
               
        }
    });
  </script>
  </head>
<body>
  <%@page import="com.example.demo.model.User"%>
  <%
     User ur1 = (User) session.getAttribute("name1");
     User ur2 = (User) session.getAttribute("name2");
     User ur3 = (User) session.getAttribute("name3");
     User ur4 = (User) session.getAttribute("name4");
     User ur5 = (User) session.getAttribute("name5");
     User ur6 = (User) session.getAttribute("name6");
     User ur7 = (User) session.getAttribute("name7");
     User ur8 = (User) session.getAttribute("name8");
     User ur9 = (User) session.getAttribute("name9");
     User ur10 = (User) session.getAttribute("name10");
     User ur11 = (User) session.getAttribute("name11");
     User ur12 = (User) session.getAttribute("name12");
   %>
    <div class="container-fluid">
         
            <div class="row">
                <div class="col-md-2 col-6   " style="background-color: rgb(52, 59, 160);">
                    <center><p class="font-weight-bold" > <b><h3 style="color: aliceblue;">Admin Panel</h3></b> </p> </center>
                </div>
                <div class="col-md-10 col-6" style="background-color: aqua;">
                    <nav class="navbar ">
                       <a class="font-weight-bold text-center">  <h3>Dashboard</h3> </a>
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
        <div class="row first_row p-0" style="background-color: aliceblue; height: 92vh;">
          <table class="table text-center table-borderless table-hover p-0">
            <tr id="ttr">
              <th>id</th>
              <th>firstname</th>
              <th>lastname</th>
              <th>username</th>
              <th>contactno</th>
              <th>email</th>
              <th>password</th>
            </tr>
            <tr id="ttr">
                <td><%= ur1.getId() %></td>
                <td><%= ur1.getFirstname() %></td>
                <td><%= ur1.getLastname() %></td>
                <td><%= ur1.getUsername() %></td>
                <td><%= ur1.getContactno() %></td>
                <td><%= ur1.getEmail() %></td>
                <td><%= ur1.getPassword() %></td>
            </tr>
            <tr id="ttr">
              <td><%= ur2.getId() %></td>
              <td><%= ur2.getFirstname() %></td>
              <td><%= ur2.getLastname() %></td>
              <td><%= ur2.getUsername() %></td>
              <td><%= ur2.getContactno() %></td>
              <td><%= ur2.getEmail() %></td>
              <td><%= ur2.getPassword() %></td>
          </tr>
          <tr id="ttr">
            <td><%= ur3.getId() %></td>
            <td><%= ur3.getFirstname() %></td>
            <td><%= ur3.getLastname() %></td>
            <td><%= ur3.getUsername() %></td>
            <td><%= ur3.getContactno() %></td>
            <td><%= ur3.getEmail() %></td>
            <td><%= ur3.getPassword() %></td>
        </tr>
        <tr id="ttr">
          <td><%= ur4.getId() %></td>
          <td><%= ur4.getFirstname() %></td>
          <td><%= ur4.getLastname() %></td>
          <td><%= ur4.getUsername() %></td>
          <td><%= ur4.getContactno() %></td>
          <td><%= ur4.getEmail() %></td>
          <td><%= ur4.getPassword() %></td>
      </tr>
      <tr id="ttr">
        <td><%= ur5.getId() %></td>
        <td><%= ur5.getFirstname() %></td>
        <td><%= ur5.getLastname() %></td>
        <td><%= ur5.getUsername() %></td>
        <td><%= ur5.getContactno() %></td>
        <td><%= ur5.getEmail() %></td>
        <td><%= ur5.getPassword() %></td>
    </tr>
    <tr id="ttr">
      <td><%= ur6.getId() %></td>
      <td><%= ur6.getFirstname() %></td>
      <td><%= ur6.getLastname() %></td>
      <td><%= ur6.getUsername() %></td>
      <td><%= ur6.getContactno() %></td>
      <td><%= ur6.getEmail() %></td>
      <td><%= ur6.getPassword() %></td>
  </tr>
  <tr id="ttr">
    <td><%= ur7.getId() %></td>
    <td><%= ur7.getFirstname() %></td>
    <td><%= ur7.getLastname() %></td>
    <td><%= ur7.getUsername() %></td>
    <td><%= ur7.getContactno() %></td>
    <td><%= ur7.getEmail() %></td>
    <td><%= ur7.getPassword() %></td>
</tr>
<tr id="ttr">
  <td><%= ur8.getId() %></td>
  <td><%= ur8.getFirstname() %></td>
  <td><%= ur8.getLastname() %></td>
  <td><%= ur8.getUsername() %></td>
  <td><%= ur8.getContactno() %></td>
  <td><%= ur8.getEmail() %></td>
  <td><%= ur8.getPassword() %></td>
</tr>
<tr id="ttr">
  <td><%= ur9.getId() %></td>
  <td><%= ur9.getFirstname() %></td>
  <td><%= ur9.getLastname() %></td>
  <td><%= ur9.getUsername() %></td>
  <td><%= ur9.getContactno() %></td>
  <td><%= ur9.getEmail() %></td>
  <td><%= ur9.getPassword() %></td>
</tr>
<tr id="ttr">
  <td><%= ur10.getId() %></td>
  <td><%= ur10.getFirstname() %></td>
  <td><%= ur10.getLastname() %></td>
  <td><%= ur10.getUsername() %></td>
  <td><%= ur10.getContactno() %></td>
  <td><%= ur10.getEmail() %></td>
  <td><%= ur10.getPassword() %></td>
</tr>
<tr id="ttr">
  <td><%= ur11.getId() %></td>
  <td><%= ur11.getFirstname() %></td>
  <td><%= ur11.getLastname() %></td>
  <td><%= ur11.getUsername() %></td>
  <td><%= ur11.getContactno() %></td>
  <td><%= ur11.getEmail() %></td>
  <td><%= ur11.getPassword() %></td>
</tr>
<tr id="ttr">
  <td><%= ur12.getId() %></td>
  <td><%= ur12.getFirstname() %></td>
  <td><%= ur12.getLastname() %></td>
  <td><%= ur12.getUsername() %></td>
  <td><%= ur12.getContactno() %></td>
  <td><%= ur12.getEmail() %></td>
  <td><%= ur12.getPassword() %></td>
</tr>
<tr>
  <td>null</td>
  <td>null</td>
  <td>null</td>
  <td>null</td>
  <td>null</td>
  <td>null<td>
  <td>null</td>
</tr>
        
          </table>
        </div>
      </div>
       
         
    </div>
  </div>
</body>
</html>