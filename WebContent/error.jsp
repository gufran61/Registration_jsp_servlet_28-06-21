<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>!! sory something went wrong</title>
<style>
*{
padding: 0px;
margin: 0px;
}
</style>
</head>
<body>
<div style="padding: 20px;color: blue; background: gray;">
<h1>!! sory something went wrong</h1>
<br>
<p>note..........</p>
<p><%=exception %></p>
</div>
</body>
</html>