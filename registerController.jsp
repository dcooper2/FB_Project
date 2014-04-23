<%@ page import="facebook.*"  %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>

<HTML>
<%
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        if(pass.equals(request.getParameter("rePass"))){
                Collection<User> myUsers = null;
                myUsers = UserRepository.instance().getAllUsers();
                if(!UserRepository.instance().check(email)){
                        User myUser = UserRepository.instance().createNewUser(name, pass, email);
                        session.setAttribute("loggedIn", myUser);
                        response.sendRedirect("home.jsp");
                }
                else{
                        response.sendRedirect("register.jsp?Error=2");
                }
        }
        else if(!pass.equals(request.getParameter("rePass"))){
                response.sendRedirect("register.jsp?Error=1");
        }
%>
</HTML>
