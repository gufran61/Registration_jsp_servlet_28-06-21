<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
// fetch two numbers
String n1=request.getParameter("n1");
String n2=request.getParameter("n2");

//converting String to Integer
 int a=Integer.parseInt(n1);
 int b=Integer.parseInt(n2);
 int n = a/b;
%>
<h1>Result is : <%= n%></h1>
</body>
</html>