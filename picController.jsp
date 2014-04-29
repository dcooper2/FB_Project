<%@page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="facebook.*" %>

<%
	 MultipartRequest mpr = new MultipartRequest(request, "/home/dcooper2/public_html/fbPics");
	

//	out.println("<img src=\"http://rosemary.umw.edu/~dcooper2/fbPics/" + mpr.getOriginalFileName("pic") + "\" width=100 />");

	String url = (mpr.getOriginalFileName("pic"));

//	Photo newPic = new Photo(url);
	
	User u = (User) session.getAttribute("LoginUser");
	PhotoAlbum pa = u.getPhotoAlbum();
	pa.addPhoto(url);	
	
//	for(int i=0; i<pa.getPhotos().size();i++){
//		out.println(pa.getPhotos().get(i));
//	}		


%>
	<jsp:forward page="profile.jsp" />
