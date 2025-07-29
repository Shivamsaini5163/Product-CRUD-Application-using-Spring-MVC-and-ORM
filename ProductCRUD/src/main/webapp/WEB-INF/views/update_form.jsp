<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/images/bg1.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-cenetr mb-3">Update your Product Detail</h1>
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
					<div class="form-group">
						<label for="id">ID (Can not be Changed)</label> <input
							type="text" class="form-control" name="id" readonly id="id"
							aria-describedby="emailHelp" placeholder="Enter Product ID here"  value="${product.id}"> 
					</div>
					<div class="form-group">
						<label for="name">Name</label> <input
							type="text" class="form-control" name="name" id="name"
							aria-describedby="emailHelp" placeholder="Enter Product name here" value="${product.name}"> 
					</div>
					<div class="form-group">
						<label for="description">Product Description</label> <textarea class="form-control" 
						name="description" id="description" rows="5" placeholder="Enter the product description">${product.description}
						</textarea>
					</div>
					<div class="form-group">
						<label for="description">Product Price</label> <input class="form-control" 
						name="price" id="price" placeholder="Enter Product Price" value="${product.price}">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Cancel</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>