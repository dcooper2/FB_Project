<%@ page import="facebook.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Date" %>
<%@ include file="menu2.jsp" %>

<HTML>
	<BODY>
		<h1>Your Friend Requests!</h1>
		<FORM action="friendRequestController.jsp" method="get">
	<%
			out.println("Hi\n");
			User u = (User) session.getAttribute("LoginUser");
			Boolean handlefr = true;
                	ArrayList<FriendRequest> frList = u.getFriendRequests();
			if(frList != null){
				for(int i=0; i<frList.size(); i++){
				  out.println(frList.get(i).getSender().getProfilePic()+ "  ");	
				  out.println(frList.get(i).getSender().getUsername()+ "  ");
				  out.println(" ("+ frList.get(i).getDate()+") ");
				  %>
				  <a href="http://rosemary.umw.edu:44403/fbProject/friendRequestController.jsp?username=<%=frList.get(i).getSender().getUsername()%>&handlefr=true"> Accept </a>
				 <a href="http://rosemary.umw.edu:44403/fbProject/friendRequestController.jsp?username=<%=frList.get(i).getSender().getUsername()%>&handlefr=false"> Reject </a>
				  <%	
				  out.println("<br/>");	
				}
			}
			else{
				out.println("Hi again\n");
	%>
				<h2>You have no new friend requests</h2>				
	<%
			}

                
	%>
	
		
		
		</FORM>

	</BODY>
</HTML>
