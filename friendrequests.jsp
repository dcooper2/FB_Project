<%@ page import="facebook.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Date" %>
<HTML>
<head>
	<title>Facebook-Friend Request</title>
</head>
<%@ include file="menu2.jsp" %></br>
	<BODY>
	<center>	<h1>Your Friend Requests!</h1>
		<hr></center>
	<%
			User u = (User) session.getAttribute("loggedIn");
			Boolean handlefr = true;
                	ArrayList<User> frList = u.getFriendRequests();
			if(!frList.isEmpty()){
				for(int i=0; i<frList.size(); i++){
				  out.println((i+1) + ". <img src="+frList.get(i).getProfilePic()+ " alt=profilePic width=15px height=15px />");	
				  out.println(frList.get(i).getUsername()+ "  ");
				  %></br>
				  <%out.println("<a href=respond.jsp?user=" + frList.get(i).getEmail() + "&value=accept> Accept </a> | <a href=respond.jsp?user=" + frList.get(i).getEmail() + "&value=reject> Reject </a>");
				  out.println("<br/>");	
				}
			}
			else if (frList.isEmpty()){
	%>
				<h2>You have no new friend requests</h2>				
	<%
			}

                
	%>


	</BODY>
</HTML>
