<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
<title> pl.alski Company Home Page </title>
</head>
<body>
        <h2> pl.alski Company Home Page </h2>
        <hr>

        <p> Welcome to the pl.alski company home page!
        </p>

		<!--  display user and a role -->
		
	User: <security:authentication property="principal.username"/>
<br><br>
	Roles: <security:authentication property="principal.authorities"/>


<!--  Add a link to point to /leaders ... this is for the MANAGERs -->

	<security:authorize access="hasRole('MANAGER')">
	
		<p>
				<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
				(Only for Manager peeps)
		</p>
		
	</security:authorize>


	
<!--  Add a link to point to /systems ... this is for the ADMINs -->

	<security:authorize access="hasRole('ADMIN')">
	
		<p>
				<a href="${pageContext.request.contextPath}/systems">IT crew Meeting</a>
				(Only for IT peeps)
		</p>
		
	</security:authorize>
	
	
        <!-- Add a logout button -->

        <form:form action="${pageContext.request.contextPath}/logout"
        method="POST">

        <input type="submit" value="Logout" />
        </form:form>
</body>
</html>