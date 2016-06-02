<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="springsform" uri="http://www.springframework.org/tags" %>
    <%@taglib prefix="springsformtag" uri="http://www.springframework.org/tags/form" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Product</title>
  <meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
   <script src="resources/js/angular.min.js"></script>
</head>
<body>

<!-- 
<nav class="navbar navbar-default navbar-inverse">
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
</nav>
 -->
 <jsp:include page="header.jsp"></jsp:include>
<div class="container">
  <h2>Product Details </h2>
  
          
  <table class="table">
    <thead>
      <tr>
      <th></th>
    <th></th>
      </tr>
    </thead>
    <tbody>
       <tr>
   
  <%--  <td><c:out value="${product.productname}"/></td>
    <td><c:out value="${product.category}"/></td>
    <td><c:out value="${product.description}"/></td>
    <td><c:out value="${product.price}"/></td>
    <td><img alt="No Image found" src="<c:out value='resouces/images/fur1.jsp'/>"></td> --%>
   
   </tr>
 
    </tbody>
    
  
  </table>
 
</div>

<section class="container" data-ng-app="cartApp" style="height: 430px;">

<div class="row">
<div class="col-md-6">
<img src="${product.image}" height="150" width=150 />
</div>
<div class="col-md-6">

<h3>${product.productname}</h3>
<p>${product.description}</p>
<p>
<strong>Item Code : </strong><span class="label label-warning">${product.prod}</span>
</p>
<p>
<strong>Product Category :</strong> : ${product.category}
</p>

<h4>Rs  ${product.price}  INR</h4>

<p ng-controller="cartController">

<a href='<spring:url value="/AllProduct" />   class="btn btn-success"' >
<span class="glyphicon-circle-arrow-left glyphicon"></span> back
</a>


<a href="#" ng-click ="addToCart('${product.prod}')" class="btn btn-warning btn-large">
 <span class="glyphicon-shopping-cart glyphicon"></span> Order Now
</a>
</p>

</div>
</div>
</section>


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- - See more at: http://myjourneyonjava.blogspot.in/2015/09/spring-4-mvc-hibernate-4-mysql-5-maven.html#sthash.k6j8YznY.dpuf -->
</body>

</html>