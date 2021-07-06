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
<%@include file="header.jsp" %>
<h1>Random Number :</h1>
<%
Random r = new Random();
int n=r.nextInt(10);
out.println(n);
%>
<%=n %>
<!-- Declarative Tag....... -->
<%!
int a =5;
int b= 10;
String name="gufran";
public int dosum(){
	return a+b;
}
public String reverse(){
	StringBuffer sb = new StringBuffer(name);
	return sb.reverse().toString();
}
%>
<!-- Scriptlet Tag....... -->
<%
out.println(a);
out.println("<br>");
out.println(b);
out.println("<br>");
out.println("callin sum "+dosum());
out.println("<br>");
out.println("calling reverse "+reverse());
%>
<!-- Expression Tag............ -->
<h1>Sum is : <%=dosum() %></h1>
<%=a %>
<%=b %>
<%=name %>
<br>
<div>
<a href="op.jsp">Go to page op.jsp</a></div>
</body>
</html>