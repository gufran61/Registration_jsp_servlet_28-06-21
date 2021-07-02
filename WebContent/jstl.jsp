<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Example of Taglib directive</title>
</head>
<body>
<h1>Taglib Directive Tutorial</h1>
<%-- <c:set var="name" value="techsoft india"></c:set>
<c:out value="${name}"></c:out>
<c:if test="${3>2 }">
<h1>this is true block</h1>
</c:if> --%>
<%!
int a=40;
int b=2;
String value=null;
%>
<%
int divide=a/b;
%>
<h1>divided by:<%=divide %></h1>
<h1>divided by:<%=value.length() %></h1>
</body>
</html>