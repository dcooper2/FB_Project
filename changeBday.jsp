<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<head>
<title>Facebook-Basic Info</title>
<head>
<center><h1>Change Basic Info</h1>
<body>
<%out.println("<FORM action=changeBday.jsp?user=" + email2 + " method=get>");%>
	Birthday: <select name=month><%
	for(int x = 1; x < 13; x++){
		 out.println("<option value=" + x + ">" + x + "</option>");	
	}%></select>
	 <select name=day><%
	int x = 1;
	if(x == 2 || x == 4 || x == 6 || x == 9 || x == 11){
		for(x = 1; x < 31; x++){
			out.println("<option value=" + x + ">" + x + "</option>");
		}
	}
	else{
		for(x = 1; x < 32; x++){
			out.println("<option value=" + x + ">" + x + "</option>");
		}
	}%></select>
	<select name=year><%
	for(x = 1920; x < 2004; x++){
                        out.println("<option value=" + x + ">" + x + "</option>");
	}
	%></select>
	<input type=submit name=submit value="Save Birthday" />
</FORM> 
</HTML>
