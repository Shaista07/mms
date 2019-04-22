<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Medicine page</title>
<%-- <link type="text/css" rel="stylesheet" href="${request.contextPath}/static/css/style1.css">
<link type="text/css" rel="stylesheet" href="${request.contextPath}/static/css/nav.css">
<link type="text/css" rel="stylesheet" href="${request.contextPath}/static/css/button.css"> --%>
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
<spring:url value="/resources/themes/css/style1.css" var="s1" />
<link href="${s1}" rel="stylesheet" />

<spring:url value="/resources/themes/css/nav.css" var="nav" />
<link href="${nav}" rel="stylesheet" />

<spring:url value="/resources/themes/css/button.css" var="button" />
<link href="${button}" rel="stylesheet" />

<spring:url value="https://www.w3schools.com/w3css/4/w3.css" var="w3" />
<link href="${w3}" rel="stylesheet" />
<script type="text/javascript">
	function deleteMedicine(med_id){
		if(confirm('Do you want to delete this Medicine ?')){
			var url = 'deleteMedicine/'+med_id;
			window.location.href = url;
		}
	}
	function editMedicine(med_id){
		if(confirm('Do you want to edit this Medicine ?')){
			var url = 'editMedicine/'+med_id;
			window.location.href = url;
		}
		/* function medicineDetails(med_id){
			var url = 'medicineDetails/' + med_id;
			window.location.href = url;
		} */
	}
</script>
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
				<li class="nav-item"><a class="nav-link" href="branchAdmin">
						<i class="fa fa-user-circle-o"></i> Branch Admin <span
						class="sr-only">(current)</span>
				</a></li>
				<div class="row">
					<div class="col-sm-3">
						<li class="nav-item"><a class="nav-link" href="medicine"  style="border-bottom: 2px solid #e67e22;">
								<i class="fa fa-medkit"></i> Medicines <span class="sr-only">(current)</span>
						</a></li>
					</div>
					<div class="col-sm-2">
						<li class="nav-item"><a class="nav-link" href="stock"> <i
								class="fa fa-shopping-basket"></i> Stocks <span class="sr-only">(current)</span>
						</a></li>
					</div>
					<div class="col-sm-3">
						<li class="nav-item"><a class="nav-link" href="request"  >
								<i class="fa fa-envelope-o"> </i> Requests/Responses <span
								class="sr-only">(current)</span>
						</a></li>
					</div>
				</div>
			</ul>
			<p>Welcome ${loginCheck.firstname}</p> 
			<form class="form-inline my-2 my-lg-0">
				<a class="btn btn-ghost"
					href="logout">Logout</a>
			</form>
		</div>
	</nav>

<div class="row">
<div style="height: 50px;"></div>
</div>
<div class="row">
<div class="col-sm-2 col-md-2"></div>
<div class="col-sm-8 col-md-8 btncenter" style="text-align: center;">
<c:if test="${!empty medicineList}">  
	<table class="table table-hover table-striped">
		<thead class="tab-head">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>CURE</th>
				<th>MANUFACTURING</th>
				<th>DOSAGE</th>
				<th>PRESCIBED FOR</th>
				<th>ACTION</th>
			</tr>
		</thead>
		<c:forEach items="${medicineList}" var="med"> 
			<tbody>
				<tr>
				<td><a class="btn btn-adminid" href="medicineDetails/${med.medicine_id}">${med.medicine_id}</a>
								</td>
					<%-- <td>${med.medicine_id}</td> --%>
					<td>${med.medicine_descrip}</td>
					<td>${med.cure}</td>
					<td>${med.manufacturing}</td>
					<td>${med.dosage}</td>
					<td>${med.prescribed_for}</td>
					<td>
					<button
					onClick="javasript:editMedicine(${med.medicine_id})" class="btn btn-info btn-edit" >Edit</button>
					<button class="btn btn-info btn-delete" 
					onclick="javascript:deleteMedicine(${med.medicine_id})" >Delete</button>
					</td>
				</tr>
		</c:forEach>
	</table>
</c:if>

				<a href="medicineAddForm" class="btn btn-info btn-add"
					style="color: white; text-decoration: none;">Add Medicine</a>
</div>
<div class="col-sm-2 col-md-2"></div>
</div>

</body>
</html>