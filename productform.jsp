<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
</head>
<body>
<div class="container">
<%@ include file="/WEB-INF/views/header.jsp" %>

	<spring:url value="actionEdit/${prod}" var="productActionUrl" />

	<form:form class="form-horizontal" method="post" modelAttribute="Product" action="${productActionUrl}">

		<form:hidden path="prod" />
		
		<spring:bind path="productname">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Product Name</label>
				<div class="col-sm-6">
					<form:input path="productname" name="productname" type="text" class="form-control " id="productname" placeholder="product name" />
					<form:errors path="productname" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="category">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Category</label>
				<div class="col-sm-6">
					<form:input path="category" name="category" class="form-control" id="category" placeholder="Category" />
					<form:errors path="category" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="description">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Description</label>
				<div class="col-sm-6">
					<form:input path="description" name="description" class="form-control" id="Description" placeholder="Description" />
					<form:errors path="description" class="control-label" />
				</div>
			</div>
		</spring:bind>

		

		<spring:bind path="price">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Price</label>
				<div class="col-sm-6">
					<form:input path="price" name="price" rows="5" class="form-control" id="price" placeholder="price" />
					<form:errors path="price" class="control-label" />
				</div>
			</div>
		</spring:bind>


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-6">
			<button type="submit" class="btn-sm btn-primary pull-right"> Update</button>
			<button type="reset" class="btn-sm btn-primary pull-right"> Reset</button>
			<a href="${pageContext.request.contextPath}/AllProduct" class="btn-sm btn-primary pull-left"> Back</a>
			</div>
		</div>
	</form:form>



<%@ include file="/WEB-INF/views/footer.jsp" %>


</div>

</body>
</html>










