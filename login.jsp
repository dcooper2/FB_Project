<%@ page import="facebook.*" %>
<jsp:include page="menu.jsp" />

<HTML>
        <BODY>

                <h1>Login</h1>
                <FORM action="loginController.jsp" method="post">
                        <label for="email">Enter your email:</label> <input type=text name=email required="required"/><br/>
                        <label for="password">Enter your password:</label> <input type=password name=password required="required"/><br/>

                        <input type=submit name=submit value="Login" />
                </FORM>

        </BODY>
</HTML>
