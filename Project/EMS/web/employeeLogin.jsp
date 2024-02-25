<%-- 
    Document   : employeeLogin
    Created on : Dec 25, 2023, 3:47:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMS | Employee</title>
    </head>
    <body>
        
    <center>
        <img src="images/employee.png" alt="admin" width="100px" height="auto" align="">
        <div>
            
            <h1>Login</h1>
            <hr>
            <form action="EmployeeLoginServlet" method="POST">
                <table border="0" width="2" cellspacing="2" cellpadding="4">
                    <tbody>
                        <tr>
                            <td>Username</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="username"/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                        </tr>
                        <tr>
                            <td><input type="password" name="password"/></td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:red">
                                    <%=(request.getAttribute("errMsg") == null) ? "" : request.getAttribute("errMsg")%>
                                </span>
                                <span style="color:green">
                                    <%=(request.getAttribute("logMsg") == null) ? "" : request.getAttribute("logMsg")%>
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br>
                    <input type="submit" value="Login"> <br/>
            </form>
        </div>
    </center>  
    
    <footer>
        <br>
        <button onclick="window.location.href = 'index.html';"><b>Back to Index</b></button> <br/>
    </footer>
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
        height: 300px;
        font-family: Century Gothic;
        
    }
    
    body {
        background-color: #F5B7B1;
    }
    
    input[type=submit] {
    width: 13.5em;  height: 2em;
    color: white;
    background-color: #F1948A;
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
    
    button{
        cursor: pointer;
        font-family: Century Gothic;
        width: 13.5em;  height: 3em;
        border: 2px solid #F1948A;
        background-color: white;
        color: black;
        transition-duration: 0.4s;
        border-radius: 10px;
    }
    
    button:hover{
        background-color: #F1948A;
        color: white;
    }
    
</style>
