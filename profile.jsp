<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<head>
<title>Profile</title>
<head>
<center>
<div id="basicinfo" style=";border:2px solid;border-color:blue;margin-top:100px;width:800px;height:100px;border-radius:25px;">
<%
        User loggedIn = (User) session.getAttribute("loggedIn");
        String name = loggedIn.getUsername();
        %><H2><%
        out.println(name);
        %></h2>
</div>
<div id="leftSide" style="float:left;border:2px solid;border-color:blue;margin-top:2px;width:150px;height:500px;border-radius:25px;">
<%
        ArrayList<Group> groups = loggedIn.getGroups();
        if(groups.size() == 0){
                out.println("The user is a member of no groups");
        }
        else{
                for(int x = 0; x < groups.size(); x++){
                        String groupName = groups.get(x).getName();
                        out.println(groupName);
                }
        }
%>
</div>
<div id="center" style="text-align:center;float:left;margin-top:2px;width:610px;height:500px;border:2px solid;border-color:blue;border-radius:25px;">
<H3>Wall</H3>
<FORM action="post.jsp" method="get">
        <INPUT type=text name=post size="50" style="height:100px;"/></br></br>
        <INPUt type=submit name=submit value="Post" />
</FORM>
<hr>
<%
        ArrayList<Post> posts = loggedIn.getWall().getPosts();
        if(posts.size() == 0){
                 out.println("The user has no activity on their wall. Make a post!");
        }
        else{
                for(int x = 0; x < posts.size(); x++){
                        String postText = posts.get(x).getText();
                        out.println(postText);
                }
        }
%>
</div>
<div id="leftSide" style="margin-top:2px;background-color:#6B55FF;float:left;width:100px;border:2px solid;border-color:black;width:150px;height:500px;border-radius:25px;">
<H3>Friends</H3>
-Friend 1
-Friend 2
</div></center>
</HTML>
