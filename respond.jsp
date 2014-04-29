<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<%
	String email = request.getParameter("user");
	String answer = request.getParameter("value");
	User current = (User) session.getAttribute("loggedIn");
	User userToAdd = UserRepository.instance().getUser(email);
	if(answer.equals("accept")){
		current.acceptFriendRequest(userToAdd);
	}
	else{
		current.rejectFriendRequest(userToAdd);
	}
	response.sendRedirect("friendrequests.jsp");
	%>





<HTML>
