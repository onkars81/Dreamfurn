<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="springtag" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signed In</title>
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

<s:url value="/perform_logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<div class="row">
  <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
      <img src="..." alt="...">
    </a>
  </div>
 
 <h1>Already an 
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
 </h1>
</div>


</body>
</html>