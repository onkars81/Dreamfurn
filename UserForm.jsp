<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<div class="container">

	<c:choose>
		<c:when test="${userForm['new']}">
			<h1>Add User</h1>
		</c:when>
		<c:otherwise>
			<h1>Update User</h1>
		</c:otherwise>
	</c:choose>
	<br />

	<spring:url value="/users" var="userActionUrl" />

	<form:form class="form-horizontal" method="post" 
                modelAttribute="userForm" action="${userActionUrl}">

		<form:hidden path="id" />

		<spring:bind path="name">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<form:input path="name" type="text" class="form-control" 
                                id="name" placeholder="Name" />
				<form:errors path="name" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="email">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<form:input path="email" class="form-control" 
                                id="email" placeholder="Email" />
				<form:errors path="email" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="password">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Password</label>
			<div class="col-sm-10">
				<form:password path="password" class="form-control" 
                                id="password" placeholder="password" />
				<form:errors path="password" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="confirmPassword">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">confirm Password</label>
			<div class="col-sm-10">
				<form:password path="confirmPassword" class="form-control" 
                                id="password" placeholder="password" />
				<form:errors path="confirmPassword" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="address">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Address</label>
			<div class="col-sm-10">
				<form:textarea path="address" rows="5" class="form-control" 
                                id="address" placeholder="address" />
				<form:errors path="address" class="control-label" />
			</div>
		  </div>
		</spring:bind>

	</form:form>

</div>

</body>