<%@page import="impl.ProductDAOImpl"%>
<%@page import="dao.ProductDAO"%>
<%@page import="impl.CategoryDAOImpl"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Categories</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
	CategoryDAO cdao = new CategoryDAOImpl();

	request.setAttribute("categories", cdao.getCategory());
	
	  ProductDAO pdao = new ProductDAOImpl();

		request.setAttribute("Products", pdao.getProduct());
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
				
				<td>Update</td>
				<td>Delete</td>
				<td>Trial</td>
			</tr>


		</thead>
		<tbody>

			<c:forEach var="x" items="${categories}">

				<tr>
					<td>${x.getId()}</td>
					<td>${x.getName()}</td>
					<td>${x.getDescription()}</td>
					
					<td><a href="UpdateCategory.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
					<td><a href="DeleteCategory?id=${x.getId()}" class="btn btn-danger">Delete</a></td>
					<td>    
					
					<!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Delete Trial</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">This Category Contains Following Products</h2>
        </div>
        <div class="modal-body">
    
	<table class="table table-striped" style="font-size: 20px; font-weight: bold;">
		<thead>

			<tr>
				<td>Id</td>
				<td>Name</td>
			<td>Image</td>
			</tr>


		</thead>
		<tbody> 

			<c:forEach var="p" items="${Products}">

				<tr>
					<td>${p.getId()}</td>
					<td>${p.getName()}</td>
					 <td><img src="${p.getImagePath()}" style="max-width: 100px;" class="img img-thumbnail"/></td>

				</tr>

			</c:forEach>

		</tbody>
	</table>
         
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-danger btn-lg" data-dismiss="modal">Confirm Delete</button>
        </div>
      </div>
      
    </div>
  </div>
					
					
					</td>
				</tr>

			</c:forEach>

		</tbody>
	</table>

</body>
</html>