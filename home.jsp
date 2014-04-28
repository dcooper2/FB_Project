<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>

<HTML>
        <BODY>
        <style>
        h1{
                text-shadow: 2px 2px #89AFCF;
        }
        h3{
                text-shadow: 2px 2px #89AFCF;
        }
        </style>
        <%
                User log = (User) session.getAttribute("LoginUser");
                if(log == null){
                        response.sendRedirect("login.jsp");
                }else{
	%>
                <h1>Welcome,  <%=log.getUsername()%> !</h1>
		<h3>Hi There</h3>


	<FORM action="addFriend.jsp" method="get">
		<h3>Send A Friend Request:</h3>
		<select name="user">
	<%
		User user1 = (User)session.getAttribute("LoginUser");

                 Collection<User> theUsers =
                                UserRepository.instance().getAllUsers();
                 Iterator<User> theUsersIter =
                                        theUsers.iterator();
                ArrayList<User> gUnit = user1.getFriends();
                       while( theUsersIter.hasNext()){
                                        User tempU = theUsersIter.next();
                                        String tempN = tempU.getEmail();
                                        boolean isInThere = false;
                        for(int k = 0; k< gUnit.size(); k++){
                                if(tempN.equals(gUnit.get(k).getEmail())){
                                        isInThere = true;
                                        break;
                                }
			}
                                if(!tempN.equals(user1.getEmail()) && isInThere==false){
                        %>
                        <option name="user" value="<%=tempN%>" > <%= tempN %>  </option>

                        <%

                                        }
                         }

                        %>
                        </select>

                        <input type=submit name=submit value="Add Friend!" />
		
	<%
		}
	%>
		</FORM>

	</BODY>
</HTML>
