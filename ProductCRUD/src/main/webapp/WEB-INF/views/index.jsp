<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/images/bg3.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>
<body>
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-center">Welcome to Product App</h1>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">S.NO</th>
						<th scope="col">Product Name</th>
						<th scope="col">Description</th>
						<th scope="col">Price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${products}" var="p">
					<tr>
						<th scope="row">Product ${p.id}</th>
						<td>${p.name}</td>
						<td>${p.description}</td>
						<td>&#8377; ${p.price}</td>
						<td>
							<a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger" style="font-size: 30px;margin-right: 15px;"></i></a>
							<a href="update/${p.id}"><i class='fas fa-pen-alt' style='font-size:30px;color:blue'></i></a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div class="container">
				<a href="add-product" class="btn btn-outline-success">Add Product</a>
			</div>
		</div>
	</div>
</body>
</html>
