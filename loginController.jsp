<%@ page import="facebook.*" %>
<%@ include file="menu.jsp" %>
<%@ page import ="java.util.Hashtable" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>

<HTML>
<%
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        Collection<User> myUsers = null;
        User thisUser;
        myUsers = UserRepository.instance().getAllUsers();
        if(UserRepository.instance().check(email)){
                thisUser = UserRepository.instance().getUser(email);
                String pass = thisUser.getPassword();
                if(pass.equals(password) && myUsers != null){
                        User myUser = UserRepository.instance().getUser(email);
                        session.setAttribute("loggedIn", myUser);
                        response.sendRedirect("home.jsp");
                }
                else{
                        response.sendRedirect("login.jsp?Error=1");
                }
        }
        else{
                response.sendRedirect("login.jsp?Error=2");
        }
%>
</HTML>

