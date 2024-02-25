<%-- 
    Document   : Success
    Created on : Nov 5, 2023, 3:43:56 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password Process</title>
    </head>
    <body>
        <p>Hello!</p>
        <h1><%=request.getAttribute("userName")%></h1>
        <p>Your password has been updated...</p>
        
        <a href="index.html">
    <button>Go back to Password Change Form</button>
        </a>
    </body>
</html>

<style>
    
body 
{
    background-color: #ABEBC6;
}

h1
{
    font-family: verdana;
}

p
{
    font-size: 25px;
}

button
{
  background-color: #117A65;
  border: none;
  color: white;
  padding: 10px 18px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

</style>


