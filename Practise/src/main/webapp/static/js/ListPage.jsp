<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
$(document).ready(function() {
	 
	  $.getJSON('http://localhost:8080/carduserlist', function(data) {
		
		 $.each(data,function(i,f){
			 var tr="<tr><td>"+f.regId+"</td><td>" +f.acc_no+"</td><td>" +f.acc_card_holder_name+"</td><td>" +f.pincode+"</td><td>" +f.credit_card_no+"</td><td>" +f.cvv+"</td><td> <button class='btn btn-warning' onclick='javascript:edit(this.id)' id="+f.regId+">Edit</button><form action='/listpage'><button class='btn btn-dang' onclick='javascript:trdelete(this.id)' id="+f.regId+">Delete</button></form></td></tr>"
		   	 $('#table').append(tr); 	
			
		 });
	    
	  });
	 
	});
function edit(id)
{
  $('<form action="/updateform"><input type="text" value="'+id+'" id="edit_id" name="edit_id"></form>').appendTo('body').submit();
 // session.setAttribute("userId", id);
}
function trdelete(id)
{
	// alert(id)
	 $.getJSON('http://localhost:8080/data_delete?id='+id, function(data) {
		 //alert(40)
			/* $.each(data, function(i,f){
				alert(f.regId)
				 $('<form action="/listpage"></form>').appendTo('body').submit();
			

		     	}); */
});
}
</script>
<body>
	<div class="container">
		<h2 class="text-center">List Page</h2>
		<div class="row">
			<form action="/CardDetailsForm">
				<button class="btn btn-success pull-right" onclick="">
					Add <span class="glyphicon glyphicon-plus"></span>
				</button>
			</form>
		</div>
		<table class="table table-striped" id="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Card Holder Name</th>
					<th>Account Number</th>
					<th>Pincode</th>
					<th>Credit Card Number</th>
					<th>CVV</th>
					<th>Edit Delete</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<!-- <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
        <th><button class="btn btn-warning">Edit</button>
         <button class="btn btn-danger">Delete</button></th> -->
				</tr>


			</tbody>
		</table>
	</div>

</body>
</html>