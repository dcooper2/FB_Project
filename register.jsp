<%@ page import="java.util.ArrayList" %>
<jsp:include page="menu.jsp" />

<HTML>
        <BODY>

                <h1>Register</h1>
                <FORM action="registerController.jsp" method="post">
                <label for="username">Enter Username:</label> <input type=text name=username required="required"/><br/>

                <label for="password">Pick a password: </label><input type=password name=password required="required"/><br/>

                <label for="repassword">Re-enter password: </label><input type=password name=repassword required="required"/><br/>
                <label for="email">Enter your email address: </label><input type=text name=email required="required" /><br/>


                <input type=submit name=submit value="Register" />
                </FORM>

        </BODY>
</HTML>

