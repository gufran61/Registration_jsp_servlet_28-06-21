<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SighnUp</title>
<!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
</head>
<body style="background: url('image/book.jpg'); background-size:  cover; background-attachment: fixed;">
<div class="container">
<div class="row">
<div class="col m6 offset-m3">
<div class="card">
<div class="card-content">
<h3 style="margin-top: 10px;" class="center-align">Register here !!</h3>
<h5 id="msg" class="center-align"></h5>
<div class="form center-align">
<form action="Register" method="post" id="myform">
<input type="text" name="username" placeholder="Enter User Name">
<input type="password" name="password" placeholder="Enter User Password">
<input type="email" name="email" placeholder="Enter User email">
<button type="submit" class="btn red"> Submit</button>
</form>
</div>
<div class="loader center-align" style="margin-top: 10px; display: none;">
<div class="preloader-wrapper big active">
    <div class="spinner-layer spinner-blue-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

  <div class="preloader-wrapper active">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

  <div class="preloader-wrapper small active">
    <div class="spinner-layer spinner-green-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
        <h3>please wait</h3>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>
<!-- <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script> -->
  <script>  
$(document).ready(function(){
	console.log("page is ready")
	$("#myform").on('submit',function (event){
event.preventDefault();
var f = $(this).serialize();
console.log(f);
$(".loader").show();
$(".form").hide();
$.ajax({
	url: "Register",
	data: f,
	type: 'POST',
	success: function(data, textStatus,jqXHR){
		console.log(data);
		console.log("success..............");
		$(".loader").hide();
		$(".form").show();
		if(data.trim()==='done'){
			$('#msg').html("successfully register")
$('#msg').addClass('green-text')
			}
		else{
			$('#msg').html("somethink on went on server")
			$('#msg').addClass('red-text')}
		},
		error: function(data, textStatus,errorThrown){
			console.log(data);
			console.log("error..............");
			$(".loader").hide();
			$(".form").show();
			$('#msg').html("somethink on went on server")
			$('#msg').addClass('red-text')
		}
})
		})
})
  </script>
</body>
</html>