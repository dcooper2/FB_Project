<%@ page import="facebook.*"  %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>

<HTML>
        <BODY>
        <%
        String username =request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
	String email = request.getParameter("email");

        Collection<User> theUsers = UserRepository.instance().getAllUsers();
        Iterator<User> theUsersIter = theUsers.iterator();
        boolean isU = false;
        while( theUsersIter.hasNext()){
                User tempU = theUsersIter.next();
                String tempN = tempU.getUsername();
                if(tempN.equals(username)){
                        isU = true;
        %>
        <%
                        out.println("Username is taken :(");
	%>
                        <jsp:include page="menu.jsp" />
        <%
                        break;
                }
        }
        if(password == null || repassword == null){
                out.println("You must type in a password!");
                %>
                        <jsp:include page="menu.jsp" />
                <%

        }
        else if(password.equals(repassword) && isU == false){
                UserRepository.instance().createNewUser(username, password, email);
                User newUser = new User(username, password, email);
                session.setAttribute("LoginUser", newUser);
        %>

                <jsp:forward page="home.jsp" />
	<%
         }
        else if(!password.equals(repassword)){
        %>
       		 <jsp:include page="menu.jsp" />
        <%
                  out.println("Passwords don't match!!");
         }

        %>


        </BODY>
</HTML>
