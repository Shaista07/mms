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
<title>Medicine Request page</title>
<link type="text/css" rel="stylesheet"
	href="${request.contextPath}/static/css/style1.css">
<link type="text/css" rel="stylesheet"
	href="${request.contextPath}/static/css/nav.css">
<!-- <link type="text/css" rel="stylesheet" href="css/sidebar.css"> -->
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

<script type="text/javascript">
	
	
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
		class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark navbar-default">
		<h5 class="navbar-brand">Medicine Request Details</h5>
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
				</div>
				

			</ul>
			 <p>Welcome ${loginCheck.firstname}</p> 
			<form class="form-inline my-2 my-lg-0"><a href="/mms/logout" class="btn btn-info my-2 my-sm-0">Logout</a>
			</form>
		</div>
	</nav>
	<div class="row">
		<div class="col-sm-12 col-md-12 btncenter">
			<c:if test="${!empty medreqList}">
				<table class="table table-hover table-striped">
					<thead class="thead-dark">
						<tr>
							<th>REQUEST ID</th>
							<th>MEDICINE ID</th>
							<th>QUANTITY</th>
							
						</tr>
					</thead>
					<c:forEach items="${medreqList}" var="med">
						<tbody>
							<tr>
								<td>${med.request_id}</td>
								<td>${med.medicine_id}</td>
								<td>${med.quantity}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
</body>
</html>