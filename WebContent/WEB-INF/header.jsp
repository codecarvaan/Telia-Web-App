<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
</head>
<style>
.bg-dark {
background-color: #c0f !important;
}
.nav-link {
color: white !important;
}

.dropdown-item{
color: white !important;
background-color: #c0f !important;
}

</style>



<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
   <a class="navbar-brand" href="#">
    <img src="./images/telia.png" alt="Telia" style="width:80px;">
  </a>
  <!-- Links -->
  <ul class="navbar-nav">
     <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Activity 
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="buyOrder.htm">Buy order</a>
      </div>
    </li>
	
	 <c:if test = "${isAdmin == 'true'}">
     <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Admin
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="adminMsISDN.htm">MSISDN</a>
        <a class="dropdown-item" href="adminIccid.htm">ICCID</a>
      </div>   
      
    </li>
    </c:if>
    
  </ul>
</nav>

<div class="container-fluid">
</div>

</body>
</html>
</html>