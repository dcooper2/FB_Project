<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<body>
<%
User loggedIn = (User) session.getAttribute("LoginUser");
String text = request.getParameter("post");
Post np = new Post(loggedIn, loggedIn, text);
loggedIn.getWall().getPosts().add(np);
//out.println("Post text is: " + text);
response.sendRedirect("profile.jsp");
%>
</body>
</html>
