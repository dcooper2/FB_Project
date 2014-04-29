<%@ page import="facebook.*" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<head>
	<title>Facebook-Inbox</title>
</head>
<%@include file="menu2.jsp"%>
<body>
<center>
<H1>Inbox</H1>
<hr>
</center>
<form action="newMessage.jsp" align=right method="get">
	<Input type=submit name=submit value="New Message" /></br>
</Form>
<center><%
	User loggedIn = (User) session.getAttribute("loggedIn");
	Inbox userInbox = loggedIn.getInbox();
	ArrayList<Conversation> conversations = userInbox.getConversations();
	if(conversations.size() == 0){
		out.println("The user has no messages");
	}
	else{
		for(int x = 0; x < conversations.size(); x++){
			Conversation thisConvo = conversations.get(x);
			ArrayList<InboxMessage> inConvo = thisConvo.getMessages();
%><%
	out.println("<a href=continueConversation.jsp?value="+x + ">");%>
<div id="message" style="border:1px solid;border-color:blue;margin-top:5px;width:80%;float:center;height:75px;border-radius:25px;"><%
			ArrayList<User> usersInConvo = thisConvo.getMembers();
			int y = 0;
			if(!usersInConvo.get(y).equals(loggedIn)){
				%><b><u><%out.println("Conversation with " + usersInConvo.get(y).getUsername());%></b></u></br><%	
			}
			else{
				y += 1;
				%><b><%out.println("Conversation with " + usersInConvo.get(y).getUsername());%></b></br><%
			}
			int mostRecent = inConvo.size();
			InboxMessage lastMessage = inConvo.get(inConvo.size() - 1);
			out.println("<b>Last Message:</b> " + lastMessage.getText() + "</br><font size=2> from: " + inConvo.get(mostRecent - 1).getAuthor().getUsername());%></font></br><i><font size=1><%
			out.println(inConvo.get(mostRecent - 1).getDate());%></i></font></br></div></a><%
		}
	}
%>
</body>
</HTML>
