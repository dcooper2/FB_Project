<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
    MultipartRequest mpr = new MultipartRequest(request, "/home/dperotti/tomcat/webapps/facebook_project/WEB-INF/lib");


    out.println("The original filename is " + mpr.getOriginalFileName("pic"));

out.println("<img src=\"http://rosemary.umw.edu:4414/facebook_project/" + mpr.getOriginalFileName("pic") + "\" width=300 />");
%>
