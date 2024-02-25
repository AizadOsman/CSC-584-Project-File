<%-- 
    Document   : loginPage
    Created on : Jan 7, 2024, 1:55:01 PM
    Author     : ASUS
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="images/D.png">
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>
    <center>
        <h1>Destinify</h1>

        <div>
            <form action="LoginServlet" method="post">
                <h3>Login</h3>
                <hr>
                <table border="0" width="2" cellspacing="2" cellpadding="4">
                    <tbody>
                        <tr>
                            <td>Username</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="username" required/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                        </tr>
                        <tr>
                            <td><input type="password" name="password" required/></td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:red">
                                    <%=(request.getAttribute("errMsg") == null) ? "" : request.getAttribute("errMsg")%>
                                </span>
                                <span style="color:green">
                                    <%=(request.getAttribute("LogoutMsg") == null) ? "" : request.getAttribute("LogoutMsg")%>
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <input type="submit" value="Login"> <br/>
                <p>New to Destinify?<a href="SignUpPage.jsp"><b> Sign Up</b></a></p>
            </form>
        </div>
    </center>
</body>
</html>

<style>
        body {
            background-image: url('images/bg1.png');
            background-size: cover;
        }

        h1 {
            font-family: Century Gothic;
            color: #fff;
            font-size: 4em;
            text-shadow: 2px 2px 4px #000000;
        }

        h3 {
            font-size: 1.5em;
            font-family: Century Gothic;
        }

        input[type=submit] {
            width: 13.5em;
            height: 2em;
            color: white;
            background-color: #52BE80;
            font-family: Century Gothic;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #808B96;
            color: white;
            transition-duration: 0.4s;
        }

        a {
            color: #616A6B;
            text-decoration: none;
        }

        div {
            font-family: Century Gothic;
            width: 500px;
            height: auto;
            padding-top: 20px;
            padding-bottom: 20px;
            background: rgba(255, 255, 255, 0.9);
            border: 2px solid #D5D8DC;
            border-radius: 12px;
            padding: 5px;
        }
    </style>