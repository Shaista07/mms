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
<a class="btn btn-ghost" href="<c:url value='/mms/j_spring_security_logout'/>">Logout</a>
</form>
</div>
</nav>
<div class="container">
<div class="row">
<div class="col-sm-1 col-md-1"></div>
<div class="col-sm-10 col-md-10">
<div style="height:80px;width:100%;"></div>
<div class="row">
<div class="col-sm-6 col-md-6">
<table class="table table-hover table-striped editing">
<tr>
<td><b>Branch Admin Id :</b>
</td>
<td>${branchAdmin.branch_admin_id}</td> 
</tr>

<tr>
<td><b>First Name :</b></td>
<td>${branchAdmin.firstname}</td>
</tr>

<tr>
<td><b>Last Name :</b></td>
<td>${branchAdmin.lastname}</td>
</tr>
<tr>
<td><b>Age :</b></td>
<td>${branchAdmin.age}</td>
</tr>

<tr>
<td><b>Gender :</b></td>
<td>${branchAdmin.gender}</td>
</tr>
<tr>
<td><b>DOB :</b></td>
<td>${branchAdmin.dob}</td>
</tr>
<tr>
<td><b>Contact :</b></td>
<td>${branchAdmin.contact}</td>
</tr>
<tr>
<td><b>Alternate Contact :</b></td>
<td>${branchAdmin.alt_contact}</td>
</tr>
</table>
</div>
<div class="col-sm-6 col-md-6">

<table class="table table-hover table-striped editing2">
<tr>
<td><b>Email Id :</b></td>
<td>${branchAdmin.email}</td>
</tr>


<tr>
<td><b>Branch Name :</b></td>
<td>${branchAdmin.branch_name}</td>
</tr>

<tr>
<td><b>Address Line 1 :</b></td>
<td>${branchAdmin.address1}</td>
</tr>
<tr>
<td><b>Address Line 2 :</b></td>
<td>${branchAdmin.address2}</td>
</tr>
<tr>
<td><b>City :</b></td>
<td>${branchAdmin.city}</td>
</tr>
<tr>
<td><b>State :</b></td>
<td>${branchAdmin.state}</td>
</tr>
<tr>
<td><b>Zip Code :</b></td>
<td>${branchAdmin.zip_code}</td>
</tr>

<%-- <div style="text-align: center">
<!-- <button class="btn btn-info" onclick="/mms/branchAdmin"
value="OK" ></button>
-->
<a class="btn btn-info" style="background-color: #175f0e; margin-top: 20px; border-radius: 22px; padding: 8px 32px; font-size: 15px; border: none; box-shadow: 10px 9px 45px 0px rgba(0, 0, 0, 0.61);" href="<c:url value='/mms/branchAdmin'/>">Logout</a>
</div> --%>

</table>
</div>
</div>
<div style="text-align:center;margin-top:50px; ">

<a class="btn btn-info" href="<c:url value='/branchAdmin'/>" style="border-radius: 22px;"> &nbsp;&nbsp; &nbsp;OK &nbsp; &nbsp;&nbsp;   </a>
</div>
</div>
<div class="col-sm-1 col-md-1"></div>
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
