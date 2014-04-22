<%@ page import="facebook.*" %>
<%@include file="menu.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>

<HTML>
        <BODY>
        <style>
        h1{
                text-shadow: 2px 2px #89AFCF;
        }
        h3{
                text-shadow: 2px 2px #89AFCF;
        }
        </style>
        <%
                User log = (User) session.getAttribute("LoginUser");
                if(log == null){
                        response.sendRedirect("login.jsp");
                }else{
	%>
                <h1>Welcome,  <%=log.getUsername()%> !</h1>
		<h3>Hi There</h3>
	</BODY>
</HTML>
