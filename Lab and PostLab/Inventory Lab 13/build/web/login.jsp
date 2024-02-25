<%-- 
    Document   : login
    Created on : Jan 3, 2024, 5:07:39 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script>
            function validate()
            {
                var username = document.form.username.value;
                var password = document.form.password.value;
                
                if (username == null || username == "")
                {
                    alert("Username cannot be blank");
                    return false;
                }
                else if (password == null || password == "")
                {
                    alert("Password cannot be blank");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <center>
            <div style="text-align: center"><h1>Login using MVC-DAO</h1></div>
        <br>
        
        <form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
            <table align="center">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password"/></td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red">
                            <%=(request.getAttribute("errMsg") == null) ? "" : request.getAttribute("errMsg")%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Login">
                        <input type="Reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form> <br/>
        <a href="index.html">Home</a>

        </center>
        
        
    </body>
</html>
