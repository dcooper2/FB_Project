<HTML>
<head>
        <title>Facebook-Login</title>
</head>
<%@include file="menu.jsp"%>
<p style="margin-top:100px;background-color:#88D6ff"><center><H1><b>Login</b></h1>
<FORM action="loginController.jsp" method="get">
        Enter Your E-mail Address:<INPUT type=text name=email /></br>
        Enter password:<INPUT type="password" name=pass /></br>
       </br> <INPUT type=submit name=submit value="Register" />
</FORM>
<%      String match = request.getParameter("Error");
                if(match != null){
                        if(match.equals("1")){
                                out.println("Your Password is incorrect");
                        }
                        else if(match.equals("2")){
                                out.println("The email is invalid");
                        }
                }
%>
</p>
</center>
</HTML>
