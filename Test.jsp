<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>



<body>


<nav class="navbar navbar-inverse navbar-default ">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        
      </button>
      <a class="navbar-brand" href="Test">Furniture Store</a>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="ProductRegistration">Product<span class="sr-only">(current)</span></a></li>
        <li><a href="AllProduct">AllProduct</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="SignUp">Sign Up</a></li>
        <li><a href="Login">Login</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<section>

    <div align="center">
        <form:form action="actionTest" method="POST" modelAttribute="Product">
            <table border="0">
                <tr>
                <td colspan="2" align="center"><h2></h2></td>
                <div style="color: teal; font-size: 30px">Product Submission</div>
                </tr>
                <tr>
                    <td>Product Name:</td><h2></h2>
                    <td><form:input path="productname" type="text" /></td>
                </tr>
                <tr>
                    <td>Category</td><h2></h2>
                    <td><form:input path="category" /></td>
                </tr>
                <tr>
                    <td>Description:</td><h2></h2>
                    <td><form:input path="description" /></td>
                </tr>
                <tr>
                    <td >Price :</td><h2></h2>
                    <td><form:input path="price" /></td>
                </tr>
                
				<tr>
                    <td>Image</td><h2></h2>
                    <td><form:input path="image" /></td>
                </tr>
                
				
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                </tr> 
       
       <!-- <tr colspan="2">
       
       <td><input type="submit" name="action" value="Add"></td>
       <td><input type="submit" name="action" value="Edit"></td>
       <td><input type="submit" name="action" value="Delete"></td>
       <td><input type="submit" name="action" value="Search"></td>
       </tr> -->
       
       
       
            </table>
        </form:form>
    </div>

</section>
</body>
</html>