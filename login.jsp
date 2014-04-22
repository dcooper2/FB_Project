<%@ page import="facebook.*" %>
<jsp:include page="menu.jsp" />

<HTML>
        <BODY>

                <h1>Login</h1>
                <FORM action="loginController.jsp" method="get">
                        Enter your email: <input type=text name=email /><br/>
                        Enter your password: <input type=password name=password /><br/>

                        <input type=submit name=submit value="Login" />
                </FORM>

        </BODY>
</HTML>
