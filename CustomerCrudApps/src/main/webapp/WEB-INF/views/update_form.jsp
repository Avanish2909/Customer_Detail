<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
			<h1 class="text-center mb-3">Change Product details</h1>
			
			<form action="${pageContext.request.contextPath }/handle-customer" method="post">
			<input type="hidden" value="${customer.id }" name="id" />
				<div class="row" style="padding: 10px; ">
				  <div class="col">
				    <input type="text" 
				    	name="fname" 
				    	class="form-control" 
				    	placeholder="First name" 
				    	aria-label="First name" 
				    	required="required"
				    	value="${customer.fname }">
				  </div>
				  <div class="col">
				    <input type="text" 
				    	name="lname" 
				    	class="form-control" 
				    	placeholder="Last name" 
				    	aria-label="Last name" 
				    	required="required"
				    	value="${customer.lname }">
				  </div>
				</div>
				<div class="row" style="padding: 10px;" >
				  <div class="col">
				    <input type="text" 
				    	name="street" 
				    	class="form-control" 
				    	placeholder="Street" 
				    	aria-label="First name"
				    	value="${customer.street }">
				  </div>
				  <div class="col">
				    <input type="text" 
				    	name="address" 
				    	class="form-control" 
				    	placeholder="Address" 
				    	aria-label="Last name"
				    	value="${customer.address }">
				  </div>
				</div>
				<div class="row" style="padding: 10px;">
				  <div class="col">
				    <input type="text" 
				    	name="city" 
				    	class="form-control" 
				    	placeholder="City" 
				    	aria-label="First name"
				    	value="${customer.city }">
				  </div>
				  <div class="col">
				    <input type="text" 
					    name="state" 
					    class="form-control" 
					    placeholder="State" 
					    aria-label="Last name"
					    value="${customer.state }">
				  </div>
				</div>
				<div class="row" style="padding: 10px;">
				  <div class="col">
				    <input type="email" 
				    	name="email" 
				    	class="form-control" 
				    	placeholder="Email" 
				    	aria-label="First name"
				    	value="${customer.email }">
				  </div>
				  <div class="col">
				    <input type="text" 
				    	name="phone" 
				    	class="form-control" 
				    	placeholder="Phone" 
				    	aria-label="Last name"
				    	value="${customer.phone }">
				  </div>
				</div>
				
				<div class="container text-center" style="margin-top: 15px;">
					<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-warning">Update</button>
				</div>
			</form>
			
			
			
<%-- 			<form action="${pageContext.request.contextPath }/handle-product" method="post"> --%>
<%-- 			<input type="hidden" value="${product.id }" name="id" /> --%>
<!-- 				<div class="form-group"> -->
<!-- 					<label for="name">Product Name</label><input type="text" -->
<!-- 						class="form-control" id="name" aria-describedby="emailHelp" -->
<!-- 						name="name" placeholder="Enter the product name here" -->
<%-- 						value="${product.name }"> --%>
<!-- 				</div> -->
<!-- 				<div class="form-group"> -->
<!-- 					<label for="name">Product Description</label><textarea type="text" -->
<!-- 						class="form-control" id="description" rows="5" -->
<%-- 						name="description" placeholder="Enter the product description">${product.description }</textarea> --%>
<!-- 				</div> -->
<!-- 				<div class="form-group"> -->
<!-- 					<label for="name">Product Price</label><input type="text" -->
<!-- 						class="form-control" id="price"  -->
<!-- 						name="price" placeholder="Enter the product price" -->
<%-- 						value="${product.price }" > --%>
<!-- 				</div> -->
<!-- 				<div class="container text-center"> -->
<%-- 					<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a> --%>
<!-- 					<button type="submit" class="btn btn-warning">Update</button> -->
<!-- 				</div> -->
<!-- 			</form> -->
			
		</div>
		</div>
	</div>
</body>
</html>