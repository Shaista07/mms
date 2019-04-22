<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Medicine Request Add page</title>
<link type="text/css" rel="stylesheet" href="${request.contextPath}/static/css/style1.css">
<link type="text/css" rel="stylesheet" href="${request.contextPath}/static/css/nav.css">
<!-- <link type="text/css" rel="stylesheet" href="css/sidebar.css"> -->
<link href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
  alert("Request details are submitted successfully");
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
<nav
		class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark navbar-default">
		<h5 class="navbar-brand">Medicine Monitoring System</h5>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/mms/request"> <i
						class="fa fa-envelope-o"> </i> Requests/Responses <span class="sr-only">(current)</span>
				</a></li>
				
			</ul>
			 <p>Welcome ${loginCheck.firstname}</p> 
			<form class="form-inline my-2 my-lg-0"><a href="/mms/logout" class="btn btn-info my-2 my-sm-0">Logout</a>
			</form>
		</div>
	</nav>
	<div class="container">
		<div class="">
	<form:form id="requestAdd" method="post" action="requestSave" commandName="requestAdd" onsubmit="myFunction()">
    			<div style="padding-top: 75px"></div>
				<div class="row row-style">
				<div class="col-sm-6 col-md-6">
    			<%-- <tr>
        			<td><form:label path="request_id">Request Id:</form:label></td>
        			<td><form:input path="request_id" value="${bareq.request_id}"/></td>
    			</tr> --%>
    			<div class="form-group">
							 <form:label path="branch_admin_id">Branch Admin Id:<span class="required" style="color:red">*</span></form:label>
        					<form:select path="branch_admin_id" class="form-control">
								<form:option value="Branch Admin Id" class="form-control" selected="true" disabled="true"></form:option>
								<form:options items="${brlist}" class="form-control"></form:options>
							</form:select>
				</div>
    			<div class="form-group">
        			<form:label path="request_date">Request Date:<span class="required" style="color:red">*</span></form:label>
        			<form:input type="text" path="request_date" id="mydate" name="request_date" class="form-control" autocomplete="off" placeholder="Enter Request Date"/>
    			</div>
    			<div class="form-group">
        			<form:label path="other_info">Other Info:</form:label>
        			<form:input type="text" path="other_info" name="other_info" class="form-control" autocomplete="off" placeholder="Enter Other Info"/>
    			</div>
    			<div class="form-group">
        			<form:label path="admin_process_date">Admin Process Date:</form:label>
        			<form:input type="text" path="admin_process_date" id="mydate2" name="admin_process_date" class="form-control" autocomplete="off" placeholder="Enter Admin Process Date"/>
    			</div>
    			</div>
    			<div class="col-sm-6 col-md-6">
    			<div class="form-group">
        			<form:label path="admin_response">Admin Response:</form:label>
        			<form:input type="text" path="admin_response" name="admin_response" class="form-control" autocomplete="off" placeholder="Enter Admin Response"/>
    			</div>
    			<div class="form-group">
        			<form:label path="admin_remarks">Admin Remarks:</form:label>
        			<form:input type="text" path="admin_remarks" name="admin_remarks" class="form-control" autocomplete="off" placeholder="Enter Admin Remarks"/>
    			</div>
    			<div class="form-group">
        			<form:label path="medicine_id">Medicine ID:<span class="required" style="color:red">*</span></form:label>
        			<form:select path="medicine_id" class="form-control">
								<form:option value="Medicine Id" class="form-control" selected="true" disabled="true"></form:option>
								<form:options items="${mlist}" class="form-control"></form:options>
							</form:select>
    			</div>
    			<div class="form-group">
        			<form:label path="quantity">Quantity:<span class="required" style="color:red">*</span></form:label>
        			<form:input type="text" path="quantity" name="quantity" class="form-control" autocomplete="off" placeholder="Enter Quantity"/>
    			</div>
    			</div>
    			<div class="col-sm-5 col-md-5">
					
				</div>
				<div class="col-sm-6 col-md-6">
    			<input type="submit" class="btn btn-primary btn-lg" value="Add Request Details" />
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
			$('#mydate2').datepicker({dateFormat: "dd-mm-yy",
				changeMonth: true,
				changeYear: true,
				yearRange: '-80:+0',
				onSelect: function(value, ui) {
				var today = new Date(); 
				var age = parseInt(today.getFullYear()) - parseInt(ui.selectedYear);
				$('#age').val(age);}
				});
			
			jQuery.validator.addMethod("lettersonly", function(value, element) {
				return this.optional(element) || /^[a-z\s]+$/i.test(value);
				});
			
			jQuery.validator.addMethod("add", function(value, element) {
				return this.optional(element) || /^[,a-zA-Z0-9_\-\.\/]+$/i.test(value);
				});
			
			jQuery.validator.addMethod("datesonly", function(value, element) {
				return this.optional(element) || /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/i.test(value);
				});
			jQuery.validator.addMethod("pres", function(value, element) {
				return this.optional(element) || /^[AD]+$/i.test(value);
				});
			
				jQuery.validator.addMethod("pwcheck", function(value) {
				return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) 
				&& /[a-z]/.test(value) 
				&& /\d/.test(value) 
				});

				
				jQuery.validator.addMethod("noSpace", function(value, element) { 
					  return value.indexOf(" ") < 0 && value != ""; 
					});

							$("#requestAdd")
									.validate(
											{
												rules : {
													"branch_admin_id" : {
														required : true
													},	
													"requestDate" : {
														required : true,
														datesonly : true
													},
													"other_info" : {
														maxlength : 200,
														add : true
													},
													"admin_process_date" : {
														datesonly : true
													},
													"admin_response" : {
														minlength : 1,
														maxlength : 1,
														pres : true
													},
													"medicine_id" : {
														required : true
													},
													"admin_remarks" : {
														maxlength : 300,
														add : true
													},
													"quantity" : {
														required : true,
														maxlength : 3,
														digits : true
													}
												},
												messages : {
													"branch_admin_id" : {
														required : "Branch Admin is required"
													},	
													"requestDate" : {
														required : "Request Date is required",
														datesonly : "Enter valid date"
													},
													"other_info" : {
														maxlength : "Maximum of 200 characters allowed",
														add : "Special Characters are not allowed except / , . -"
													},
													"admin_process_date" : {
														datesonly : "Enter valid date"
													},
													"admin_response" : {
														minlength : "Length should be 1 character",
														maxlength : "Length should be 1 character",
														pres : "Only Character A or D is allowed"
													},
													"medicine_id" : {
														required : "Medicine Id is required"
													},
													"admin_remarks" : {
														maxlength : "Maximum of 300 characters allowed",
														add : "Special Characters are not allowed except / , . -"
													},
													"quantity" : {
														required : "Quantity is required",
														maxlength : "Maximum of 999 is allowed as a value",
														digits : "Enter only digits"
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