
<html>
<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">First_Name</th>
				      <th scope="col">Last_Name</th>
				      <th scope="col">Street</th>
				      <th scope="col">Address</th>
				      <th scope="col">City</th>
				      <th scope="col">State</th>
				      <th scope="col">Email</th>
				      <th scope="col">Phone</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
				  
				  	<c:forEach items="${customers }" var="p">
				  		<tr>
					      <td>${p.fname }</td>
					      <td>${p.lname }</td>
					      <td>${p.street }</td>
					      <td>${p.address }</td>
					      <td>${p.city }</td>
					      <td>${p.state }</td>
					      <td>${p.email }</td>
					      <td>${p.phone }</td>
					      
					      <td>
					      	<a href="delete/${p.id }"><i class="fas fa-trash text-danger " style="font-size: 30px;"></i></a>
					      	<a href="update/${p.id }"><i class="fas fa-pen-nib text-primary " style="font-size: 30px;"></i></a>
					      </td>
					    </tr>
				  	</c:forEach>
				    
				  </tbody>
				</table>
				
				<div class="container text-center">
					<a href="add-customers" class="btn btn-outline-success" >Add Customer</a>
				</div>
				
								
			</div>
		</div>
	</div>
</body>
</html>
