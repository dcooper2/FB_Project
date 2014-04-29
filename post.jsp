<%@ page import="facebook.*"  %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>

<HTML>
<%
	User loggedIn = (User) session.getAttribute("loggedIn");
	String text = request.getParameter("post");
	String email = request.getParameter("user");
	User postOn = UserRepository.instance().getUser(email);
	Post post = new Post(loggedIn, postOn, text);
	postOn.getWall().getPosts().add(post);
	response.sendRedirect("profile.jsp?user="+email);
%>
</HTML>	
