<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>aswkm</h1>
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
</body>
</html>