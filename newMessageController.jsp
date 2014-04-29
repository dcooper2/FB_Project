<%@ page import="facebook.*" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<%
	User loggedIn = (User) session.getAttribute("loggedIn");
	String email = request.getParameter("sendTo");
	User toSend = UserRepository.instance().getUser(email);
	String text = request.getParameter("message");
	 if(request.getParameter("value") == null){
                String subject = request.getParameter("subject");
                loggedIn.startNewConvo(loggedIn, toSend, text, subject);
        }
	else{
		String value = request.getParameter("value");
        	int numConvo = Integer.parseInt(value);
		ArrayList<Conversation> convos = loggedIn.getInbox().getConversations();
		ArrayList<Conversation> convos2 = toSend.getInbox().getConversations();
		InboxMessage mess = new InboxMessage(text, loggedIn, toSend);
		convos.get(numConvo).getMessages().add(mess);
		convos2.get(numConvo).getMessages().add(mess);		
	}	
	response.sendRedirect("inbox.jsp");
%>
</HTML> 
