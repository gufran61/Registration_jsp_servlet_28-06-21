<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random,java.util.ArrayList,java.io.*" %>
    <%@page isErrorPage="true" %>
    <%@page session="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
*{
margin:0px;
padding: 0px;
}
</style>
</head>
<body>
<form action="servlet2">
<h1>in servlet 2</h1>
<button type="submit">Submit</button>
</form>
</body>
</html>