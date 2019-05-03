<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:out value="Usando c:out" />
	<p>

		<c:forEach var="contador" items="1,2,3,4,5">
	    	Conteo usando c:foreach <c:out value="Contando: ${contador}" />
			<p>
		</c:forEach>
</body>
</html>