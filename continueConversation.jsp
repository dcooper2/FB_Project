<%@ page import="facebook.*" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<head>
        <title>Facebook-New Conversation</title>
</head>
<%@include file="menu2.jsp" %>
<body>
<center>
<%
	User loggedIn = (User) session.getAttribute("loggedIn");
	String value = request.getParameter("value");
	int numConvo = Integer.parseInt(value);
	Conversation current = loggedIn.getInbox().getConversations().get(numConvo);
	ArrayList<User> usersInConvo = current.getMembers();
	ArrayList<InboxMessage> messages = current.getMessages();
	if(!usersInConvo.get(0).equals(loggedIn)){
		out.println("<H1>Conversation with " + usersInConvo.get(0).getUsername() + "</H1>");
	}
	else{
		out.println("<H1>Conversation with " + usersInConvo.get(1).getUsername() + "</H1>");
	}
%>
<hr>
<%
	for(int x = 0; x < messages.size(); x++){
		out.println("<b>" + messages.get(x).getAuthor().getUsername() + "</b>: " + messages.get(x).getText() + " <font size=1><i>" + messages.get(x).getDate() + "</i></font></br>");
	}
%></br>
<%	out.println("<FORM action=continueConversationController.jsp method=get id=sendMessage >");
%>
<input type=text size="75" style="height:120px;" name="message" form=sendMessage />
<%	out.println("<input type=hidden value=" + value + " name=value />");
%>
</br></br>
<input type=submit name=submit value="Send Message" />
</FORM>
</center>
</Body>
</HTML>
