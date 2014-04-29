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
<div id="basicinfo" style=";border:1px solid;border-color:blue;margin-top:100px;width:80%;height:100px;border-radius:25px;">
<%
        User loggedIn = (User) session.getAttribute("LoginUser");
        String name = loggedIn.getUsername();
        %><H2><%
        out.println(name);
        %></h2>
        Birthday:  | Hobbies:
</div>
<div id="leftSide" style="float:left;border:1px solid;border-color:blue;margin-top:2px;width:21%;height:500px;border-radius:25px;">
<H3>Groups</H3>
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
<div id="center" style="text-align:center;float:left;margin-top:2px;width:56%;height:500px;border:1px solid;border-color:blue;border-radius:25px;">
<H3>Wall</H3>
<FORM action="post.jsp" method="get">
        <textarea name=post cols=25 rows=6> </textarea></br></br>
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
                        String postText = posts.get(x).getText();%><b><%
                        out.println(posts.get(x).getAuthor().getUsername() + ": ");%></b><%
                        out.println(postText + " ");%><i><%
                        out.println(posts.get(x).getDate());%></i></br><%
                }
        }
%>
</div>
<div id="leftSide" style="margin-top:2px;float:left;width:21%;border:1px solid;border-color:blue;height:500px;border-radius:25px;">
<H3>Friends</H3>
<%
        ArrayList<User> friends = loggedIn.getFriends();
        if(friends.size() == 0){
                out.println("The user has no friends");
        }
        else {
        %>
        <FORM action= "friendsPage.jsp" method = "get">
        <%
                for(int x = 0; x < friends.size(); x++){
                        String friendName = friends.get(x).getUsername();
                        out.println(friendName);
                }
        %>
        </select>
        <input type=submit value="Go" />
        <%
        }
%>
</div></center>
</HTML>
