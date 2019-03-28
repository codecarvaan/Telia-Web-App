<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> MSISDN PAGE </title>
</head>
<body>
<jsp:include page="./header.jsp">  
<jsp:param name="username" value="user" />  
</jsp:include> 
<form method="post" name="msISDNForm" action="msISDNPage.htm">
  <div class="form-group row">
    <label for="colFormICCID" class="col-sm-2 col-form-label">MSISDN</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="colFormICCID">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormStatus" class="col-sm-2 col-form-label col-form-Status">Status</label>
    <div class="col-sm-10">
      <select id="inputStatus" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormPromo" class="col-sm-2 col-form-label col-form-Promo">Reference Promotion</label>
    <div class="col-sm-10">
      <select id="inputStatus" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormBundle" class="col-sm-2 col-form-label col-form-Bundle">Reference Service Bundle</label>
    <div class="col-sm-10">
      <select id="inputStatus" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>