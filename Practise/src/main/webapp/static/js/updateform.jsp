<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String id=request.getParameter("edit_id");
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script>
 $(document).ready(function() 
{
	// alert(55)
	var regid=document.getElementById("editid").value;
	 //alert(regid)
	 if(!(regid=="new") ||regid=="null") {
		 //alert(5)
			$.getJSON('http://localhost:8080/single_id?id='+regid, function(data) {
				
				$.each(data, function(i,f){
					//alert(f.acc_card_holder_name)
					 // document.getElementById("editid").value=f.regId;
				     document.getElementById("card_holder_name").value=f.acc_card_holder_name;
					 
					 document.getElementById("account_no").value=f.acc_no;
					 
					  document.getElementById("pincode").value=f.pincode;
					
					  document.getElementById("credit_card_no").value=f.credit_card_no; 
					  document.getElementById("cvv").value=f.cvv;
				});
				

			     	});

			
			
	 }
	 

}); 
 
//alert(1)
 var hrf=window.location.href.substr(0,window.location.href.lastIndexOf("/static"));
 //alert(hrf)
 function dataupdate()
 {
	//alert(55)
	 	var id=document.getElementById("editid").value;
 	//alert(1)
 	var choldername=document.getElementById("card_holder_name").value;
 	//alert(firstname)
 	var accno=document.getElementById("account_no").value;
 	//alert(lastname)
 	var pincode=document.getElementById("pincode").value;
 	///alert(email)
 	var ccno=document.getElementById("credit_card_no").value;
 	//alert(phonenumber)
 	var cvv=document.getElementById("cvv").value;
  
 	
 	var postData="editid="+id+
 				"&card_holder_name="+choldername+
 				"&account_no="+accno+
 				"&pincode="+pincode+
 				"&credit_card_no="+ccno+
 				"&cvv="+cvv;
 	
 	//alert(postData)
 	 //alert(hrf)
 	$.ajax({
 		url :"http://localhost:8080/data_upadate",
 		type: "POST",
 		data :postData ,
 		success:function(data, textStatus, jqXHR) 
 		{	
 		alert(data);		      			   
 		},
 		error: function(jqXHR, textStatus, errorThrown) 
 		{	
 			alert(data); 
 		}
 		});//ajax

 }

</script>
<body>

	    <div class="container">

    <form class="well form-horizontal" action="/listpage"   id="contact_form">
<fieldset>

<legend><center><h2><b>Update Form</b></h2></center></legend><br>


<div class="form-group">
<input type="hidden" value='<%= id %>' name="editid" id="editid">
  <label class="col-md-4 control-label">Card Holder Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="card_holder_name" id="card_holder_name" placeholder="Card Holder Name" class="form-control"  type="text">
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label">Account Number</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="account_no" id="account_no" placeholder="Account Number" class="form-control"  type="text">
    </div>
  </div>
</div>




<div class="form-group">
  <label class="col-md-4 control-label" >Pincode</label> 
    <div class="col-md-4 inputGroupContainer">
    
  <input name="pincode" id="pincode" placeholder="Pincode" class="form-control"  type="number">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" >Credit Card Number</label> 
    <div class="col-md-4 inputGroupContainer">
    
  <input name="credit_card_no" id="credit_card_no" placeholder="Credit Card Number" class="form-control"  type="number">
   
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" >Cvv</label> 
    <div class="col-md-4 inputGroupContainer">
   
  <input name="cvv" id="cvv" placeholder="CVV" class="form-control"  type="number">
    
  </div>
</div>




<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    <button type="submit" class="btn btn-success" onclick="javascript: return dataupdate()" >Sign Me Up <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div>
</body>
</html>