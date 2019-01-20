<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<title>Login</title>
</head>
<body>


	<font color="red">
	        ${SPRING_SECURITY_LAST_EXCEPTION.message}
        </font>
	<form action="<%=request.getContextPath()%>/appLogin" method="POST">
		UserName:	<input type="text" name="app_username"/><br/><br/>
		Password: <input type="password" name="app_password"/> <br/><br/>			
		<input type="submit" value="Login"/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>			
	</form>

</body>
</html>