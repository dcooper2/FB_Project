<%@include file="menu2.jsp" %>
<%@page import="java.util.ArrayList" %>

<HTML>
        <BODY>
                <%
                        User u = (User) session.getAttribute("LoginUser");
                        String friend_user = request.getParameter("username");
                        Boolean handlefr = request.getParameter("handlefr");
                        ArrayList<FriendRequest> requests =                                 u.getFriendRequests();
                        for(int i=0; i<requests.size(); i++){
                                if(requests[i].getSender().getUsername().equals(friend_user) && (handlefr == true))
                                {
                                        u.acceptFriendRequest(requests[i]);
                                }
                                else if(requests[i].getSender().getUsername().equals(friend_user) && (handlefr == false))
                                {
                                        u.rejectFriendRequest(requests[i]);
                                }

	 		 }
                %>

        </BODY>
</HTML>
                          
