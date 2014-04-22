<%@ page import="facebook.*" %>
<%@ include file="menu.jsp" %>
<%@ page import ="java.util.Hashtable" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>

<HTML>
        <BODY>

        <%
                String username = request.getParameter("username");
                String password = request.getParameter("password");
		String tempEmail = " ";
                User theUser = new User(username, password, tempEmail);
                theUser =
                UserRepository.instance().getUser(username);

                Collection<User> theUsers =
                        UserRepository.instance().getAllUsers();
                Iterator<User> theUsersIter =
                        theUsers.iterator();
                boolean isU = false;
                while(theUsersIter.hasNext()){
                        User currU = theUsersIter.next();
			String tempU = currU.getUsername();
                        String tempP = currU.getPassword();
                        if((tempU.equals(username)) && (tempP.equals(password)))                        {
                                session.setAttribute("LoginUser" , theUser);
        %>
                                <jsp:forward page="home.jsp" />                  
        <%
                                isU = true;
                        }

                }
                if(isU == false){
                        out.println("Wrong username or password!!");
                }

        %>

        </BODY>
</HTML>

