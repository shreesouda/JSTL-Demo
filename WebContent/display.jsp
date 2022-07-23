<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jsp to database</title>
</head>
<body>

<!-- jstl tags, c, sql (for database connectivity), fn (to use inbuilt functions) -->

<c:set var = "str" value = "shreenidhi bhat da"></c:set>

<sql:setDataSource var = "db" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/db1" user = "root" password = "kundapura@007" />
<sql:query var = "res" dataSource = "${db}">SELECT * FROM employee</sql:query>

<c:forEach items = "${res.rows}" var = "r"> 
${r.id} : ${r.name} : ${r.experience} : ${r.age} <br>
</c:forEach>

<c:out value="${fn:indexOf(str,'ra')}"></c:out> <br>
${fn:toUpperCase(str)} <br>

<%
String s = "rahul";
out.print(s);
%>

</body>
</html>