<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>PetuPoinT.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="index.jsp">
    <img src="log/images/logo-122x87.png" alt="logo" style="width:100%; height:auto;">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp" style="font-size:40px;">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="reg.jsp" style="font-size:40px;"></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"></a>
    </li>
  </ul>
</nav>
<%

CartDAO kdao = new CartDAOImpl();

String email = request.getParameter("email");


	
%>

</head>
<body style="margin: auto; width: 80%;">

<div class=container style="text-align: center; ">
    
     <i class="far fa-grin-beam" aria-hidden="true" style="font-size:20vw;color:dimgrey; margin-top: 10px;"> 
 </i>
		<h1 style="font-family: 'Sofia';">Thank You For Visit</h1>
    
	<h1 style=" font-family: 'Sofia';">We Are Happy to Serve You</h1>
	<hr>
	 <a href="DeleteCart?email=<%=request.getParameter("email")%>" class="btn btn-danger">Continue</a>
   
</div>
	
	
    
		


</body>
</html>