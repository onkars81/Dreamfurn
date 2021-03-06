<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="formtag" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		<link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
  
  
  <script>
function formSubmit() {
document.getElementById("logoutForm").submit();
}
</script>
	</head>

	<body>

<s:url value="/perform_logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

    <!-- Collect the nav links, forms, and other content for toggling -->


<nav class="navbar navbar-default navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
           
    <div class="navbar-header">
      <a class="navbar-brand" href="index">Dream Furn</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">

                <s:if
                    test="${pageContext.request.userPrincipal.name == null}">
            </s:if> 

            <li><a href="${pageContext.request.contextPath }/AllProduct">All
                    Products</a></li>
            
            <li class="active">
            <s:if test="${pageContext.request.userPrincipal.name != null}">
            <security:authorize access="hasRole('ROLE_ADMIN')">
        <a href="${pageContext.request.contextPath }/admin/ProductRegistration">Add Product<span class="sr-only">(current)</span></a>
			
			</security:authorize>
			</s:if>
			</li>
</ul>        
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="loginForm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <s:if test="${pageContext.request.userPrincipal.name != null}">
            <security:authorize access="hasRole('ROLE_USER')">
       			<li><a href="Cart"><span class="glyphicon glyphicon-icon-shopping-cart"></span>Cart</a></li>
			</security:authorize>
			</s:if>
        <li> <s:if
                    test="${pageContext.request.userPrincipal.name != null}">
                        <li style="color: yellow;">Welcome : ${pageContext.request.userPrincipal.name} </li>
                        <li><a href="javascript:formSubmit()"> Logout</a></li>
                        
                        <security:authentication var="user"
                            property="principal.authorities" />

                        <security:authorize var="loggedIn" access="isAuthenticated()">

                            <security:authorize access="hasRole('ROLE_ADMIN')">
                            <li style="color: yellow;">    Admin </li>
                            </security:authorize>

                            <security:authorize access="hasRole('ROLE_USER')">
                                <li style="color:green;" > User </li>
                            </security:authorize>
                        </security:authorize>

                </s:if></li>
      </ul>



      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>



  
<%--        
  <div class="collapse navbar-collapse"
        id="bs-example-navbar-collapse-1">
 <ul class="nav navbar-nav">

                <s:if
                    test="${pageContext.request.userPrincipal.name == null}">
            <li> <a href="Dreamfurn">Dreamfurn</a> </li></s:if> 
            <li><a href="Product">Product</a></li>

            <li><a href="${pageContext.request.contextPath }/AllProduct">All
                    Products</a></li>
            <li></li>
            <li><a
                href="${pageContext.request.contextPath }/admin/ProductRegistration">Add
                    New Product</a></li>
        
        <li> <a href="signUp"></a> </li>
            <li><a href="login"></a></li>
        
        </ul>
 --%>    </div>
    <!-- /.navbar-collapse -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
</body>
</html>