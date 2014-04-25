<%@ page import="facebook.*" %>
<%@ include file="menu2.jsp" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<HTML>
        <BODY>

                <%
                User theU = (User) session.getAttribute("LoginUser");
                String email = theU.getEmail();
                String personToFriend = request.getParameter("user");
                Collection<User> theUsers = UserRepository.instance().getAllUsers();
                Iterator<User> theUsersIter = theUsers.iterator();
                while( theUsersIter.hasNext()){
                        User tempU = theUsersIter.next();
                        String tempN = tempU.getEmail();
                        if(tempN.equals(personToFriend)){
                                theU.sendFriendRequest(tempU);
                        }
		 }


                %>

                <jsp:forward page="home.jsp" />

        </BODY>
</HTML>

