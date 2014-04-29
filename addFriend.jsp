<%@ page import="facebook.*" %>
<%@ include file="menu2.jsp" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<HTML>
        <BODY>

                <%
                User theU = (User) session.getAttribute("loggedIn");
                String email = request.getParameter("friendLIst");
		if(email == null){
			response.sendRedirect("profile.jsp");
		}
		else{
		User userToadd = UserRepository.instance().getUser(email);
		theU.sendFriendRequest(userToadd);
		response.sendRedirect("profile.jsp");
                }%>


        </BODY>
</HTML>
