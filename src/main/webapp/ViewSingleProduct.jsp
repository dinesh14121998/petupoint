<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
<%@page import="impl.ProductDAOImpl"%>
<%@page import="dao.ProductDAO"%>
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
      <a class="nav-link" href="reg.jsp" style="font-size:40px;">Create Account</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"></a>
    </li>
  </ul>
</nav>
<%
	ProductDAO pdao = new ProductDAOImpl();

	request.setAttribute("Product", pdao.getProduct(Integer.parseInt(request.getParameter("id"))));
%>

</head>


<body style="margin: auto; width: 80%;">

	<h1>Viewing Product: ${Product.getName()}</h1>

	<table class="table table-striped"
		style="font-size: 20px; font-weight: bold;">
		<tbody>


			<tr>
				<td colspan="2">
					<center>
						<img src="${Product.getImagePath()}" style="max-width: 500px;"
							class="img img-thumbnail" />
					</center>
				</td>

			</tr>

			<tr>
				<td>Name</td>
				<td>${Product.getName()}</td>

			</tr>

			<tr>
				<td>Description</td>
				<td>${Product.getDescription()}</td>

			</tr>

			<tr>
				<td>Price</td>
				<td>${Product.getPrice()}</td>

			</tr>

		</tbody>
	</table>

	<c:if test="${not empty error}">
	<h1 class="alert alert-danger">Invalid Input</h1>
	</c:if>

	<form action="AddCart" method="post">

		<input type="hidden" value="${Product.getId()}" name="pid">
		
		<c:if test="${sessionScope.role == 'ROLE_USER'}">
		
		<input type="number"
			 name="qty" class="form-control" placeholder="Enter Qty">
			
		 <br>
		 
		  <input type="email" name="email" class="form-control"
			placeholder="Enter Email" value="${loggedInUserEmail}"> <br> 
			 <input type="submit" value="Submit"
			class="btn btn-primary"> 
			</c:if>
	</form>
</body>
</html>