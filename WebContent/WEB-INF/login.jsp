<%@page import="org.apache.catalina.Session"%>


<html>
<head>
<title>Welcome to Festival Event Registration System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
<script language="JavaScript">
<!--
var nHist = window.history.length;
if(window.history[nHist] != window.location)
  window.history.forward();
//-->
</script>


</head>
<style>
.error {
	color: red;
	font-size: 13px; 
	font-weight: bold;
}
</style>

<body>



    <div class="container">
  <form method="post" name="logForm" action="header.htm" >
    
    
     <div class="form-group row">
      <div class="col-sm-10">
    <label for="colFormICCID" class="form-control-sm">Visitor Name</label>
    </div>
    <div class="col-sm-10">
      <input type="text" class="form-control-sm" name="Username">
    </div>
  </div>
  <div class="form-group row">
   <div class="col-sm-10">
    <label for="colFormICCID" class="form-control-sm">Password</label>
    </div>
    <div class="col-sm-10">
      <input type="password" class="form-control-sm" name="PASSWORD">
    </div>
  </div>
    <div class="form-group row">
  <span class="error">${ERROR}</span>
  </div>

		<button type="submit" class="btn btn-primary">Login</button>
		</form>

</div>


</body>

</html>
