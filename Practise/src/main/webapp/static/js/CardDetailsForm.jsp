<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
//alert(1)

var hrf=window.location.href.substr(0,window.location.href.lastIndexOf("/"));
//alert(hrf)
function save()
{
	alert(19)
	var choldername=document.getElementById("card_holder_name").value;
	var accno=document.getElementById("account_no").value;
	var pincode=document.getElementById("pincode").value;
	var ccno=document.getElementById("credit_card_no").value;
	var cvv=document.getElementById("cvv").value;
 
	var postData="card_holder_name="+choldername+
	"&account_no="+accno+
	"&pincode="+pincode+
	"&credit_card_no="+ccno+
	"&cvv="+cvv;
	
	alert(postData)
	 
	$.ajax({
		url :hrf+"/carddetails_save",
		type: "POST",
		data :postData ,
		success:function(data, textStatus, jqXHR) 
		{	
		alert("success");		      			   
		},
		error: function(jqXHR, textStatus, errorThrown) 
		{	
			alert("fail"); 
		}
		});//ajax

		
}
</script>
<body>

	    <div class="container">

    <form class="well form-horizontal" action="/listpage"   id="contact_form">
<fieldset>

<legend><center><h2><b>Registration Form</b></h2></center></legend><br>


<div class="form-group">
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
    <button type="submit" class="btn btn-success" onclick="javascript: return save()" >Sign Me Up <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div>
</body>
</html>