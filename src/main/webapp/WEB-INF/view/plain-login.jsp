<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<style>

.failed {
color:red
}
</style>

<head>

<title>Custom Login Page</title>
</head>


<h3>My Custom Login Page</h3>





        <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
          method="POST">

                <p>
                User name: <input type="text" name="username" />
                </p>

                <p>
                Password: <input type="password" name="password" />
                </p>

		<c:if test="${param.error !=null}">
		<i class="failed">Sorry! You entered invalid username/password.</i>
		</c:if>

                <input type="submit" value="Login" />
                
              

        </form:form>

<body>
</body>








</html>

