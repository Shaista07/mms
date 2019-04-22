<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MMS Login Page</title>
<spring:url value="/resources/themes/css/login.css" var="login" />
<link href="${login}" rel="stylesheet" />
<%-- <link rel="stylesheet" href="${request.contextPath}/static/css/login.css"> --%>
<script src="${request.contextPath}/static/js/jquery-2.1.4.min.js"></script>
<script src="${request.contextPath}/static/js/script.js"></script>
<script src="${request.contextPath}/static/js/validator.js"></script> 
</head>
<body>
	<div class="homeContainer clearfix">
		<div class="homeHead">
			<div class="logoContainer">
				<span class="logoRight">MEDICINE</span><span class="logoLeft"> MONITERING SYSTEM </span>
			</div>
		</div>
		<div class="HomeBody">
			<div class="subHomeBody">
				<div class="loginBlock">
					<div class="lockIcon">
						<img src="${request.contextPath}/static/images/lock.png">
					</div>
					<span class="headText">Sign in to Continue</span><br>
					
					<form action="register">
						<div class="textBoxContainer">
							<input class="button" type="submit" value="Register">
						</div>
					</form>
					<form:form method="post" action="loginAdmin" commandName="login">
						<div class="textBoxContainer">
							<div class="inputBoxIcon">
								<img src="${request.contextPath}/static/images/user.png">
							</div>
							<form:input path="adminId" class="boxSize textBox" placeholder="Username"/>
						</div>
						<div class="textBoxContainer">
							<div class="inputBoxIcon">
								<img src="${request.contextPath}/static/images/key.png">
							</div>
							<form:password path="password" class="boxSize textBox" placeholder="password"/>
						</div>
						<div class="textBoxContainer">
							<input class="button" type="submit" value="Sign In">
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>