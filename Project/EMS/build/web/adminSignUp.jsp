<%-- 
    Document   : adminSignUp
    Created on : Dec 25, 2023, 3:31:55 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMS | Admin</title>
    </head>
    <body>
        
    <center>
        <img src="images/admin.png" alt="admin" width="100px" height="auto" align="">
        <div>
            
            <h1>Sign Up</h1>
            <hr>
            <form action="adminLogin.jsp" method="POST">
                <table border="0" width="2" cellspacing="2" cellpadding="4">
                    <tbody>
                        <tr>
                            <td>Enter new username</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="userName"/></td>
                        </tr>
                        <tr>
                            <td>Enter new password</td>
                        </tr>
                        <tr>
                            <td><input type="password" name="password"/></td>
                        </tr>
                    </tbody>
                </table>
                <br>
                    <input type="submit" value="Create Account"> <br/>
                    <p>Already have an account?<a href="adminLogin.jsp"><b> Login</b></a></p>
            </form>
        </div>
    </center>  
    
    </body>
</html>

<style>
    
    h1{
       font-family: Century Gothic;
       margin-bottom: 20px;
    }
    
    img{
        margin-top: 20px;
    }
    
    div{
        border-radius: 20px;
        border: 2px solid grey;
        background-color: rgba(255, 255, 255, 0.9);
        width: 500px;
        height: auto;
        font-family: Century Gothic;
    }
    
    body {
        background-color: lightsteelblue;
    }
    
    input[type=submit] {
    width: 13.5em;  height: 2em;
    color: white;
    background-color: #5DADE2;
    font-family: Century Gothic;
    font-weight: bold;
    border: none;
    transition-duration: 0.4s;
    cursor: pointer;
    }
    
    input[type=submit]:hover 
    {
        background-color: #808B96;
        color: white;
    }
    
    a{
        color: #616A6B;
        text-decoration: none;
    }
    
    footer {
        text-align: center;
        padding: 3px;
    }
    
    
</style>
