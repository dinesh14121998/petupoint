<%@page import="impl.CategoryDAOImpl"%>
<%@page import="dao.CategoryDAO"%>
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
	CategoryDAO cdao = new CategoryDAOImpl();

	request.setAttribute("categories", cdao.getCategory());
	
	
%>

</head>
<body style="margin: auto; width: 80%;">

	<h1>View Categories</h1>

	<table class="table table-striped" style="font-size: 20px; font-weight: bold;">
		<thead>

			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Description</td>
				<c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
				<td>Update</td>
				<td>Delete</td>
					</c:if>
			</tr>


		</thead>
		<tbody>

			<c:forEach var="x" items="${categories}">

				<tr>
					<td>${x.getId()}</td>
					<td>${x.getName()}</td>
					<td>${x.getDescription()}</td>
					
					<c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
					<td><a href="UpdateCategory.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
					<!-- <td><a href="DeleteCategory?id=${x.getId()}" class="btn btn-danger">Delete</a></td>
					<td><a href="DeleteProCat?category_id=${x.getId()}" class="btn btn-danger">Delete ME</a></td>
					
					 -->
					<td>
					
					<a href="ViewProductsByCategory.jsp?category_id=${x.getId()}" class="btn btn-danger">Delete</a>
					</c:if>
						</td>
					<td>    
					
					
					</td>
				</tr>

			</c:forEach>

		</tbody>
	</table>

</body>
</html>