<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>


<body>


<!-- 


<script>
   function setfilename(val)
  {
    var fileName = val.substr(val.lastIndexOf("\\")+1, val.length);
   document.getElementById("filename").value = fileName;
  }
</script>
    <form>
     File: <input type="file" id="file" name="file" onchange="setfilename(this.value);"/>
     Upload File : <input type="text"  id="filename"/>
    </form>
    
    
<nav class="navbar navbar-inverse navbar-default ">
  <div class="container-fluid">
    Brand and toggle get grouped for better mobile display
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        
      </button>
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

<div class="container">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<fieldset>
				
				<form:form class="form-horizontal" action="${pageContext.request.contextPath}/admin/actionTest" method="POST" commandName="insert" enctype="multipart/form-data">
					<div class="control-group">
						<label class="control-label">Product Name</label>
						<div class="controls">
							<input type="text" path="productname" name="productname" id="productname" title="Product Name" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Category</label>
						<div class="controls">
							<input type="text" path="category" name="category" id="category" title="Category" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Description</label>
						<div class="controls">
							<input type="text" path="description" name="description" id="description" title="Description" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Price</label>
						<div class="controls">
							<input type="text" path="price" name="price" id="price" title="Price" value="">
						</div>
					</div>
					
					<div class="control-group">
				<label class="control-label">Image</label>
					<div class="controls">
				<form:input type="file" path="image" name="image"/>
			</div>
				</div>
					
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Submit</button>
						<!-- <button type="button" class="btn">Cancel</button> -->
					</div>
				</form:form>
				</fieldset>
			</div>
		</div>
	</div>		


<br>
</div>







</body>
</html>












<%-- <div class="container">


	<spring:url value="/ProductRegistration" var="userActionUrl" />

	<form:form class="form-horizontal" method="post" 
                modelAttribute="Product" action="actionTest">

		<form:hidden path="id" />

		<spring:bind path="productname">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Product Name</label>
			<div class="col-sm-10">
				<form:input path="productname" type="text" class="form-control" 
                                id="productname" placeholder="Product name" />
				<form:errors path="productname" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="category">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Product Name</label>
			<div class="col-sm-10">
				<form:input path="category" class="form-control" 
                                id="category" placeholder="category" />
				<form:errors path="category" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="price">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Product Name</label>
			<div class="col-sm-10">
				<form:input path="price" class="form-control" 
                                id="price" placeholder="Price" />
				<form:errors path="price" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="image">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Product Name</label>
			<div class="col-sm-10">
				<form:input path="image" class="form-control" 
                                id="image" placeholder="image" />
				<form:errors path="image" class="control-label" />
			</div>
		  </div>
		</spring:bind>

	
	
	<td>
				  <spring:url value="/users/${user.id}" var="userUrl" />
				  <spring:url value="/users/${user.id}/delete" var="deleteUrl" /> 
				  <spring:url value="/users/${user.id}/update" var="updateUrl" />

				  <button class="btn btn-info" 
                                          onclick="location.href='${userUrl}'">Query</button>
				  <button class="btn btn-primary" 
                                          onclick="location.href='${updateUrl}'">Update</button>
				  <button class="btn btn-danger" 
                                          onclick="this.disabled=true;post('${deleteUrl}')">Delete</button>
                                </td>



<div class="form-group">
		  <div class="col-sm-offset-2 col-sm-10">
			<c:choose>
			  <c:when test="${userForm['new']}">
			     <button type="submit" class="btn-lg btn-primary pull-right">Add
                             </button>
			  </c:when>
			  <c:otherwise>
			     <button type="submit" class="btn-lg btn-primary pull-right">Update
                             </button>
			  </c:otherwise>
			</c:choose>
		  </div>
		</div>
	</form:form>

</div>
 --%>

