<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Branch Admin Details page</title>
<spring:url value="/resources/themes/css/style1.css" var="s1" />
<link href="${s1}" rel="stylesheet" />

<spring:url value="/resources/themes/css/nav.css" var="nav" />
<link href="${nav}" rel="stylesheet" />

<spring:url value="/resources/themes/css/button.css" var="button" />
<link href="${button}" rel="stylesheet" />

<spring:url value="https://www.w3schools.com/w3css/4/w3.css" var="w3" />
<link href="${w3}" rel="stylesheet" />
<!-- <link type="text/css" rel="stylesheet" href="css/sidebar.css"> -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
class="navbar navbar-icon-top navbar-expand-lg navbar-default top1"
>
<h5 class="nav-brand" style="color:white; margin-right: 45px;">Medicine Monitoring System</h5>
<button class="navbar-toggler" type="button" data-toggle="collapse"
data-target="#navbarSupportedContent"
aria-controls="navbarSupportedContent" aria-expanded="false"
aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav mr-auto">
<li class="nav-item"><a class="nav-link" href="/mms/branchAdmin">
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
<a class="btn btn-ghost" href="logout">Logout</a>
</form>
</div>
</nav>
<div class="container">
	<div style="height:80px;width:100%;"></div>
		<div class="row">
			<div class="col-sm-3 col-md-3"></div>
			<div class="col-sm-6 col-md-6">
			<table class="table table-hover table-striped editing">
					<tr>
					<td><b>Medicine Id :</b>
						</td>
						<td>${medicine.medicine_id}</td> 
					</tr>

					<tr>
						<td><b>Name :</b></td>
						<td>${medicine.medicine_descrip}</td>
					</tr>

					<tr>
						<td><b>Quantity :</b></td>
						<td>${medicine.quantity}</td>
					</tr>
					<tr>
						<td><b>Cure :</b></td>
						<td>${medicine.cure}</td>
					</tr>

					<tr>
						<td><b>Manufacturing :</b></td>
						<td>${medicine.manufacturing}</td>
					</tr>
					<tr>
						<td><b>Dosage :</b></td>
						<td>${medicine.dosage}</td>
					</tr>
					<tr>
						<td><b>Prescribed For:</b></td>
						<td>${medicine.prescribed_for}</td>
					</tr>

</table>
</div>


			
			<div class="col-sm-3 col-md-3"></div>
	
			</div>
			<div class="row">
			<div class="col-sm-12 col-md-12">
			<div style="text-align:center;margin-top:60px; ">

					<a class="btn btn-info" href="<c:url value='/medicine'/>" style="border-radius: 22px;"> &nbsp;&nbsp; &nbsp;OK &nbsp; &nbsp;&nbsp;</a>
		</div>
</div>
</div>
			</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<spring:url value="/resources/themes/js/bootstrap.min.js"
		var="bootstrapJs" />

	<spring:url value="/resources/themes/js/form-validate.js"
		var="formValidateJs" />

	<script src="${bootstrapJs}"></script>

	<script src="${formValidateJs}"></script>
</body>
</html>

