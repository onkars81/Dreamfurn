<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="tag" uri="http://www.springframework.org/tags" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    
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
</head>
<body>

 <jsp:include page="header.jsp"></jsp:include>
 
 
<div class="container">
  <h2>Product Table</h2>
  <p>Product Details </p>            
  <table class="table">
    <thead>
      <tr>
       
   		<th>Product Name</th>
  	 	<th>Product Category</th>
 	 	 <th>Product Description</th>
  		<!--  <th>Price</th> -->
 		  <th>Image</th>
 		  <th align="right">Modification</th>
      </tr>
    </thead>
    <tbody>
      
    <c:forEach items="${productList}" var="product">
   <tr>
   <%-- <td><c:out value="${product.prod}"/></td> --%>
   <td><c:out value="${product.productname}"/></td>
    <td><c:out value="${product.category}"/></td>
    <td><c:out value="${product.description}"/></td>
  <%--   <td><c:out value="${product.price}"/></td> --%>
   <%--  <td><img src="<c:out value="/resources/images/${product.prod}.jpg"/>" width="100px" ></img></td> --%>
       <td><img src="${pageContext.request.contextPath}/resources/images/${product.prod}.jpg" width="100px" ></img></td>
   
    <td align="center"><a href="showProduct?prod=${product.prod}">View</a> 
    
    
     <c:if test="${pageContext.request.userPrincipal.name != null}">
            <security:authorize access="hasRole('ROLE_ADMIN')">
 	| <a href="productform?prod=${product.prod}">Edit</a> | <a href="deleteProduct?prod=<c:out value='${product.prod}'/>">Delete</a></td>		
			</security:authorize>
			</c:if>
      
   
   </tr>
  </c:forEach>
    </tbody>
    
  
  </table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- - See more at: http://myjourneyonjava.blogspot.in/2015/09/spring-4-mvc-hibernate-4-mysql-5-maven.html#sthash.k6j8YznY.dpuf -->

</body>

</html>