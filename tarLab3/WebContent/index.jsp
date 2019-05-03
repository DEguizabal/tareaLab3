<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>


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
		
		 <c:set var = "fechaActual" value = "<%=new java.util.Date()%>" />
	      
	     <p>Fecha sin formatear:
	     	<c:out value="${fechaActual}"/><p>
	     </p>
	    	    
		    <p>Fecha actual con formato: 
				<fmt:formatDate type="date" value="${fechaActual}"/>
	         </p>
	         
	         <c:set var = "estructuraLibros">
	         <books>
	            <book>
	               <name>El señor de los anillos</name>
	               <author>Tolkien</author>
	               <price>10</price>
	            </book>
	            
	            <book>
	               <name>Juego de tronos</name>
	               <author>George R. R. Martin</author>
	               <price>15</price>
	            </book>
	         </books>
	      </c:set>
	      
	  <!-- Parseando estructura HTML -->   
	      <x:parse xml = "${estructuraLibros}" var = "imprimirEstructura"/>
      
     <!-- Imprimiendo estructura con x:forEach -->
	     <table border="1">
            <tr>
	       		<td>Nombre del libro: </td>
	         	<td>Autor: </td>
	      		<td>Precio: </td> 
	        </tr>
		    <x:forEach select = "$imprimirEstructura/books/book" var="imprimirEstructura">
		        <tr>       
		      		<td><x:out select="name" /></td>
		         	<td><x:out select="author" /></td>
		      		<td><x:out select="price" /></td>                      
		        </tr>       
		   </x:forEach>
	  	</table>
</body>
</html>