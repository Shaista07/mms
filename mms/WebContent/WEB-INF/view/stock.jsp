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
<title>Stock page</title>

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



<spring:url value="/resources/themes/css/style1.css" var="s1" />
	<link href="${s1}" rel="stylesheet" />

<spring:url value="/resources/themes/css/nav.css" var="nav" />
	<link href="${nav}" rel="stylesheet" />

<spring:url value="/resources/themes/css/button.css" var="button" />
	<link href="${button}" rel="stylesheet" />

<spring:url value="https://www.w3schools.com/w3css/4/w3.css" var="w3" />
<link href="${w3}" rel="stylesheet" />

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
						<li class="nav-item"><a class="nav-link" href="medicine">
								<i class="fa fa-medkit"></i> Medicines <span class="sr-only">(current)</span>
						</a></li>
					</div>
					<div class="col-sm-2">
						<li class="nav-item"><a class="nav-link" href="stock" style="border-bottom: 2px solid #e67e22;"> <i
								class="fa fa-shopping-basket"></i> Stocks <span class="sr-only">(current)</span>
						</a></li>
					</div>
					<div class="col-sm-3">
						<li class="nav-item"><a class="nav-link" href="request">
								<i class="fa fa-envelope-o"> </i> Requests/Responses <span
								class="sr-only">(current)</span>
						</a></li>
					</div>
				</div>
			</ul>
			
			<p>Welcome ${loginCheck.firstname}</p> 
			<form class="form-inline my-2 my-lg-0"><a href="logout" class="btn btn-ghost">Logout</a>
			</form>
		</div>
	</nav>
	
	<div class="row">
		<div style="height: 50px;"></div>
	</div>
	<div class="row">
	<div class="col-sm-2 col-md-2"></div>	
		<div class="col-sm-8 col-md-8 btncenter " style="text-align: center;">
			<c:if test="${!empty stockList}">
				<table class="table table-hover table-striped" id="editableTable">
					<thead  class="tab-head">
						<tr>
							<th>ID</th>
							<th>NAME</th>
							<th>QUANTITY</th>
							
						</tr>
					</thead>
					<c:forEach items="${stockList}" var="med">
						<tbody>
							<tr>
									
								<td>${med.medicine_id}</td>
								<td>${med.medicine_descrip}</td>
								<td data-id="${med.medicine_id}" class="tdEdit" style="background-color:grey; color:white;">
								
									${med.quantity}
									
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</c:if>
		</div>
		<div class="col-sm-2 col-md-2"></div>
	</div>
	<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container" style="background-color:#1e3246; color:white;""> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Stock Update</h2>
      </header>
      <div class="w3-container">
        <p style="color: black;">Stock details updated successfully !!!</p>
        
      </div>
      
    </div>
  </div>
	
	<style>
	.editableTable .cellEditing input[type=text]{
	    width:100%;
	    border:0;
	    background-color:rgb(255,253,210);  
	}
	</style>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
	<script>
		
		$(function () {
			   var OriginalContent;
			   $("td.tdEdit").dblclick(function() {
				   
				   OriginalContent = $(this).text().trim(); 
				   var id = $(this).data('id');
				   console.log(OriginalContent);
				   $(this).addClass("cellEditing"); 
				   
				   $(this).html("<input class='txtQty' type='text' value='" + OriginalContent + "' />"); 
				   $(this).children().first().focus();
				   
				   
				   
				   $(this).children().first().keypress(function (e) { 
					   if (e.which == 13) { 
						   //ajax here
						   var newQuantity = $(this).val();
						   var newContent = $(this).val();
						   console.log('ajax id ' + id);
						   $.ajax({
							   type: "POST",
							   url:'/mms/ajaxUpdate', 
							   data:{qid : id, qty: newQuantity},
							   success:function(data){
							   		$('#id01').css({
							   			"display":"block"
							   		});
								}
							  });
						   
						   $(this).parent().text(newContent); 
						   $(this).parent().removeClass("cellEditing"); 
						   
						   } 
					   }
				   );

				   console.log(OriginalContent);
				   $(this).children().first().blur(function(){
					   
					   $(this).parent().text(OriginalContent);
					   $(this).parent().removeClass("cellEditing");
					   
				   });

				   
				   
			   });
		});
		
		
	</script>
</body>
</html>