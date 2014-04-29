<%@page import="facebook.*" %>
<%@include file="menu2.jsp" %>
<%@page import="java.util.ArrayList" %>

<HTML>
        <BODY>
        <%
                User u = (User) session.getAttribute("LoginUser");
		String filename = request.getParameter("filename");
		String action = request.getParameter("action");
		
		PhotoAlbum pa = u.getPhotoAlbum();
	        ArrayList<String> pics = pa.getPhotos();
        	if(pics.isEmpty()){
        	}
       		 else{	
			for(int i=0; i<pics.size();i++){
				if((pics.get(i).equals(filename))&&action.equals("remove")){
					pa.removePhoto(pics.get(i));
				}
				else if((pics.get(i).equals(filename))&&action.equals("set")){
					u.setProfilePic(pics.get(i));		
				
				}
			}	

		}
	%>

	<jsp:forward page="viewPhotos.jsp" />
	</BODY>
</HEAD>

		
