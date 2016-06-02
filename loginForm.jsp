<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="formtag" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>

	<body>
	<!-- <nav class="navbar navbar-default navbar-inverse">
  <div class="container-fluid">
    Brand and toggle get grouped for better mobile display
    <div class="navbar-header">
      <a class="navbar-brand" href="index">Dream Furn</a>
    </div>

    Collect the nav links, forms, and other content for toggling
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="ProductRegistration">Product<span class="sr-only">(current)</span></a></li>
        <li><a href="AllProduct">AllProduct</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signUp">Sign Up</a></li>
        <li><a href="loginForm">Login</a></li>
        
      </ul>
    </div>/.navbar-collapse
  </div>/.container-fluid
</nav> -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<h1>Login Detail :</h1>
		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">
						<c:url var="loginUrl" value="perform_login" />
						<form:form action="${loginUrl}" method="post" class="form-horizontal">
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
								
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input  type="text" path="username" class="form-control" id="username" name="username" placeholder="Enter Username" required>
								
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" path="password" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" path="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
								<td align="left"><form:errors path="password" cssClass="error"/></td>
							</div>
							<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />
								
							<div class="form-actions">
								<input type="submit"
									class="btn btn-block btn-primary btn-default" value="Log in">
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</body>
</html>
