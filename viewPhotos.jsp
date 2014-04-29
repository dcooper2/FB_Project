<%@ page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.Collection" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Date" %>

<%
	User loggedIn = (User) session.getAttribute("LoginUser");
	PhotoAlbum pa = loggedIn.getPhotoAlbum();
        ArrayList<String> pics = pa.getPhotos();
        if(pics.isEmpty()){
                out.println("You have no photos");
        }
        else{
                for(int x =0; x<pics.size(); x++){

                        if((pics.get(x) != null)){
                         out.println("<img src=\"http://rosemary.umw.edu/~dcooper2/fbPics/" + pics.get(x)+ "\" width=100 />");
			 %>
				<FORM action="photoController.jsp" method="get">
                                  <a href="http://rosemary.umw.edu:44403/fbProject/photoController.jsp?filename=<%=pics.get(x)%>&action=set"> Make Profile Picture </a>

                                 <a href="http://rosemary.umw.edu:44403/fbProject/photoController.jsp?filename=<%=pics.get(x)%>&action=remove"> Delete Photo </a>
				</FORM>
				
                                  <%
                        }
			out.println("<br/>");
               }

        }


%>
