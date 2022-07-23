<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>use of jstl</title>
</head>
<body>

<!-- expression language -->
${name1} <br>

Hi shree <br>

<!-- jstl tags -->
<c:out value="${name1}"></c:out> <br>

<c:forEach items = "${stud}" var = "s">
<c:out value="${s}"></c:out> <br>
</c:forEach>

<!-- mysql connector/J -->

</body>
</html>