<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Success</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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


    <div align="center">
        <form action="ProductRegistration">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Registration Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Thank you for registering! Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>Product Name:</td>
                <td>${Product.productname}</td>
            </tr>
            <tr>
                <td>Category</td>
                <td>${Product.category}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${Product.description}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${Product.price}</td>
            </tr>
 
 			<tr>
                <td>Image:</td>
                <td>${Product.image}</td>
            </tr>
 
 			<tr>
 			<td><input type="submit" value="submit" ></td>
 			</tr>
 
        </table>
        </form>
    </div>
    
</body>
</html>

