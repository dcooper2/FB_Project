<HTML>
<head>
        <title>Facebook-Register</title>
</head>
<%@include file="menu.jsp"%>
<center>
<p style=margin-top:100px>
<H1><b>Register</b></H1>
<FORM action="registerController.jsp" method="get">
        Enter Your Name:<INPUT type=text name=username /></br>
        Enter Your E-mail Address:<INPUT type=text name=email /></br>
        Pick a password:<INPUT type="password" name=pass /></br>
        Re-enter password:<INPUT type="password" name=rePass /></br>
        <!-- Privacy:
        <INPUT type="radio" name="privacy" value="public" />Public
        <INPUT type="radio" name="privacy" value="private" />Private</br></br>
        <INPUT type=submit name=submit value="Register" />
        -->
</FORM>
<% String passMatch = request.getParameter("Error");
        if(passMatch != null){
                if(passMatch.equals("1")){
                        out.println("Passwords do not match");
                }
                else if(passMatch.equals("2")){
                        out.println("This email is already in the system");
                }
        }
%>
</p>
</center>
</HTML>
