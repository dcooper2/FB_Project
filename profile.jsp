<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>
<HTML>
<head>
<title>Facebook-Profile</title>
<head>
<center>
<div id="basicinfo" style=";border:1px solid;border-color:blue;margin-top:100px;width:80%;height:100px;border-radius:25px;">
<%
        User loggedIn = (User) session.getAttribute("loggedIn");
        String other = request.getParameter("user");
        if(other != null){
                User otherUser = UserRepository.instance().getUser(other);
                loggedIn = otherUser;
        }
        String name = loggedIn.getUsername();%>
        <H2><%
         out.println(("<img src="+ loggedIn.getProfilePic()+ " alt=profilePic width=25px height=25px />  "+ name));
        %></h2>
        <%out.println("Birthday: " + loggedIn.getBirthday());%> | Hobbies:
<%      User log = (User) session.getAttribute("loggedIn");
        if(log.getEmail().equals(other)){
        out.println("<a href=changeInfo.jsp?=user" + loggedIn.getEmail() + " >Change Info</a>");
        }%>
</div>
<div id="leftSide" style="float:left;border:1px solid;border-color:blue;margin-top:2px;width:21%;height:500px;border-radius:25px;">
<H3>Pictures</H3>

        <FORM action="picController.jsp" method="post" enctype="multipart/form-data" >


        <input type=file name=pic /><br/>
        <input type=submit value="Upload Pic" /><br/>
<%



        PhotoAlbum pa = loggedIn.getPhotoAlbum();
        ArrayList<String> pics = pa.getPhotos();
        if(pics.isEmpty()){
                out.println("You have no photos");
        }
        else{
                int y =0;
                for(int x = pics.size() - 1; x >= 0; x--){

                        if((pics.get(x) != null)){
                         out.println("<img src=\"http://rosemary.umw.edu/~dcooper2/fbPics/" + pics.get(x)+ "\" width=100 />");
                        }
                        y++;
                        if(y == 5){
                                break;
                        }
               }

        }

%>

        </FORM>

</div>
<div id="center" style="text-align:center;float:left;margin-top:2px;width:56%;height:500px;border:1px solid;border-color:blue;border-radius:25px;">
<H3>Wall</H3>
<FORM action="post.jsp"  method=get>
        <INPUT type=text name=post size="50" style="height:100px;" /></br></br>
        <%out.println("<INPUT type=hidden name=user value="+other + " />");%>
        <INPUt type=submit name=SUBMIT value="Post" />
</FORM>
<hr>
<%
        ArrayList<Post> posts = loggedIn.getWall().getPosts();
        if(posts.size() == 0){
                out.println("The user has no activity on their wall. Make a post!");
        }
        else{
                for(int x = (posts.size()-1); x > -1; x--){
                        String postText = posts.get(x).getText();%><b><%
                        out.println(posts.get(x).getAuthor().getUsername() + ": ");%></b><%
                        out.println(postText + " ");%><font size=1><i><%
                        out.println(posts.get(x).getDate());%></i></font></br><%
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
                for(int x = 0; x < friends.size(); x++){
                        String friendName = friends.get(x).getUsername();
                        out.println(("<img src="+friends.get(x).getProfilePic()+ " alt=profilePic width=15px height=15px /> <a href=profile.jsp?user=" + friends.get(x).getEmail() + ">"+friends.get(x).getUsername()) + "</a></br>");
                }
        }
        User loggedInUser = (User)session.getAttribute("loggedIn");

        if(loggedInUser.getEmail().equals(other)){
                %><hr>
                <H3>Add Friends</H3>
                <Form action="addFriend.jsp" method=get>
              <select name=friendLIst>
                <%
                        Collection<User> allUsers = UserRepository.instance().getAllUsers();
                        Iterator<User> iter = allUsers.iterator();
                        while(iter.hasNext()){
                                User current = iter.next();
                                if(!(current.equals(loggedIn)) && !(loggedIn.getFriends().contains(current)) && !(loggedIn.getFriendRequests().contains(current)) && !(current.getFriendRequests().contains(loggedIn))){
                                        out.println("<option value=" + current.getEmail() + ">" + current.getUsername() + "</option>");
                                }
                        }
                %></select></br></br>
                <Input type=submit name=submit value="Add Friend" />
                </div>
                </center><%
        }%>
        </HTML>
                               
