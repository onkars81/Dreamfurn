<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="formtag" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
  
  <script>
function formSubmit() {
document.getElementById("logoutForm").submit();
}
</script>
	</head>

	<body>
	<nav class="navbar navbar-default navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="index">Dream Furn</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="ProductRegistration">Product<span class="sr-only">(current)</span></a></li>
        <li><a href="AllProduct">AllProduct</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signUp">Sign Up</a></li>
        <li><a href="loginForm">Login</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
<s:url value="/perform_logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse"
        id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <s:if
                    test="${pageContext.request.userPrincipal.name != null}">
                        <li>Welcome : ${pageContext.request.userPrincipal.name} </li>
                        <li><a href="javascript:formSubmit()"> Logout</a></li>
                        <security:authentication var="user"
                            property="principal.authorities" />

                        <security:authorize var="loggedIn" access="isAuthenticated()">

                            <security:authorize access="hasRole('ROLE_ADMIN')">
                            <li>    Admin </li>
                            </security:authorize>

                            <security:authorize access="hasRole('ROLE_USER')">
                                User
                            </security:authorize>
                        </security:authorize>

                </s:if>

                <s:if
                    test="${pageContext.request.userPrincipal.name == null}">
            <li> <a href="loginForm">Login</a> </li></s:if> 
            <li><a href="signUp">Sign Up</a></li>

            <li><a href="${pageContext.request.contextPath }/AllProduct">All
                    Products</a></li>
            <li></li>
            <li><a
                href="${pageContext.request.contextPath }/admin/ProductRegistration">Add
                    New Product</a></li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
</body>
</html>