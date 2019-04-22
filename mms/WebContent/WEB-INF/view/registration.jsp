<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration page</title>
<link type="text/css" rel="stylesheet"
	href="${request.contextPath}/static/css/style1.css">
<link type="text/css" rel="stylesheet"
	href="${request.contextPath}/static/css/nav.css">


<!-- <link type="text/css" rel="stylesheet" href="css/sidebar.css"> -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link
	href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"
	integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk="
	crossorigin="anonymous"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<%-- <script type="text/javascript"
	src="${request.contextPath}/static/js/validator.js"> --%>

</script>
<style type="text/css">
	.errors{
		color:red;
	}
	.has-error{
		color:red;
		border:1px solid red;
	}
	.no-error{
		color:green;
		border:1px solid green;
	}
	.row-style {
    background-color: #e9ecef;
    color: black;
    padding: 50px 10px 40px 10px;
    border-radius: 5px;
}
</style>
</head>
<body>
	<nav
		class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark navbar-default">
		<h5 class="navbar-brand">Registration Form</h5>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="login"> <i
						class="fa fa-home"></i> Login Page <span class="sr-only">(current)</span>
				</a></li>
			</ul>
			<!-- <p>Welcome session import</p> -->
		</div>
	</nav>
	<div class="container">
  <div class="">
	<form:form id="registration" method="post" action="addAdmin"
		commandName="admin" onsubmit="myFunction()">
			<div style="padding-top:75px"></div>
			<div class="row row-style" >
			<div class="col-sm-6 col-md-6">
			<%-- <tr>
        		<td><form:label path="admin_id">Admin Id:</form:label></td>
        		<td><form:input path="admin_id" disabled/></td>
    			</tr>  --%>
				
				<div class="form-group">
				<form:label path="firstname">First Name:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input path="firstname" name="firstname" class="form-control"
						placeholder="Enter First Name" autocomplete="off"/>
				</div>
				
				<div class="form-group">
				<form:label path="dob" >DOB:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input type="text" path="dob" id="mydate" class="form-control"
						placeholder="Enter Date of Birth" autocomplete="off"/>
				</div>
				
				<div class="form-group">
				<form:label path="gender" >Gender:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:select path="gender" class="form-control">
				<form:option value = "Gender" class="form-control" selected="true" disabled="true"></form:option>
				<form:option value = "Male" class="form-control">Male</form:option>&nbsp;&nbsp;&nbsp;&nbsp;
				<form:option value = "Female" class="form-control">Female</form:option>&nbsp;&nbsp;&nbsp;&nbsp;
				</form:select>
				</div>
				
				<div class="form-group">
				<form:label path="contact" >Contact:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input type="text" path="contact" name="contact" class="form-control"
						placeholder="Enter Contact" autocomplete="off"/>
				</div>
				
				<div class="form-group">
				<form:label path="email" >Email Id:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input type="text" path="email" class="form-control" id="email"
						placeholder="Enter Email Id" name="email" autocomplete="off"/>
				</div>
				
				</div>
				
				<div class="col-sm-6 col-md-6">
				
				<div class="form-group">
				<form:label path="lastname">Last Name:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input type="text" path="lastname" name="lastname" class="form-control"
						placeholder="Enter Last Name" autocomplete="off"/>
				</div>
				
				<div class="form-group">
				<form:label path="age">Age:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input type="text" path="age" id="age" class="form-control" readonly="true"/>
				</div>
				
				<div class="form-group">
				<form:label path="alt_contact">Alternate 
    			Contact:</form:label>
				<form:input type="text" path="alt_contact" class="form-control"
						name="alt_contact" placeholder="Enter Alternate Contact" autocomplete="off"/>
				</div>
				
				
				<div class="form-group">
				<form:label path="password">Password:<span
							class="required" style="color: red">*</span>
					</form:label>
				<form:input type="password" path="password" name="password" class="form-control"
						placeholder="Enter Password" autocomplete="off"/>
				</div>
				
				
			</div>
			
				<div class="col-sm-5 col-md-5">
					
				</div>
				<div class="col-sm-6 col-md-6">
					<input type="submit" class="btn btn-primary btn-lg" 
					value="Add Admin" />
				</div>

			</div>
		
	</form:form>
	
</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
window.x=false;
})</script>
	
	<script>
		$(document).ready(function() {

			$('#mydate').datepicker({dateFormat: "dd-mm-yy",
				changeMonth: true,
				changeYear: true,
				yearRange: '-80:+0',
				onSelect: function(value, ui) {
				var today = new Date(); 
				var age = parseInt(today.getFullYear()) - parseInt(ui.selectedYear);
				$('#age').val(age);}
				});
			
			$.validator.addMethod("avail", function() {
				/* var bool = true; */
				$.ajax({
					url : "checkEmail",
					async:false, 
					data : {
						email : $("#email").val()
					},
					success : function(data) {
						var m = data;
						if (m == "Email id is Available") {
							/* alert("In avail"); */
							window.x = true;
							
						}
						if (m == "Email id is taken") {
							/* alert("In taken"); */
							window.x = false;
						}
					}
				});
				
				return window.x;;
			})
		
			
			jQuery.validator.addMethod("lettersonly", function(value, element) {
				return this.optional(element) || /^[a-z\s]+$/i.test(value);
				});

			jQuery.validator.addMethod("datesonly", function(value, element) {
				return this.optional(element) || /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/i.test(value);
				});
		
			
				jQuery.validator.addMethod("pwcheck", function(value) {
				return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) 
				&& /[a-z]/.test(value) 
				&& /\d/.test(value) 
				});

				jQuery.validator.addMethod("notEqual",
				function (value) {
				var altcntct=value;         
				var cntct=$("#contactNumber").val();
				if(cntct==altcntct)
				return false;
				else
				return true;
				}
				);
				
				jQuery.validator.addMethod("noSpace", function(value, element) { 
					  return value.indexOf(" ") < 0 && value != ""; 
					});

				
				
		

	
							$("#registration")
									.validate(
											{
												rules : {
													"firstname" : {
														required : true,
														minlength : 2,
														maxlength : 50,
														lettersonly : true,
													},
													"lastname" : {
														required : true,
														minlength : 3,
														maxlength : 50,
														lettersonly : true,
														noSpace : true
													},
													"age" : {
														required : true,
														digits : true,
														min : 18,
														max : 60

													},
													"gender" : {
														required : true
													},
													"dob" : {
														required : true,
														datesonly : true
													},
													"contact" : {
														required : true,
														digits : true,
														minlength : 10,
														maxlength : 10
													},
													"alt_contact" : {
														digits : true,
														minlength : 10,
														maxlength : 10,
														notEqual : true
													},
													"email" : {
														required : true,
														email : true,
														avail : true 
													},

													"password" : {
														required : true,
														minlength : 3,
														maxlength : 10,

													}
												},
												messages : {
													"firstname" : {
														required : "First name is required!",
														minlength : "First name must be at least 3 characters long",
														maxlength : "First name must be at most 50 characters long",
														lettersonly : "Enter valid name"
													},
													"lastname" : {
														required : "Last name is required!",
														minlength : "Last name must be at least 3 characters long",
														maxlength : "Last name must be at most 50 characters long",
														lettersonly : "Enter valid name",
														noSpace : "Spaces are not allowed"
													},
													"age" : {
														required : "Age is required",
														min : "You are too young to join.",
														max : "Age should be within 60 years.",
														digits : "Only digits are allowed"
													},
													"dob" : {
														required : "Date of Birth is required",
														datesonly : "Enter valid date"
													},
													"contact" : {
														required : "Contact no is required",
														digits : "Only digits are allowed",
														minlength : "Enter a valid no",
														maxlength : "Enter a valid no"
													},
													"alt_contact" : {
														digits : "Only digits are allowed",
														minlength : "Enter a valid no",
														maxlength : "Enter a valid no",
														notEqual : "Alternate contact should be different"
													},
													"email" : {
														required : "mandatory",
														email : "Invalid",
														 avail : "Present" 

													},

													"password" : {
														required : "Enter a password",
														minlength : "Password should be at least 3 characters long",
														maxlength : "password cant be longer than 10 characters"

													}

												},
												highlight : function(element) {
													$(element).parent().find('input').removeClass('no-error');
													$(element).parent().find('input').addClass('has-error');
													
												},
												unhighlight : function(element) {
													$(element).parent().find('input').removeClass('has-error');
													$(element).parent().find('input').addClass('no-error');
												},
												errorClass : "errors"

											});
						});

	</script>
</body>
</html>