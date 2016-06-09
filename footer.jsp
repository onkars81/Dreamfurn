<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container">
	<hr>
	<footer>
		<p>&copy; 2016.</p>
	</footer>
</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/js/hello.js" var="coreJs" />
<spring:url value="/resources/js/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<!-- Bootstrap.js -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
 --%>


<!-- FOOTER -->
<footer>
    <br/>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; Dream Furn 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
<!-- /.container -->




