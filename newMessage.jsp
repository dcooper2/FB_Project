<%@ page import="facebook.*" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<head>
	<title>Facebook-New Message</title>
</head>
<%@include file="menu2.jsp" %>
<body>
<center>
<H1>New Message</H1>
<hr>
</center>
<FORM action="newMessageController.jsp?value=null" method="get" id="sendMessage">
<select name="sendTo">
<%
	User loggedIn = (User) session.getAttribute("loggedIn");
	ArrayList<User> friends = loggedIn.getFriends();
	for(int x = 0; x < friends.size(); x++){
		User sendTo = friends.get(x);
		String sentToName = friends.get(x).getUsername();
		out.println("<option name=sendTo value=" + sendTo.getEmail() + ">"+sentToName + "</option>");
	}
%>
</select></br>
Subject: <input type=text name=subject /></br>
<input type=text size="75" style="height:120px;" name="message" form=sendMessage />
</br></br>
<input type=submit name=submit value="Send Message" />
</form>
