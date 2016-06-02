<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>


</head>
<body>
 
 <jsp:include page="header.jsp"></jsp:include>
 

<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
       <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/fur1.jpg" alt="Chennai Express" width="400" height="150">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/fur6.jpg" alt="Lagaan" width="400" height="150">
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/fur3.jpg" alt="phantom" width="400" height="150">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/fur4.jpg" alt="sholay" width="400" height="150">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/fur5.jpg" alt="singham" width="400" height="150">
      </div>


    </div>
    
        <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="container">
<div class="row">

<div class="col-md-4">
  <h2>Wooden Chair</h2>
  <p>Newly furnished wooden chair for sale at a very cheap rate</p>            
  <img src="${pageContext.request.contextPath}/resources/images/fur8.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
  </div>
<div class="col-md-4">
  <h2>Sofa</h2>
  <p>Sofa</p>            
  <img src="${pageContext.request.contextPath}/resources/images/fur7.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
  </div>
<div class="col-md-4">
  <h2>Sofa-cum bed</h2>
  <p>Sofa -Cum bed</p>            
  <img src="${pageContext.request.contextPath}/resources/images/fur6.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
</div>
</div>
</div>
<script src="http://code.jquery.com/query-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>



</body>
</html>