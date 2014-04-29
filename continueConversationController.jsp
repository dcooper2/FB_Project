<%@ page import="facebook.*" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<%
        User loggedIn = (User) session.getAttribute("loggedIn");
	String message = request.getParameter("message");
	String value = request.getParameter("value");
	int numConvo = Integer.parseInt(value);
	 Conversation current = loggedIn.getInbox().getConversations().get(numConvo);
        ArrayList<User> usersInConvo = current.getMembers();
        ArrayList<InboxMessage> messages = current.getMessages();
	User userTwo;
	if(!usersInConvo.get(0).equals(loggedIn)){
		userTwo = usersInConvo.get(0);
	}
	else{
		userTwo = usersInConvo.get(1);
	}
	InboxMessage mess = new InboxMessage(message, loggedIn, userTwo);
	ArrayList<Conversation> convos = loggedIn.getInbox().getConversations();
        ArrayList<Conversation> convos2 = userTwo.getInbox().getConversations();
	convos.get(numConvo).getMessages().add(mess);
        //convos2.get(numConvo).getMessages().add(mess);
	response.sendRedirect("continueConversation.jsp?value=" + value);
%>
</HTML>
