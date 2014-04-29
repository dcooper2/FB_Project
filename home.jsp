<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>

<HTML>
<head>
	<title>Facebook - Home</title>
</head>
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
                User log = (User) session.getAttribute("loggedIn");
                if(log == null){
                        response.sendRedirect("login.jsp");
                }else{
                %>
                     <center><h1>Welcome,  <%=log.getUsername()%> !</h1>
<%
		/*ArrayList<Post> newsFeed = log.getNewsFeed();
		for(int x = 0; x < newsFeed.size(); x++){
			out.println(newsFeed.get(x).getAuthor() + ": " + newsFeed.get(x).getText() + " " +  newsFeed.get(x).getDate());
		}*/					
        } %>
<div id="userInfo" style="border-left:1px solid;border-color:blue;float:right;margin-top:25px;width:25%;height:100%">
<h4><%
	out.println("<img src=" + log.getProfilePic() + " alt=profilePic width=35px height:35px /> " + log.getUsername());
%></h4>
<hr>
</div>	
       </center></BODY>
</HTML>
