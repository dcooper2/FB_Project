<%@include file="menu2.jsp" %>
<%@page import="java.util.ArrayList" %>

<HTML>
        <BODY>
                <%
                        User u = (User) session.getAttribute("LoginUser");
                        String friend_user = request.getParameter("friend");
                        ArrayList<FriendRequest> requests =                                 u.getFriendRequests();
                        for(int i=0; i<requests.size(); i++){
                                if(requests[i].getSender().equals(friend_user)) 
                                {
                                        u.rejectFriendRequest(requests[i]);
                                }
                        
                        }       
                %>      
                
        </BODY>
</HTML>
