<%-- 
    Document   : registration
    Created on : Jan 3, 2024, 11:10:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        
        <h1>User Registration</h1>
        
        <form name="form" action="RegisterServlet" method="get">
            <table border="0" width="2" cellspacing="2" cellpadding="4">
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" placeholder="Enter your name.." required/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" placeholder="Enter your email.." required/></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" placeholder="Enter your username.." required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" placeholder="Enter your pasword.." required/></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="confirmPassword" placeholder="Confirm password.." required/></td>
                    </tr>
                </tbody>
            </table>   
                <br>
                <input type="submit" value="Confirm Registration">
                <input type="reset" value="Reset"> 
        </form>
        <br/>
        <a href="index.html">Home</a>
        
    </body>
</html>
