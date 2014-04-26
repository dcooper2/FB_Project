<%@ page import="facebook.*" %>
<%@ include file="menu.jsp" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>

<HTML>
        <BODY>

        <%
                String email= request.getParameter("email");
                String password = request.getParameter("password");
                String tempUsername = " ";
                User theUser = new User(tempUsername, password, email);
                theUser =
                UserRepository.instance().getUser(email);

                Collection<User> theUsers =
                        UserRepository.instance().getAllUsers();
                Iterator<User> theUsersIter =
                        theUsers.iterator();
                boolean isU = false;
                while(theUsersIter.hasNext()){
                        User currU = theUsersIter.next();
                        String tempU = currU.getEmail();
                        String tempP = currU.getPassword();
                        if((tempU.equals(email)) && (tempP.equals(password)))                        {
                                session.setAttribute("LoginUser" , theUser);
                                response.sendRedirect("home.jsp");
                                isU = true;
                        }

                }
                if(isU == false){
                        out.println("Wrong username or password!!");
                }

        %>

        </BODY>
</HTML>
