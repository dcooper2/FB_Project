<%@ page import="java.util.ArrayList" %>
<jsp:include page="menu.jsp" />

<HTML>
        <BODY>

                <h1>Register</h1>
                <FORM action="registerController.jsp" method="post">
                Enter Username: <input type=text name=username /><br/>

                Pick a password: <input type=password name=password /><br/>

                Re-enter password: <input type=password name=repassword /><br/>
                Enter your email address: <input type=text name=email /><br/>


                <input type=submit name=submit value="Register" />
                </FORM>

        </BODY>
</HTML>

