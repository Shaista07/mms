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
<title>Branch Admin Add page</title>
<spring:url value="/resources/themes/css/style1.css" var="s1" />
<link href="${s1}" rel="stylesheet" />

<spring:url value="/resources/themes/css/nav.css" var="nav" />
<link href="${nav}" rel="stylesheet" />

<spring:url value="/resources/themes/css/button.css" var="button" />
<link href="${button}" rel="stylesheet" />

<spring:url value="https://www.w3schools.com/w3css/4/w3.css" var="w3" />
<link href="${w3}" rel="stylesheet" />
<!-- <link type="text/css" rel="stylesheet" href="css/sidebar.css"> -->
<link href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"
	integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk="
	crossorigin="anonymous"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<%-- <script type="text/javascript"
src="${request.contextPath}/static/js/validator.js"> --%>

<script>
	function myFunction() {
		alert("Branch Admin details are submitted successfully");
	}
</script>
<style type="text/css">
.errors {
	color: red;
}

.has-error {
	color: red;
	border: 1px solid red;
}

.no-error {
	color: green;
	border: 1px solid green;
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
<%response.setHeader("Cache-Control","no-cache");
         response.setHeader("Cache-Control","no-store");
         response.setHeader("Pragma","no-cache");
         response.setDateHeader ("Expires", 0); %>

	 <c:if test="${sessionScope.loginCheck==null}">
		<%response.sendRedirect("/mms/login"); %>
	</c:if> 
<%-- <nav
		class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark navbar-default">
		<h5 class="navbar-brand">Branch Admin Edit Form</h5>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/mms/branchAdmin"> <i
						class="fa fa-user-circle-o"></i> Branch Admin <span class="sr-only">(current)</span>
				</a></li>
				

			</ul>
			<p>Welcome ${loginCheck.firstname}</p>
			<form class="form-inline my-2 my-lg-0"><a href="/mms/logout" class="btn btn-info my-2 my-sm-0">Logout</a>
			</form>
		</div>
	</nav> --%>
	
	
	
	<nav
		class="navbar navbar-icon-top navbar-expand-lg navbar-default top1">
		<h5 class="nav-brand" style="color:white; margin-right: 45px;">Medicine
			Monitoring System</h5>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/mms/branchAdmin"   style="border-bottom: 2px solid #e67e22;">
						<i class="fa fa-user-circle-o"></i> Branch Admin <span
						class="sr-only">(current)</span>
				</a></li>
				<div class="row">
					<div class="col-sm-3">
						<li class="nav-item"><a class="nav-link" href="/mms/medicine">
								<i class="fa fa-medkit"></i> Medicines <span class="sr-only">(current)</span>
						</a></li>
					</div>
					<div class="col-sm-2">
						<li class="nav-item"><a class="nav-link" href="/mms/stock"> <i
								class="fa fa-shopping-basket"></i> Stocks <span class="sr-only">(current)</span>
						</a></li>
					</div>
					<div class="col-sm-3">
						<li class="nav-item"><a class="nav-link" href="/mms/request">
								<i class="fa fa-envelope-o"> </i> Requests/Responses <span
								class="sr-only">(current)</span>
						</a></li>
					</div>
				</div>
			</ul>
			<p>Welcome ${loginCheck.firstname}</p> 
			<form class="form-inline my-2 my-lg-0">
				<%-- <a class="btn btn-info my-2 my-sm-0"
					style="background-color: #263a48; padding: 7px 29px; border-radius: 22px; border: #c57f16 1px solid; color: #c57f16;"
					href="<c:url value='j_spring_security_logout'/>">Logout</a> --%>
				<a class="btn btn-ghost"
					href="logout">Logout</a>
			</form>
		</div>
	</nav>
	
	
	
	
	<div class="container">
		<div class="">
	<c:url var="updateAction" value="branchAdminUpdate"></c:url>
	<form:form id="branchAdminEdit" method="post" action="${updateAction }" commandName="branchAdminEdit" onsubmit="myFunction()" >
    			    <div style="padding-top: 75px"></div>
				<div class="row row-style">
						<div class="col-sm-6 col-md-6">
						<div class="form-group">
							 <form:label path="branch_admin_id">Branch Admin Id:<span class="required" style="color:red">*</span></form:label>
        					<form:input type="text" path="branch_admin_id" name="branch_admin_id" class="form-control"
        					value="${branchAdmin.branch_admin_id }" autocomplete="off" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="firstname">First Name:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input path="firstname" name="firstname"
								class="form-control" value="${branchAdmin.firstname }" placeholder="Enter First Name"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="dob">DOB:<span class="required"
									style="color: red">*</span>
							</form:label>
							<form:input type="text" path="dob" id="mydate"
								class="form-control" value="${branchAdmin.dob }" placeholder="Enter Date of Birth"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="gender">Gender:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:select path="gender" class="form-control">
								<form:option value="${branchAdmin.gender}" class="form-control"></form:option>
								<form:option value="Male" class="form-control">Male</form:option>&nbsp;&nbsp;&nbsp;&nbsp;
								<form:option value="Female" class="form-control">Female</form:option>&nbsp;&nbsp;&nbsp;&nbsp;
							</form:select>
						</div>

						<div class="form-group">
							<form:label path="contact">Contact:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="contact" name="contact"
								class="form-control" value="${branchAdmin.contact }" placeholder="Enter Contact"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="address1">Address Line 1:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="address1" name="address1"
								class="form-control" value="${branchAdmin.address1 }" placefolder="Enter Address"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="city">City:<span class="required"
									style="color: red">*</span>
							</form:label>
							<form:input type="text" path="city" name="city"
								class="form-control" value="${branchAdmin.city }" placeholder="Enter City" autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="zip_code">Zip Code:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="zip_code" name="zip_code"
								class="form-control" value="${branchAdmin.zip_code }" placeholder="Enter Zip Code"
								autocomplete="off" />
						</div>
					</div>
					<div class="col-sm-6 col-md-6">
						
						<div class="form-group">
							<form:label path="branch_name">Branch Name:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="branch_name" name="branch_name"
								class="form-control" value="${branchAdmin.branch_name }" placeholder="Enter Branch Name"
								autocomplete="off" />
						</div>
						
						<div class="form-group">
							<form:label path="lastname">Last Name:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="lastname" name="lastname"
								class="form-control" value="${branchAdmin.lastname }" placeholder="Enter Last Name"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="age">Age:<span class="required"
									style="color: red">*</span>
							</form:label>
							<form:input type="text" path="age" id="age" value="${branchAdmin.age }" class="form-control"
								readonly="true" />
						</div>

						<div class="form-group">
							<form:label path="email">Email Id:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="email" class="form-control" value="${branchAdmin.email }"
								placeholder="Enter Email Id" name="email" autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="alt_contact">Alternate Contact:</form:label>
							<form:input type="text" path="alt_contact" class="form-control"
								name="alt_contact" value="${branchAdmin.alt_contact}" placeholder="Enter Alternate Contact"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="address2">Address Line 2:	</form:label>
							<form:input type="text" path="address2" name="address2"
								class="form-control" value="${branchAdmin.address2 }" placefolder="Enter Address"
								autocomplete="off" />
						</div>

						<div class="form-group">
							<form:label path="state">State:<span
									class="required" style="color: red">*</span>
							</form:label>
							<form:input type="text" path="state" name="state"
								class="form-control" value="${branchAdmin.state}" placeholder="Enter State"
								autocomplete="off" />
						</div>
						
				</div>
				<div class="col-sm-5 col-md-5">
					
				</div>
				
				<div class="col-sm-6 col-md-6">
				<input type="submit" class="btn btn-add" value="Update Branch Admin" style="color: white; text-decoration: none; border-radius:22px;" />
				</div>
			</div>
			</form:form>
</div>
</div>
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
			
			/* $.validator.addMethod("avail", function() {
				var bool = true;
				$.ajax({
					url : "checkEmail",
					data : {
						email : $("#email").val()
					},
					success : function(data) {
						var m = data;
						if (m == "Email id is Available") {
							alert("In avail");
							bool = true;
						}
						if (m == "Email id is taken") {
							alert("In taken");
							bool = false;
						}
					}
				});
				console.log(bool);
			}); */
			
			
			jQuery.validator.addMethod("lettersonly", function(value, element) {
				return this.optional(element) || /^[a-z\s]+$/i.test(value);
				});
			
			jQuery.validator.addMethod("add", function(value, element) {
				return this.optional(element) || /^[,a-zA-Z0-9_\- \/]+$/i.test(value);
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

				
				
		});

		$(document)
				.ready(
						function() {
							$("#branchAdminEdit")
									.validate(
											{
												rules : {
													"firstname" : {
														required : true,
														minlength : 3,
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
														email : true
														/* avail : true */
													},

													"address1" : {
														required : true,
														add : true
													},
													
													"address2" : {
														add : true
													},
													
													"state" : {
														required : true,
														lettersonly : true
													},
													
													"city" : {
														required : true,
														lettersonly : true
													},
													
													"zip_code" : {
														required : true,
														digits : true
													},
													
													"branch_name" : {
														required : true,
														lettersonly : true
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
														email : "Invalid"
														/* avail : "Present" */

													},
													
													"address1" : {
														required : "Address is required",
														add : "No special characters except / , -"
													},
													
													"address2" : {
														add : "No special characters except / , -"
													},
													
													"state" : {
														required : "Sate is required",
														lettersonly : "Only Characters are allowed"
													},
													
													"city" : {
														required : "City is required",
														lettersonly : "Only Characters are allowed"
													},
													
													"zip_code" : {
														required : "Zip-Code is required",
														digits : "Only digits are allowed"
													},
													
													"branch_name" : {
														required : "Branch name is required",
														lettersonly : "Only characters are allowed"
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