<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Example of Taglib directive</title>
</head>
<body>
<h1>Taglib Directive Tutorial</h1>
<c:set var="name" value="techsoft india"></c:set>
<c:out value="${name}"></c:out>
<c:if test="${3>2 }">
<h1>this is true block</h1>
</c:if>
</body>
</html>