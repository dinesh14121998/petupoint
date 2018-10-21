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
	String email = request.getParameter("email");

	request.setAttribute("email", email);

	CartDAO kdao = new CartDAOImpl();
	request.setAttribute("cartAddress",  kdao.getShippingAddBillingAddress(email) );
%>

</head>
<body style="margin: auto; width: 80%;">

	<h1>
		Confirm Addresses:
		<%=request.getParameter("email")%></h1>

	<hr>

	<form action="UpdateShippingAndBillingAddress" method="post">

		<input type="hidden" value="${email}" name="email">

		<table class="table table-striped"
			style="font-size: 20px; font-weight: bold;">
			<tbody>

				<tr>
					<td>Ship To</td>
					<td><textarea class="form-control" name="shipTo"
							style="resize: none;" placeholder="Enter Shipping Address">${cartAddress[0]}</textarea>
					</td>

				</tr>

				<tr>
					<td>Bill To</td>
					<td><textarea class="form-control" name="billTo"
							style="resize: none;" placeholder="Enter Billing Address">${cartAddress[1]}</textarea>
					</td>

				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Save"
						class="btn btn-success"></td>

				</tr>

			</tbody>
		</table>
	</form>
	<hr>

	<a href="ViewCart.jsp?email=${email}" class="btn btn-primary">Back
		To Cart</a>

	<a href="ViewInvoice.jsp?email=<%=request.getParameter("email")%>"
		class="btn btn-danger" style="float: right;">View Invoice</a>

	<br>
	<br>

	<br>
	<br>

</body>
</html>