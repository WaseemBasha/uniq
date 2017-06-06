<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color: #000000; /* black */
      color: #ffffff;
  }

  .bg-4 { 
      background-color: #202020; /* Black Gray */
      color: #ffffff;
  }
  .container-fluid {
      padding-top: 10px;
      padding-bottom: 10px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 3px;
  }
  .navbar-nav  li a:hover {
      color: #ffffff !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>  

                      
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-center">
        <li><a href="<c:url value="login"></c:url>">LOGIN</a></li>
        <li><a href="<c:url value="signup"></c:url>">SIGN UP</a></li>
        <li><a href="#">ABOUT US</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Uniq Mobiles</h3>
  <img src="C:\Users\sathishkumar\Desktop\images\pho.jpg" class="img-rounded" alt="Cinque Terre" 

width="1200" height="400">
</div>

<nav class="navbar navbar-default">

<!-- second Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">ipads</h3>
  <img src="C:\Users\sathishkumar\Desktop\images\ipad.jpg" class="img-rounded" alt="Cinque Terre" 

width="1200" height="400">
</div>

<nav class="navbar navbar-default">

<!-- Third Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Air pods</h3>
  <img src="C:\Users\sathishkumar\Desktop\images\ap.jpg" class="img-rounded" alt="Cinque Terre" width="1200" 

height="400">
</div>

.footer {
    background-color: #a9a9a9;
    height: 120px;
}

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>All rights reserved<a href="https://www.uniqmobiles.com">www.uniqmobiles.com</a></p> 
</footer>


</body>
</html>