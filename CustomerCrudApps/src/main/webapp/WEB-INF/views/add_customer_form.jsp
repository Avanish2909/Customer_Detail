<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Details</title>
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
			<h1 class="text-center mb-3">Fill the Customer details</h1>
			<form action="handle-customer" method="post">
			
				<div class="row" style="padding: 10px; ">
				  <div class="col">
				    <input type="text" name="fname" class="form-control" placeholder="First name" aria-label="First name" required="required">
				  </div>
				  <div class="col">
				    <input type="text" name="lname" class="form-control" placeholder="Last name" aria-label="Last name" required="required">
				  </div>
				</div>
				<div class="row" style="padding: 10px;" >
				  <div class="col">
				    <input type="text" name="street" class="form-control" placeholder="Street" aria-label="First name">
				  </div>
				  <div class="col">
				    <input type="text" name="address" class="form-control" placeholder="Address" aria-label="Last name">
				  </div>
				</div>
				<div class="row" style="padding: 10px;">
				  <div class="col">
				    <input type="text" name="city" class="form-control" placeholder="City" aria-label="First name">
				  </div>
				  <div class="col">
				    <input type="text" name="state" class="form-control" placeholder="State" aria-label="Last name">
				  </div>
				</div>
				<div class="row" style="padding: 10px;">
				  <div class="col">
				    <input type="email" name="email" class="form-control" placeholder="Email" aria-label="First name">
				  </div>
				  <div class="col">
				    <input type="text" name="phone" class="form-control" placeholder="Phone" aria-label="Last name">
				  </div>
				</div>
				
				<div class="container text-center" style="margin-top: 15px;">
					<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>
			
		</div>
		</div>
	</div>
</body>
</html>